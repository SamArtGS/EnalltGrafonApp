//
//  Tutorial.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 11/17/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class MenuJuegos: UIViewController{
    
    private var indice: Int?
    private let zoom = ZoomTransitioningDelegate()
    private var puertaSeleccionada: Int = 0
    
    private let pilaGrupoPalabrasVertical: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .bottom
        elementosApilados.spacing = 0
        elementosApilados.isUserInteractionEnabled = true
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let marcito: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 157/255, green: 195/255, blue: 228/255, alpha: 1.0)
        view.contentMode = .scaleToFill
        return view
    }()
    
    private let pilaGrupoPalabrasHorizontal: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .horizontal
        elementosApilados.distribution = .fillEqually
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.isUserInteractionEnabled = true
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "¡A divertirse!"
        colocarFondoCompleto(imagen: "N4_a divertirse_background")
        dibujarStackJuegos()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.shadowImage = UIColor.colorBarraNavigationBarADivertirse.as1ptImage()
        navigationController?.navigationBar.setBackgroundImage(UIColor.colorNavigationBarADivertirse.as1ptImage(), for: .default)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
        self.tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    func dibujarStackJuegos(){
        
        let imagen0 = UIImageView(image: UIImage(named: "c1_n4"))
        let imagen1 = UIImageView(image: UIImage(named: "a1_n4"))
        let imagen2 = UIImageView(image: UIImage(named: "b1_n4"))
        let imagen3 = UIImageView(image: UIImage(named: "c2_n4"))
        
        imagen0.translatesAutoresizingMaskIntoConstraints = false
        imagen1.translatesAutoresizingMaskIntoConstraints = false
        imagen2.translatesAutoresizingMaskIntoConstraints = false
        imagen3.translatesAutoresizingMaskIntoConstraints = false
        
        imagen0.contentMode = .scaleAspectFit
        imagen1.contentMode = .scaleToFill
        imagen2.contentMode = .scaleToFill
        imagen3.contentMode = .scaleToFill
        
        imagen0.isUserInteractionEnabled = true
        imagen1.isUserInteractionEnabled = true
        imagen2.isUserInteractionEnabled = true
        imagen3.isUserInteractionEnabled = true
        
        
        imagen0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(irJuegoAmarillos)))
        imagen1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(irJuegoVerde)))
        imagen2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(irJuegoAzul)))
        imagen3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(irJuegoRojo)))
        
        view.addSubview(pilaGrupoPalabrasVertical)
        pilaGrupoPalabrasHorizontal.addArrangedSubview(imagen2)
        pilaGrupoPalabrasHorizontal.addArrangedSubview(imagen3)
        pilaGrupoPalabrasVertical.addArrangedSubview(imagen1)
        pilaGrupoPalabrasVertical.addArrangedSubview(pilaGrupoPalabrasHorizontal)
        
        view.addSubview(imagen0)
        //view.addSubview(marcito)
        
        NSLayoutConstraint.activate([
            pilaGrupoPalabrasVertical.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            pilaGrupoPalabrasVertical.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pilaGrupoPalabrasVertical.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pilaGrupoPalabrasHorizontal.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pilaGrupoPalabrasHorizontal.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imagen0.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imagen0.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imagen0.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            imagen0.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5768421053),
            imagen1.widthAnchor.constraint(equalTo: view.widthAnchor),
            imagen1.widthAnchor.constraint(equalTo: view.widthAnchor),
            imagen1.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3676731794),
            imagen2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            imagen2.heightAnchor.constraint(equalTo: imagen2.widthAnchor, multiplier: 1.5587188612),
            imagen3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            imagen3.heightAnchor.constraint(equalTo: imagen3.widthAnchor, multiplier: 1.5587188612),
//            marcito.heightAnchor.constraint(equalTo: imagen2.widthAnchor, multiplier: 0.3),
//            marcito.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            marcito.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            marcito.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        view.bringSubviewToFront(imagen0)
    }
    
}


extension MenuJuegos{
    
    @objc func irJuegoAmarillos(){
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        let vc = SeleccionarNivelController(collectionViewLayout: scrollLayout, puertaSeleccionada: 1)
        navigationController?.navigationBar.shadowImage = UIColor.colorBarraNavigationBarADivertirse.as1ptImage()
        navigationController?.navigationBar.setBackgroundImage(UIColor.colorNavigationBarADivertirse.as1ptImage(), for: .default)
        vc.title = "Tourofón"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func irJuegoAzul(){
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        let vc = SeleccionarNivelController(collectionViewLayout: scrollLayout, puertaSeleccionada: 3)
        vc.title = "Simbolofón"
        navigationController?.navigationBar.shadowImage = UIColor.colorLineaBarraSuperiorSyS.as1ptImage()
        navigationController?.navigationBar.setBackgroundImage(UIColor.colorTabBarSonidoSimbolo.as1ptImage(), for: .default)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func irJuegoVerde(){
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        let vc = SeleccionarNivelController(collectionViewLayout: scrollLayout, puertaSeleccionada: 0)
        vc.title = "Lotofón"
        navigationController?.navigationBar.shadowImage = UIColor.colorLineaBarraSuperiorGruposPalabras.as1ptImage()
        navigationController?.navigationBar.setBackgroundImage(UIColor.colorNavigationBarGruposPalabras.as1ptImage(), for: .default)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func irJuegoRojo(){
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        let vc = SeleccionarNivelController(collectionViewLayout: scrollLayout, puertaSeleccionada: 2)
        vc.title = "Grafefón"
        navigationController?.navigationBar.shadowImage = UIColor.colorLineaBarraSuperiorPalabras.as1ptImage()
        navigationController?.navigationBar.setBackgroundImage(UIColor.colorBarraSuperiorPalabras.as1ptImage(), for: .default)
        navigationController?.pushViewController(vc, animated: true)
    }
}
