//
//  Trivia.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Trivia{
    let letra: String
    let audio: String
    let respuesta: String
    let incorrecta1: String
    let incorrecta2: String
}

class ImagenTrivia: UIImageView{
    var palabra: String? = ""
    var imagenCorrecta: UIImage? = nil
    var imagenIncorrecta: UIImage? = nil
    var imagenNormal: UIImage? = nil
}
