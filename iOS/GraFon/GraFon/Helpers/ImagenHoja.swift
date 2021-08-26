//
//  ImagenHoja.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/24/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class ImagenHojaCayendo: UIImageView {

    var imagenHoja: HojaImagen?
    var contenidoHoja: ContenidoHoja?
    var label: UILabel = UILabel()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    init(imagenHoja: HojaImagen,contenidoHoja: ContenidoHoja) {
        super.init(image: imagenHoja.imagenNormal)
        self.imagenHoja = imagenHoja
        self.contenidoHoja = contenidoHoja
        self.label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = contenidoHoja.palabra
        self.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    func cambiarABien(){
        self.image = imagenHoja?.imagenBien
    }
    func cambiarAMal(){
        self.image = imagenHoja?.imagenQuebrada
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
}
