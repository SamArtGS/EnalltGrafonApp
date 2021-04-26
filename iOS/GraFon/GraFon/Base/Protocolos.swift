//
//  Protocolos.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-24.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

protocol pantallaInstruccionesDelegate: class{
    func iniciarJuego()
}
protocol juegoSimbolosySonidosDelegate: class{
    func siguiente()
    func recolectarPuntaje()
    func finalizar()
}
