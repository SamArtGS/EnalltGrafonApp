//
//  Fonema.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-04.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

struct Fonema: Codable, Hashable{
    let identificador: Int
    let fonema:String
    let imagenPajaro: String
    let imagenFonemaAntes: String
    let imagenFonemaDespues: String
    let imagenFiguraEjemplo:String
    let audio:String
}

struct ParejaSonido: Codable, Hashable, Equatable{
    let nivel: Int
    let imagen: String
    let sonido: String
    let correcto: Bool
}
