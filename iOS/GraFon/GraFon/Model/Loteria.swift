//
//  Loteria.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 10/11/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct ParejaLoteria: Equatable{
    let sonido: String
    let palabra: String
}

class ImagenLoteria: UIView{
    
    var volteada: Bool = false
    var colorBorde: UIColor = .clear
    var colorBackgroud: UIColor = .clear
    var pareja: ParejaLoteria?
    
    
    var palabra: UILabelPersonalizado? {
        didSet{
            guard let palabra = palabra else { return }
            imagenTarjeta.addSubview(palabra)
            palabra.textAlignment = .center
            palabra.textColor = .colorLetraVerde
            palabra.lineBreakMode = .byWordWrapping
            palabra.numberOfLines = 0
            palabra.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                palabra.topAnchor.constraint(equalTo: imagenTarjeta.topAnchor),
                palabra.leadingAnchor.constraint(equalTo: imagenTarjeta.leadingAnchor, constant: 5),
                palabra.trailingAnchor.constraint(equalTo: imagenTarjeta.trailingAnchor, constant: -5),
                palabra.bottomAnchor.constraint(equalTo: imagenTarjeta.bottomAnchor)
            ])
        }
        
    }
    
    var imagenPajaro: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()
    
    var imagenTarjeta:UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "loto2_grafon_1bmdpi")
        view.isUserInteractionEnabled = true
        return view
    }()
}

struct Loteria: Equatable{
    static func == (lhs: Loteria, rhs: Loteria) -> Bool {
        if lhs.parejasLoteria.count == rhs.parejasLoteria.count{
            for i in 1..<lhs.parejasLoteria.count{
                if lhs.parejasLoteria[i].palabra == rhs.parejasLoteria[i].palabra && lhs.parejasLoteria[i].sonido == rhs.parejasLoteria[i].sonido {
                    return true
                }else{
                    return false
                }
            }
        }else{
            return false
        }
        return false
    }
    
    let parejasLoteria: [ParejaLoteria]
}
