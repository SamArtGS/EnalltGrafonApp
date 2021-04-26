//
//  Fuentes.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-25.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {

    public enum formato: String {
        case extraboldItalic = "-ExtraboldItalic"
        case semiboldItalic = "-SemiboldItalic"
        case semibold = "-Semibold"
        case regular = ""
        case lightItalic = "Light-Italic"
        case light = "-Light"
        case italic = "-Italic"
        case extraBold = "-Extrabold"
        case boldItalic = "-BoldItalic"
        case bold = "-Bold"
    }

    static func HelveticaNeue(_ type: formato = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "HelveticaNeue\(type.rawValue)", size: size)!
    }
    static func GillSans(_ type: formato = .regular, size: CGFloat = UIFont.systemFontSize) -> UIFont {
        return UIFont(name: "GillSans\(type.rawValue)", size: size)!
    }

    var isBold: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitBold)
    }

    var isItalic: Bool {
        return fontDescriptor.symbolicTraits.contains(.traitItalic)
    }

}
