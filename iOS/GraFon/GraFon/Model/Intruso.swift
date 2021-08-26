//
//  Intruso.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/24/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct ContenidoHoja {
    let palabra: String
    let sonido: Int
}

struct HojaImagen {
    let imagenNormal: UIImage?
    let imagenBien: UIImage?
    let imagenQuebrada: UIImage?
    
    init(imagenNormal: String, imagenBien: String, imagenQuebrada: String) {
        self.imagenNormal = UIImage(named: imagenNormal)
        self.imagenBien = UIImage(named: imagenBien)
        self.imagenQuebrada = UIImage(named: imagenQuebrada)
    }
}

struct SonidoActualIntruso{
    let letra:String
    let tipo:Int
    let sonido: String
}

struct ParejaHoja {
    let hojaImagen: HojaImagen
    let contenidoHoja: ContenidoHoja
}
