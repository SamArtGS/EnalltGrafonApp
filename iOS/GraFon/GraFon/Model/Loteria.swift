//
//  Loteria.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 10/11/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct ParejaLoteria{
    let sonido: String
    let palabra: String
}
class ImagenLoteria: UIButton{
    var volteada: Bool = false
    var colorBorde: UIColor = .clear
    var colorBackgroud: UIColor = .clear
    var imagenMostar: UIImage? = nil
    var palabra: UILabelPersonalizado? = nil
    
    var imagenTarjeta:UIButton = {
        let view = UIButton()
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.isUserInteractionEnabled = true
        return view
    }()
}

struct Loteria{
    let parejasLoteria: [ParejaLoteria]
}
