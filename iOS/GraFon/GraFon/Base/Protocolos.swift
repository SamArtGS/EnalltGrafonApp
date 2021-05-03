//
//  Protocolos.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-24.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

protocol pantallaInstruccionesDelegate: AnyObject{
    func iniciarJuego()
}
protocol juegoSimbolosySonidosDelegate: AnyObject{
    func siguiente()
    func recolectarPuntaje()
    func finalizar()
}
