//
//  PresentacionJuegoSyS.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class Carcasa: UIViewController{
    
    func configure(vista:UIView){
        
        vista.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vista)
        view.backgroundColor = .white
        vista.contentMode = .scaleAspectFit
        vista.clipsToBounds = true
        //vista.delegate = self
        
        NSLayoutConstraint.activate([
            vista.topAnchor.constraint(equalTo: view.topAnchor),
            vista.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vista.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vista.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
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

class PresentacionJuegoSyS: Carcasa {
    lazy var pantalla = PantallaJuegoSyS()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(vista: pantalla)
        pantalla.delegate = self
    }
}

class PuntuacionJuegoSyS: Carcasa {
    
    init(puntaje:Int) {
        pantalla.puntaje = puntaje
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var pantalla = PantallaResultados()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(vista: pantalla)
    }
    override func viewWillLayoutSubviews() {
       super.viewWillLayoutSubviews()
       
    }
}
