//
//  SySJuego1VCCollectionViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-14.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class SySJuego1VC: UICollectionViewController, UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate{

    private let reuseIdentifier = "Cell"
    
    private var nivelFonema: Int?
    
    private var puntos: Int = 0
    
    private var tarjetas: [ParejaSonido]?
    
    init(collectionViewLayout layout: UICollectionViewLayout, nivelSelecionado: Int) {
        super.init(collectionViewLayout: layout)
        nivelFonema = nivelSelecionado
        tarjetas = Data.JuegoSyS.filter{ elemento in
            elemento.nivel == nivelSelecionado
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurar()
        self.collectionView!.register(JuegoSySCelda.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .white
        self.navigationController?.setToolbarHidden(true, animated: false)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tarjetas?.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! JuegoSySCelda
        cell.delegate = self
        cell.ejercicio = tarjetas?[indexPath.item]
        return cell
    }
    override func viewDidLayoutSubviews() {
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        
        barraProgreso.progress = Float(indexPath.item + 1 )/Float(tarjetas?.count ?? 1)
        
    }
    
    private var puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "1 | 20",style: .plain, target: nil, action: nil)
    }()
    

    private let barraProgreso:UIProgressView = {
        let barraprog = UIProgressView(progressViewStyle: .default)
        barraprog.isUserInteractionEnabled = true
        barraprog.translatesAutoresizingMaskIntoConstraints = false
        barraprog.progressTintColor = .colorLineaBarraSuperiorSyS
        return barraprog
    }()
}

extension SySJuego1VC{
    func configurar(){
        self.title = "Juego \(nivelFonema!)"
        barraProgreso.widthAnchor.constraint(equalToConstant: view.frame.width - 100).isActive = true
        let items = [UIBarButtonItem(customView: barraProgreso), puntaje]
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        collectionView.backgroundColor = .white
        collectionView?.isPagingEnabled = false
        collectionView?.isScrollEnabled = false
        
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
                            return CGSize(width: view.frame.width, height: view.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

extension SySJuego1VC: juegoSimbolosySonidosDelegate{
    func siguiente() {
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        if indexPath.item != tarjetas!.count - 1 {
            collectionView.scrollToItem(at: IndexPath(item: indexPath.item + 1, section: 0), at: .centeredHorizontally, animated: true)
        }else{
            finalizar()
        }
    }
    
    func recolectarPuntaje() {
        puntos+=1
        puntaje.title = "\(puntos) | \(tarjetas?.count ?? 1)"
    }
    
    func finalizar() {
        let olvidoVC = PresentacionJuegoSyS()
        present(olvidoVC, animated: true)
    }
    
    
}
