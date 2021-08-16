//
//  PantallaExcepciones.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/11/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PantallaExcepciones: UIView {
    
    var excepciones: [Palabra]? {
        didSet {
            guard let destapado = excepciones else { return }
            
            for palabra in destapado{
                let silabaGenerada = previstaPar(palabra)
                pilaVerticalExcepciones.addArrangedSubview(silabaGenerada)
                NSLayoutConstraint.activate([
                    silabaGenerada.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 15),
                    silabaGenerada.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor, constant: -15)
                ])
            }
        }
    }
    
    private var explicacion: UILabel = {
        let etiqueta = UILabel()
        etiqueta.numberOfLines = 1
        etiqueta.font = .Roboto(.regular, size: 14)
        etiqueta.text = "Excepciones más frecuentes"
        etiqueta.textColor = .black
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    
    private let pilaVerticalExcepciones: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillEqually
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let previstaPar: (Palabra) -> (UIStackView) = { palabra in
        let vista = UIStackView()
        let labelIzq:UILabelPersonalizado = UILabelPersonalizado()
        
        let labelDer:UILabelPersonalizado = UILabelPersonalizado()
        
        labelIzq.translatesAutoresizingMaskIntoConstraints = false
        labelDer.translatesAutoresizingMaskIntoConstraints = false
        vista.translatesAutoresizingMaskIntoConstraints = false
        
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBloques)
        labelIzq.textAlignment = .left
        labelIzq.textColor = .colorLetras
        labelIzq.contentMode = .scaleAspectFit
        
        labelDer.font = .Roboto(.regular, size: Tamanio.letrasRosasBloques)
        labelDer.textColor = .colorLetraRosa
        labelDer.textAlignment = .left
        labelDer.contentMode = .scaleAspectFit
        
        vista.axis = .horizontal
        vista.distribution = .fillEqually
        vista.alignment = .center
        vista.spacing = 10
        
        labelIzq.text = palabra.palabra
        labelDer.text = palabra.enGriego
        
        vista.addArrangedSubview(labelIzq)
        vista.addArrangedSubview(labelDer)
        
        
        return vista
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configurarConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
    
        addSubview(pilaVerticalExcepciones)
        addSubview(explicacion)

        pilaVerticalExcepciones.addArrangedSubview(explicacion)
        
        NSLayoutConstraint.activate([
            pilaVerticalExcepciones.topAnchor.constraint(equalTo: topAnchor),
            pilaVerticalExcepciones.leadingAnchor.constraint(equalTo: leadingAnchor),
            pilaVerticalExcepciones.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilaVerticalExcepciones.bottomAnchor.constraint(equalTo: topAnchor),
        ])
    }
    
}
