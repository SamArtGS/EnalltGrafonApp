//
//  AlertaJuegosPalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/25/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct EstiloBoton{
    let colorFondo: UIColor
    let colorLetras: UIColor
    let botonSi: String
    let botonNo: String
}

enum TipoAlerta {
    case sonidosSimbolos
    case palabras
    case grupos
    case aDivertirse
    
    func estilo() -> EstiloBoton {
        switch self {
        case .sonidosSimbolos:
            let estilo = EstiloBoton(colorFondo: .colorTabBarSonidoSimbolo,
                                     colorLetras: .systemBlue,
                                     botonSi: "n2_btn_jgo_si",
                                     botonNo: "n2_btn_jgo_no")
            return estilo
        case .palabras:
            let estilo = EstiloBoton(colorFondo: .colorFondoTarjetasPalabrasEnBoca,
                                     colorLetras: .systemOrange,
                                     botonSi: "n2_btn_jgo_si",
                                     botonNo: "n2_btn_jgo_no")
            return estilo
        case .grupos:
            let estilo = EstiloBoton(colorFondo: .colorFondoTarjetasPalabrasEnBoca,
                                     colorLetras: .systemGreen,
                                     botonSi: "n2_btn_jgo_si",
                                     botonNo: "n2_btn_jgo_no")
            return estilo
        case .aDivertirse:
            let estilo = EstiloBoton(colorFondo: .colorFondoTarjetasPalabrasEnBoca,
                                     colorLetras: .systemOrange,
                                     botonSi: "n2_btn_jgo_si",
                                     botonNo: "n2_btn_jgo_no")
            return estilo
        }
    }
}


class AlertaJuegos{

    private let botonSi:UIButton = {
        let boton = UIButton(type: .system)
        boton.setBackgroundColor(.white, for: .normal)
        boton.setBackgroundColor(.colorLetras, for: .selected)
        boton.setTitleColor(.colorLetraRosa, for: .normal)
        boton.setTitleColor(.white, for: .highlighted)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.layer.cornerRadius = 20
        boton.layer.borderWidth = 3
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.systemOrange.cgColor
        boton.titleLabel?.font = .Roboto(.bold, size: 20)
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    private let botonNo:UIButton = {
        let boton = UIButton(type: .system)
        boton.setBackgroundColor(.white, for: .normal)
        boton.setBackgroundColor(.colorLetras, for: .selected)
        boton.setTitleColor(.colorLetraRosa, for: .normal)
        boton.setTitleColor(.white, for: .highlighted)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.layer.cornerRadius = 20
        boton.layer.borderWidth = 3
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.systemOrange.cgColor
        boton.titleLabel?.font = .Roboto(.bold, size: 20)
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    private let titulo: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 25)
        label.textColor = .colorLetras
        return label
    }()
    
    private let subtitulo: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 25)
        label.textColor = .colorLetras
        return label
    }()
    
    init(tipo: TipoAlerta, colorFondo: UIColor, colorLetras: UIColor, titulo: String, subtitulo: String){
        
    }
    
}
