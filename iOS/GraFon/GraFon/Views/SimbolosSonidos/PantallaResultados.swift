//
//  PantallaResultados.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-25.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PantallaResultados: UIView {
    weak var delegate: pantallaInstruccionesDelegate?
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error al implementar el init")
    }
    
    
    let imagenPresentacion:UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "demo_n1_jgo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let textoBanner: UILabel = {
        let etiqueta = UILabel()
        etiqueta.text = "Tu puntuación es:"
        etiqueta.font = UIFont(name: "Avenir-Light", size: 30)
        return etiqueta
    }()
    
    let botonInicioJuego:UIButton = {
        let botonInicio = UIButton(type: .custom)
        botonInicio.translatesAutoresizingMaskIntoConstraints = false
        botonInicio.setImage(UIImage(named: "n1_jgo_iniciar_mdpi"), for: .normal)
        botonInicio.contentMode = .scaleAspectFit
        //botonInicio.addTarget(self, action: #selector(guardarInformacion), for: .touchUpInside)
        return botonInicio
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
    
    
    
    func agregarAcciones(accion: Selector){
        botonInicioJuego.addTarget(self, action: accion, for: .touchUpInside)
    }
    
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

