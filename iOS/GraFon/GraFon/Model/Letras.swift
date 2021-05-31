//
//  Letras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-14.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

struct Letra: Codable, Hashable, Equatable{
    let identificador: Int
    let letra: String
    let imagenHoja: String
    let tarjetas: [Tarjeta]?
}

struct Tarjeta: Codable, Hashable, Equatable{
    let audio: String?
    let silabas: [Silaba]
    let excepciones: [Palabra]?
}

struct Silaba: Codable, Hashable, Equatable{
    let palabras: [Palabra]
    let pronuciacion: String //Posicion letra dentro de palabra: posicionLetra
    let explicacion: String
    let imagenFonema: String //Sonido
    let imagenConsejo: String?
    let textodeAbajo: String?
}

struct Palabra: Codable, Hashable, Equatable{
    let palabra: String
    let enGriego: String //símbolos
}
