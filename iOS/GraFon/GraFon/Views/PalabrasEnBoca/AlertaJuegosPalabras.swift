//
//  AlertaJuegosPalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/25/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class AlertaJuegosPalabras: UIView {

    init(frame: CGRect, titulo:String, mensaje: String, boton1:String, accionB1:()->(),boton2:String, accionB2:()->()) {
        super.init(frame: frame)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
