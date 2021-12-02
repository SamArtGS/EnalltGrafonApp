//
//  JuegoSiNo.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 11/17/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class JuegoSiNo: UIViewController{
    
    var cita: Cita?{
        didSet{
            
        }
    }
    
    let mapa: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let cuadritoBlanco: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    
    
    
}
