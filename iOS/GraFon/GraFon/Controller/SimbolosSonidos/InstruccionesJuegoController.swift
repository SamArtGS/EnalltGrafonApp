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
        
        NSLayoutConstraint.activate([
            vista.topAnchor.constraint(equalTo: view.topAnchor),
            vista.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vista.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vista.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}


class PresentacionCreditos: Carcasa {
    lazy var pantalla = PantallaCreditos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        colocarFondoCompleto(imagen: "bck_n1_juegos_v2")
        configure(vista: pantalla)
        //pantalla.delegate = self
    }
    deinit {
        print("\n\nSe reclama controller instrucciones\n\n")
    }
}

class PresentacionJuegoSyS: Carcasa {
    lazy var pantalla = PantallaJuegoSyS()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        colocarFondoCompleto(imagen: "bck_n1_juegos_v2")
        configure(vista: pantalla)
        pantalla.delegate = self
    }
    deinit {
        print("\n\nSe reclama controller instrucciones\n\n")
    }
}

extension PresentacionJuegoSyS: pantallaInstruccionesDelegate{
    func continuarJuego() {
        dismiss(animated: true, completion: nil)
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
    
    deinit {
        print("\n\nSe reclama controller de puntuación\n\n")
    }
    
    var pantalla = PantallaResultados()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(vista: pantalla)
        view.backgroundColor = .clear
        colocarFondoCompleto(imagen: "bck_n1_juegos_v2")
    }
    override func viewWillLayoutSubviews() {
       super.viewWillLayoutSubviews()
    }
}
