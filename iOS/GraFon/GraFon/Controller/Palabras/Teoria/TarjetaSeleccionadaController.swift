//
//  TarjetaSeleccionadaController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-12.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class TarjetaSeleccionadaController: UICollectionViewController, MostrarExcepcionesDelegate{
    
    private let identificadorCeldaInicio:String = "CeldaInicio"
    private let identificadorCeldaSilabas: String = "CeldaSilaba"
    private var tarjeta: Tarjeta?
    private var silabas: [Silaba]?
    private var bool: Bool = false
    
    var letraTitulo: String? {
        didSet{
            guard let titulo = letraTitulo else { return }
            
            self.title = titulo
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configuracionVisual()
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, tarjeta: Tarjeta?) {
        super.init(collectionViewLayout: layout)
        self.collectionView!.register(CeldaSonidoYSilabas.self, forCellWithReuseIdentifier: identificadorCeldaInicio)
        self.collectionView!.register(CeldaSilabasYExplicacion.self, forCellWithReuseIdentifier: identificadorCeldaSilabas)
        bool = true
        self.tarjeta = tarjeta
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, silabas: [Silaba]?){
        super.init(collectionViewLayout: layout)
        bool = false
        self.collectionView!.register(GrafiasPocoFrecuentesView.self, forCellWithReuseIdentifier: identificadorCeldaSilabas)
        self.silabas = silabas
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let celp = collectionView.cellForItem(at: IndexPath(item: 0, section: 0)) as? CeldaSonidoYSilabas
        
        celp?.reproductorAudio?.stop()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("Se reclama la memoria de las tarjetas")
    }
    
    // MARK: BOTON VUELTA
}


// Extensión: UICollectionViewDataSource Protocol
extension TarjetaSeleccionadaController{

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if bool{
            return (tarjeta?.silabas.count ?? 1) + 1
        }else{
            return silabas?.count ?? 0
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if bool{
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
                    cell.delegate = self
                    cell.esTarjetaUnica(hayExcepciones: tarjeta?.excepciones != nil)
                }else{
                    cell.esTarjetaInicio()
                }
                return cell
            case (tarjeta?.silabas.count ?? 1):
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                cell.delegate = self
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                cell.esTarjetaFinal(hayExcepciones: tarjeta?.excepciones != nil)
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                cell.esTarjetaNormal()
                return cell
            }
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! GrafiasPocoFrecuentesView
            if indexPath.item == 0{
                cell.isPrimero = true
            }
            cell.grafiasPocoFrecuentes = silabas?[indexPath.item]
            cell.backgroundColor = .white
            //cell.determinarFondo(color: UIColor.white)
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
        
        if silabas?[indexPath.item].pronuciacion == "aïe" || silabas?[indexPath.item].pronuciacion == "aï" || silabas?[indexPath.item].pronuciacion == "oï"{
            return CGSize(width: ((view.safeAreaLayoutGuide.layoutFrame.width)-20), height: 350)
        }else{
        
         if indexPath.item == 0 {
            var cuenta: Int = 0
            tarjeta?.silabas.forEach{silaba in cuenta += silaba.palabras.count}
            return CGSize(width: ((view.safeAreaLayoutGuide.layoutFrame.width)-20), height: CGFloat((cuenta-1) * 30  + 210))
         } else {
            let palabrasCount:CGFloat = CGFloat((tarjeta?.silabas[indexPath.item - 1 ].palabras.count ?? 1) * 30) + CGFloat(tarjeta?.silabas[indexPath.item - 1].explicacion.count ?? 1) * 1
            if (tarjeta?.silabas[indexPath.item - 1 ].imagenConsejo) == nil{
               return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 150 + palabrasCount)
            } else {
                print("aqui entre")
               return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 400 + palabrasCount)
            }
         }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if bool{
            return UIEdgeInsets(top: 10, left: 10, bottom: 30, right: 10)
        }else{
            return UIEdgeInsets(top: 10, left: 10, bottom: 30, right: 10)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    
}

extension TarjetaSeleccionadaController{
    func mostrarExcepciones(){
        let secondVC = ExcepcionesController(excepciones: tarjeta?.excepciones, titulo: letraTitulo ?? "")
        
        self.navigationController?.pushViewController(secondVC, animated: false)
        secondVC.excepciones = tarjeta?.excepciones
        secondVC.navigationController?.title = self.title
        
        UIView.transition(from: self.view, to: secondVC.view, duration: 0.85, options: [.transitionFlipFromRight])
    }
    
    
}
