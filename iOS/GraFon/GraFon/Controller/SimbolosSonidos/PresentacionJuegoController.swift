//
//  PresentacionJuegoSyS.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PresentacionJuegoSyS: UIViewController{

    lazy var pantalla = PantallaJuegoSyS()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        configure()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    func configure(){
        
        pantalla.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pantalla)
        view.backgroundColor = .white
        pantalla.contentMode = .scaleAspectFit
        pantalla.clipsToBounds = true
        pantalla.delegate = self
        
        NSLayoutConstraint.activate([
            pantalla.topAnchor.constraint(equalTo: view.topAnchor),
            pantalla.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pantalla.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pantalla.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    
    

}
extension PresentacionJuegoSyS: pantallaInstruccionesDelegate{
    func iniciarJuego() {
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        navigationController?.pushViewController(SeleccionarNivelController(collectionViewLayout: scrollLayout), animated: true)
    }
}
