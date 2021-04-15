//
//  PresentacionJuegoSyS.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PresentacionJuegoSyS: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Símbolos y Sonidos"
        self.navigationController?.setToolbarHidden(true, animated: true)
        setUpConstraints()
    }
    
    //Elementos UI:
    
    let imagenPresentacion:UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "demo_n1_jgo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let botonInicioJuego:UIButton = {
        let botonInicio = UIButton(type: .custom)
        botonInicio.translatesAutoresizingMaskIntoConstraints = false
        botonInicio.setImage(UIImage(named: "n1_jgo_iniciar_mdpi"), for: .normal)
        botonInicio.addTarget(self, action: #selector(inicioJuego), for: .touchUpInside)
        botonInicio.contentMode = .scaleAspectFit
        return botonInicio
    }()
    
    @objc func inicioJuego(){
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .horizontal
        navigationController?.pushViewController(SySJuego1VC(collectionViewLayout: scrollLayout), animated: true)
        
    }
    
    
    func setUpConstraints(){
        view.backgroundColor = .white
        
        view.addSubview(imagenPresentacion)
        view.addSubview(botonInicioJuego)
        
        let constraints = [
            imagenPresentacion.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imagenPresentacion.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imagenPresentacion.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            imagenPresentacion.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            imagenPresentacion.heightAnchor.constraint(equalTo: view.widthAnchor),
            botonInicioJuego.topAnchor.constraint(equalTo: imagenPresentacion.bottomAnchor, constant: 10),
            botonInicioJuego.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            botonInicioJuego.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ]
        NSLayoutConstraint.activate(constraints)
        
    }
    
    
    
    

}
