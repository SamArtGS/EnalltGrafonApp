//
//  TamanosLetras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-06-18.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Tamanio {
    static let letraCafeTarjetasMenu: CGFloat = 14
    static let letrasCafeBocina:CGFloat = 22
    static let letrasRosaBocina:CGFloat = 20
    
    static let letrasCafeBloques: CGFloat = 20
    static let letrasRosasBloques: CGFloat = 20
    static let letraPosicionBloque: CGFloat = 25
    static let letraExplicacion:CGFloat = 16
    static let letraFonema:CGFloat = 25

}

enum TamanioDispositivo: String{
    
    case iPhoneMuyGrande
    case iPhone12Mini
    case iPhoneGrande
    case iPhoneMediano
    case iPhonePequeño
    
    public init?(rawValue: String) {
        switch rawValue {
        case "iPhone Xs Max":
            self = .iPhoneMuyGrande
        case "iPhone 6":
            self = .iPhoneMediano
        case "iPhone 5s":
            self = .iPhonePequeño
        case "iPhone 12 mini":
            self = .iPhone12Mini
        case "iPhone 12":
            self = .iPhoneGrande
        default:
            self = .iPhoneMediano
        }
    }
    
//    func establecer() -> [CGFloat]{
//        var letraCafeTarjetasMenu: CGFloat = 14
//        var letrasCafeBocina:CGFloat = 22
//        var letrasRosaBocina:CGFloat = 20
//        var letrasCafeBloques: CGFloat = 20
//        var letrasRosasBloques: CGFloat = 20
//        var letraPosicionBloque: CGFloat = 25
//        var letraExplicacion:CGFloat = 16
//        var letraFonema:CGFloat = 25
//        switch self {
//        case .iPhonePequeño:
//            <#code#>
//        case .iPhone12Mini:
//            <#code#>
//        case .iPhoneMediano:
//            <#code#>
//        case .iPhoneGrande:
//            <#code#>
//        case .iPhoneMuyGrande:
//            <#code#>
//        default:
//            <#code#>
//        }
//    }
    
}

//SKU: 20210623
