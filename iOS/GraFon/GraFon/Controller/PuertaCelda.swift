//
//  PuertaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PuertaCell: UICollectionViewCell {
    
    //Variables para los pedidos de la profa y la diseñadora:
    private let tamanioImagen:CGFloat = 0.9
    
    var puerta: Puerta? {
        didSet {
            guard let destapado = puerta else { return }
            imagenPuerta.image = UIImage(named: destapado.nombreImagenPuertaCerrada)
            imagenPuerta.animationImages = [UIImage(named: destapado.nombreImagenPuertaCerrada)!, UIImage(named: destapado.nombreImagenPuertaMedio)!, UIImage(named: destapado.nombreImagenPuertaAbierta)!]
            imagenPuerta.animationDuration = 0.5
            imagenPuerta.startAnimating()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        distribucionConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("funcion init no implementada")
    }
    
    
    //Elementos UI
    private var imagenPuerta: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private func distribucionConstraints(){
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .scaleAspectFill
        let view = UIView()
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo:
            leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo:
            trailingAnchor).isActive = true
        view.heightAnchor.constraint(equalTo:
            heightAnchor, multiplier: tamanioImagen).isActive = true

        
        view.addSubview(imagenPuerta)
        imagenPuerta.centerXAnchor.constraint(equalTo:
            view.centerXAnchor).isActive = true
        imagenPuerta.centerYAnchor.constraint(equalTo:
            view.centerYAnchor).isActive = true
        imagenPuerta.heightAnchor.constraint(equalTo:
            view.heightAnchor,multiplier: tamanioImagen).isActive = true
        
    }
}
 
