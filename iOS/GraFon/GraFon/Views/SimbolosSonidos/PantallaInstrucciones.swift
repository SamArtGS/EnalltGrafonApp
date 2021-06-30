//
//  PantallaJuegoSyS.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-13.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PantallaJuegoSyS: UIView{
    
    weak var delegate: pantallaInstruccionesDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error al implementar el init")
    }
    deinit {
        print("Se reclama Pantalla de instrucciones")
    }
    
    
    let imagenPresentacion:UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "demo_n1_jgo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.enableZoom()
        return imageView
    }()
    
    private let pilaElementos: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    let botonInicioJuego:UIButton = {
        let botonInicio = UIButton(type: .custom)
        botonInicio.translatesAutoresizingMaskIntoConstraints = false
        botonInicio.setImage(UIImage(named: "n1_jgo_iniciar_mdpi"), for: .normal)
        botonInicio.contentMode = .scaleAspectFit
        botonInicio.addTarget(self, action: #selector(iniciar), for: .touchUpInside)
        return botonInicio
    }()
    
    
    
    func setUpConstraints(){
        addSubview(pilaElementos)
        pilaElementos.addArrangedSubview(imagenPresentacion)
        pilaElementos.addArrangedSubview(botonInicioJuego)
        NSLayoutConstraint.activate([
            pilaElementos.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            pilaElementos.centerXAnchor.constraint(equalTo: centerXAnchor),
            pilaElementos.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            pilaElementos.leadingAnchor.constraint(equalTo: leadingAnchor),
            pilaElementos.trailingAnchor.constraint(equalTo: trailingAnchor),
            botonInicioJuego.heightAnchor.constraint(equalToConstant: 70)
        ])
        
    }
}
extension PantallaJuegoSyS{
    @objc func iniciar(){
        delegate?.iniciarJuego()
    }
}
