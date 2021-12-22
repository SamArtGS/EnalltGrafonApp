//
//  TamanosLetras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-06-18.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Tamanio {
    static let letraCafeTarjetasMenu: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 13
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 14
            default:
                return 14
        }
    }()
    
    static let letrasCafeBocina: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 17
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 22
            default:
                return 22
        }
    }()
    
    static let letrasRosaBocina: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 15
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 20
            default:
                return 20
        }
    }()
    
    static let letrasCafeBloques: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 17
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 20
            default:
                return 20
        }
    }()
    
    static let letrasRosasBloques: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 17
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 20
            default:
                return 20
        }
    }()
    
    static let letraPosicionBloque: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 22
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 25
            default:
                return 25
        }
    }()
    
    static let letraExplicacion: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 15
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 16
            default:
                return 16
        }
    }()
    
    static let letraFonema: CGFloat = {
        switch UIDevice().type{
        case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                return 22
            case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneX:
                return 25
            default:
                return 25
        }
    }()
}
