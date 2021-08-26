//
//  Memorama.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/25/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

struct ParejaCartas {
    let primeraPalabra: String
    let segundaPalabra: String
}

enum TipoMemorama {
    case memoramaPalabras
    case memoramaFrases
    
    func retuTitle() -> String {
        switch self {
        case .memoramaFrases:
            return "Memorama Frases"
        case .memoramaPalabras:
            return "Memorama Palabras"
        }
    }
}
