//
//  ReGex.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-31.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Formato {
    let simbolo: String
    let color: UIColor
    let fuente: UIFont
    let regex: String
    
    init(simbolo: String, color: UIColor, fuente: UIFont){
        self.simbolo = simbolo
        self.regex = "\\\(simbolo)[a-zA-Z\\u00C0-\\u00FF0-9_ ]*\\\(simbolo)"
        self.color = color
        self.fuente = fuente
    }
}

struct PosicionRegexColor {
    let formato: Formato
    let localizacion: Int
    let longitud: Int
}

class UILabelPersonalizado: UILabel{
    
    let formatos: [Formato] = [
        Formato(simbolo: "*", color: .black, fuente: .Lato(.black, size: 16)),  // Con * se pone las Negrita Negro
        Formato(simbolo: "$", color: .blue, fuente: .Lato(.bold, size: 16)),    // Con ~ se pone las Negrita Azul
        Formato(simbolo: "+", color: .green, fuente: .Lato(.bold, size: 16)),   // Con + se pone las Negrita Verde
    ]
    
    var banderin = false
    
    override var text: String? {
        didSet{
            guard let textoDestapado = text else { return }
            if !banderin{
                colocarFormatosConRegex(texto: textoDestapado)
            }
        }
    }

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func colocarFormatosConRegex(texto: String){
        var textoSinSimbolos: String = texto
        
        for formato in formatos{
            textoSinSimbolos = textoSinSimbolos.replacingOccurrences(of: "\\\(formato.simbolo)", with: "", options: .regularExpression)
        }
        
        let textoFinal = NSMutableAttributedString(string: textoSinSimbolos)
        
        var posicionesColor:[PosicionRegexColor] = []
        
        for formato in formatos{
            let regex = try? NSRegularExpression(pattern: formato.regex, options: [])
            let range = NSRange(location: 0, length: texto.utf16.count)
            let matches = regex!.matches(in: texto, options: [], range: range)
            let ranges = matches.map {$0.range}
            
            for rango in ranges {
                posicionesColor.append(PosicionRegexColor(formato: formato, localizacion: rango.location, longitud: rango.length))
            }
        }
        
        posicionesColor.sort(by: {$0.localizacion < $1.localizacion})
        
        for num in 0..<posicionesColor.count{
            textoFinal.addAttribute(.foregroundColor, value: posicionesColor[num].formato.color,
                                    range: NSRange(location: posicionesColor[num].localizacion-(num*2),
                                                   length: posicionesColor[num].longitud-2
                                        ))
            textoFinal.addAttribute(.font, value: posicionesColor[num].formato.fuente,
                                        range: NSRange(location: posicionesColor[num].localizacion-(num*2),
                                                       length: posicionesColor[num].longitud-2
                                        ))
        }
        
        
        attributedText = textoFinal
        banderin = true
    }
    
}
