//
//  GrupoPalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/8/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation


struct GrupoPalabras{
    let identificador: Int
    let letra: String
    let imagenGrupo: String
    let tarjetas: [Tarjeta]?
    
    let otrosCasos:[Silaba]?
    let otrosGrupos:[Palabra]?
    
    init(identificador:Int, letra: String, imagenGrupo:String, tarjetas:[Tarjeta]?, otrosCasos:[Silaba]? = nil, otrosGrupos:[Palabra]? = nil){
        self.identificador = identificador
        self.letra = letra
        self.imagenGrupo = imagenGrupo
        self.tarjetas = tarjetas
        self.otrosCasos = otrosCasos
        self.otrosGrupos = otrosGrupos
    }
}
