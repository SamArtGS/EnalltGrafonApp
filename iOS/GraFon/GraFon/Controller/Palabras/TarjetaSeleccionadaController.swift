//
//  TarjetaSeleccionadaController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-12.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class TarjetaSeleccionadaController: UICollectionViewController {
    
    private let identificadorCeldaInicio:String = "CeldaInicio"
    private let identificadorCeldaSilabas: String = "CeldaSilaba"
    private var tarjeta: Tarjeta?
    
    var letraTitulo: String? {
        didSet{
            guard let titulo = letraTitulo else { return }
            self.title = titulo
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(CeldaSonidoYSilabas.self, forCellWithReuseIdentifier: identificadorCeldaInicio)
        self.collectionView!.register(CeldaSilabasYExplicacion.self, forCellWithReuseIdentifier: identificadorCeldaSilabas)
        configuracionVisual()
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, tarjeta: Tarjeta?) {
        super.init(collectionViewLayout: layout)
        self.tarjeta = tarjeta
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.topItem?.title = "Retour"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.topItem?.title = "Palabras en la boca"
        self.navigationController?.navigationBar.backItem?.title = "Palabras en la boca"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("Se reclama la memoria de las tarjetas")
    }
    
}


// Extensión: UICollectionViewDataSource Protocol
extension TarjetaSeleccionadaController{

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (tarjeta?.silabas.count ?? 1) + 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        switch indexPath.item {
            case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaInicio, for: indexPath) as! CeldaSonidoYSilabas
                cell.tarjetaSeleccionada = tarjeta
                return cell
            case 1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                
                if tarjeta?.silabas.count == 1 {
                    cell.esTarjetaUnica()
                }else{
                    cell.esTarjetaInicio()
                }
                
                return cell
            case (tarjeta?.silabas.count ?? 1):
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                cell.esTarjetaFinal()
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                cell.esTarjetaNormal()
                return cell
            }
    }
}

extension TarjetaSeleccionadaController{
    func configuracionVisual(){
        collectionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
        
    }
}
extension TarjetaSeleccionadaController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         if indexPath.item == 0 {
            var cuenta: Int = 0
            tarjeta?.silabas.forEach{silaba in cuenta += silaba.palabras.count}
            print(cuenta)
            return CGSize(width: ((view.safeAreaLayoutGuide.layoutFrame.width)-20), height: CGFloat((cuenta-1) * 30  + 210))
         } else {
            let palabrasCount:CGFloat = CGFloat((tarjeta?.silabas[indexPath.item - 1 ].palabras.count ?? 1) * 30)
            if (tarjeta?.silabas[indexPath.item - 1 ].imagenConsejo) == nil{
               return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 250 + palabrasCount)
            } else {
               return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 350 + palabrasCount)
            }
         }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
