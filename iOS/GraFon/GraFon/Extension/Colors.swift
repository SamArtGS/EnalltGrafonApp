//
//  Colors.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-11.
//  Copyright © 2021 SamArtGS. All rights reserved.
//
import UIKit


extension UIColor {
    
    static var colorBarraSuperiorSyS: UIColor = UIColor(red: 82/255, green: 145/255, blue: 179/255, alpha: 1)
    static var colorLineaBarraSuperiorSyS: UIColor = UIColor(red: 68/255, green: 89/255, blue: 115/255, alpha: 1)
    static var colorToolBarSyS: UIColor = UIColor(red: 213/255, green: 224/255, blue: 224/255, alpha: 1)
    static var textoBarSyS: UIColor = UIColor(red: 213/255, green: 224/255, blue: 224/255, alpha: 1)
    static var colorBarraSuperiorPalabras: UIColor = UIColor(red: 127/255, green: 60/255, blue: 34/255, alpha: 1)
    static var colorLineaBarraSuperiorPalabras: UIColor = UIColor(red: 217/255, green: 148/255, blue: 56/255, alpha: 1)
    
    
    
    
    static var colorSeleccionadoTabBarSonidoSimbolo: UIColor = .white
    static var colorNoSeleccionadoTabBarSonidoSimbolo: UIColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
    static var colorTabBarSonidoSimbolo: UIColor = UIColor(red: 82/255, green: 145/255, blue: 179/255, alpha: 1)

    static var colorSeleccionadoTabBarPalabrasEnBoca: UIColor = .white
    static var colorNoSeleccionadoTabBarPalabrasEnBoca: UIColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.5)
    static var colorTabBarPalabrasEnBoca: UIColor = .colorBarraSuperiorPalabras
    
    
    
    
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
