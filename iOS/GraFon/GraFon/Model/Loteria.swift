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
class ImagenLoteria: UIImageView{
    var colorBorde: UIColor = .clear
    var colorBackgroud: UIColor = .clear
    var imagenMostar: UIImage? = nil
}

struct Loteria{
    let parejasLoteria: [ParejaLoteria]
}
