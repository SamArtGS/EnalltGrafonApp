//
//  Protocolos.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-24.
//  Copyright © 2021 SamArtGS. All rights reserved.
//
import UIKit

protocol pantallaInstruccionesDelegate: AnyObject{
    func continuarJuego()
}
protocol juegoSimbolosySonidosDelegate: AnyObject{
    func siguiente()
    func recolectarPuntaje()
    func finalizar()
}
protocol collectionViewDentro: UICollectionViewDelegate, UICollectionViewDataSource{
    func colocarDelegados()
}

protocol MostrarExcepcionesDelegate : AnyObject{
    func mostrarExcepciones()
}

protocol pantallaResultadosDelegate: AnyObject{
    func irOtroJuego()
    func irPantallaPajaros()
    func irAPuertas()
}
protocol juegoTriviaDelegate: AnyObject{
    func recolectarPuntaje(correcto: Bool)
    func sonarPunto(bool: Bool)
}

protocol juegoCitasDelegate: AnyObject{
    func recolectarPuntaje(correcto: Bool)
    func sonarPoint(bool: Bool)
}
