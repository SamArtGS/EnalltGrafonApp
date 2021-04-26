//
//  Pareja.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-09.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

struct ParejaSonido: Codable, Hashable, Equatable{
    let nivel: Int
    let imagen: String
    let sonido: String
    let correcto: Bool
}
