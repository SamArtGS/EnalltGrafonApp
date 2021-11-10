//
//  Colors.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-11.
//  Copyright © 2021 SamArtGS. All rights reserved.
//
import UIKit


extension UIColor {
    
    //MARK: SONIDOS Y SÍMBOLOS
    
    static let colorBarraSuperiorSyS: UIColor = UIColor(red: 82/255, green: 145/255, blue: 179/255, alpha: 1)
    static let colorLineaBarraSuperiorSyS: UIColor = UIColor(red: 68/255, green: 89/255, blue: 115/255, alpha: 1)
    static let colorToolBarSyS: UIColor = UIColor(red: 213/255, green: 224/255, blue: 224/255, alpha: 1)
    static let textoBarSyS: UIColor = UIColor(red: 213/255, green: 224/255, blue: 224/255, alpha: 1)
    static let colorNoSeleccionadoTabBarSonidoSimbolo: UIColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
    static let colorTabBarSonidoSimbolo: UIColor = UIColor(red: 82/255, green: 145/255, blue: 179/255, alpha: 1)
    
    
    //MARK: PALABRAS
    
    static let colorBarraSuperiorPalabras: UIColor = UIColor(red: 137/255, green: 55/255, blue: 26/255, alpha: 1)
    static let colorLineaBarraSuperiorPalabras: UIColor = UIColor(red: 209/255, green: 95/255, blue: 59/255, alpha: 1)
    static let colorSeleccionadoTabBarSonidoSimbolo: UIColor = .white
    static let colorSeleccionadoTabBarPalabrasEnBoca: UIColor = .white
    static let colorNoSeleccionadoTabBarPalabrasEnBoca: UIColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
    static let colorTabBarPalabrasEnBoca: UIColor = .colorBarraSuperiorPalabras
    static let colorFondoTarjetasPalabrasEnBoca: UIColor = UIColor(red: 254/255, green: 244/255, blue: 235/255, alpha: 1.0)
    static let fondosSilabaPalabrasEnBoca: [UIColor] = [
        UIColor(red: 249/255, green: 232/255, blue: 226/255, alpha: 1.0),
        UIColor(red: 244/255, green: 218/255, blue: 209/255, alpha: 1.0),
        UIColor(red: 241/255, green: 206/255, blue: 194/255, alpha: 1.0),
        UIColor(red: 238/255, green: 194/255, blue: 180/255, alpha: 1.0),
        UIColor(red: 235/255, green: 180/255, blue: 162/255, alpha: 1.0),
        UIColor(red: 230/255, green: 167/255, blue: 148/255, alpha: 1.0),
        UIColor(red: 225/255, green: 151/255, blue: 128/255, alpha: 1.0)
    ]
    static let colorLetras:UIColor = .colorBarraSuperiorPalabras
    static let colorLetraRosa:UIColor = UIColor(red: 214/255, green: 0/255, blue: 130/255, alpha: 1.0)
    
    
    
    
    //MARK: GRUPOS DE PALABRAS
    
    static let colorNavigationBarGruposPalabras: UIColor = UIColor(red: 31/255, green: 104/255, blue: 23/255, alpha: 1.0)
    static let colorLineaBarraSuperiorGruposPalabras: UIColor = UIColor(red: 15/255, green: 150/255, blue: 4/255, alpha: 1)
    static let colorTabBarGruposPalabras:UIColor = colorNavigationBarGruposPalabras
    static let colorSeleccionadoTabBarGruposPalabras: UIColor = .white
    static let colorNoSeleccionadoTabBarGruposPalabras: UIColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
    
    static let colorFondoTarjetasGrupoDePalabras: UIColor = UIColor(red: 248/255, green: 253/255, blue: 248/255, alpha: 1.0)

    static let colorLetrasGrupoPalabras: UIColor = UIColor(red: 6/255, green: 73/255, blue: 6/255, alpha: 1.0)
    static let colorLetraVerde:UIColor = .colorLetrasGrupoPalabras
    
    static let fondosSilabaGrupoPalabras: [UIColor] = [
        UIColor(red: 227/255, green: 244/255, blue: 213/255, alpha: 1.0),
        UIColor(red: 213/255, green: 238/255, blue: 194/255, alpha: 1.0),
        UIColor(red: 201/255, green: 234/255, blue: 177/255, alpha: 1.0),
        UIColor(red: 188/255, green: 230/255, blue: 158/255, alpha: 1.0),
        UIColor(red: 176/255, green: 223/255, blue: 223/255, alpha: 1.0),
    ]
    
    static let parejaVerdes: [UIColor] = [
        UIColor(red: 227/255, green: 244/255, blue: 213/255, alpha: 1.0),
        UIColor(red: 213/255, green: 238/255, blue: 194/255, alpha: 1.0)
    ]
    
    static let naranjaMemorama1: UIColor = UIColor(red: 237/255, green: 161/255, blue: 62/255, alpha: 1.0)
    
    static func rgba(_ r: Int, _ g: Int, _ b: Int, _ a: Int) -> UIColor {
        return UIColor(red: CGFloat(r/255), green: CGFloat(g/255), blue: CGFloat(b/255), alpha: CGFloat(a))
    }
    
    static let colorVerdeFondoLoteria = UIColor(red: 240/255, green: 249/255, blue: 233/255, alpha: 1.0)
    
    
    static let colorVerdeFondoTarjetaLoteria1 = UIColor(red: 213/255, green: 238/255, blue: 194/255, alpha: 1.0)
    
    static let colorVerdeFondoTarjetaLoteria2 = UIColor(red: 143/255, green: 179/255, blue: 140/255, alpha: 1.0)
    
    static let letrasRojasLoteria = UIColor(red: 173/255, green: 18/255, blue: 51/255, alpha: 1.0)
    
}


extension UIColor {
    
    
    
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
