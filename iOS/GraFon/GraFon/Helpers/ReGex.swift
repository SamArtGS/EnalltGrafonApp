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
        self.regex = "\\\(simbolo)[a-zA-Z0-9_ ]*\\\(simbolo)"
        self.color = color
        self.fuente = fuente
    }
}

class UILabelPersonalizado: UILabel{
    
    let formatos: [Formato] = [
        Formato(simbolo: "*", color: .black, fuente: .Lato(.black, size: 16)),  // Con * se pone las Negrita Negro
        Formato(simbolo: "~", color: .blue, fuente: .Lato(.bold, size: 16)),    // Con ~ se pone las Negrita Azul
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
        
        let textoFinal = NSMutableAttributedString(string: texto)
        
        for formato in formatos{
            let regex = try? NSRegularExpression(pattern: formato.regex, options: [])
            let range = NSRange(location: 0, length: texto.utf16.count)
            let matches = regex!.matches(in: texto, options: [], range: range)
            let ranges = matches.map {$0.range}
            
            for iterador in 0..<ranges.count{
                textoFinal.addAttribute(.foregroundColor, value: formato.color,
                                        range: NSRange(location: ranges[iterador].location-(iterador*2),
                                                       length: ranges[iterador].length-2
                                        ))
                textoFinal.addAttribute(.font, value: formato.fuente,
                                        range: NSRange(location: ranges[iterador].location-(iterador*2),
                                                       length: ranges[iterador].length-2
                                        ))
            }
        }
        
        attributedText = textoFinal
        banderin = true
    }
    
}
