//
//  PuertaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PuertaCell: UICollectionViewCell {
    
    var puerta: Puerta? {
        didSet {
            guard let destapado = puerta else { return }
            imagenPuerta.image = UIImage(named: destapado.nombreImagenPuertaCerrada)
            imagenPuerta.animationImages = [UIImage(named: destapado.nombreImagenPuertaCerrada)!, UIImage(named: destapado.nombreImagenPuertaMedio)!, UIImage(named: destapado.nombreImagenPuertaAbierta)!]
            
        }
    }
    
    // MARK: Elementos de UI
    
    private var imagenPuerta: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private func distribucionConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
        contentMode = .scaleAspectFit
        addSubview(imagenPuerta)
        NSLayoutConstraint.activate([
            imagenPuerta.topAnchor.constraint(equalTo: topAnchor),
            imagenPuerta.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            imagenPuerta.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            imagenPuerta.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    // MARK: Constructores y deinit
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("Vista de puerta creada")
        distribucionConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("funcion init no implementada")
    }
    
    deinit {
        print("Espacio de puerta reclamado")
    }
    
}
 
// MARK: Funciones animadoras de la celda

extension PuertaCell{
    
    func iniciarAnimacion(){
        imagenPuerta.animationDuration = 1.3
        imagenPuerta.startAnimating()
    }
    
    func detenerAnimacion(){
        imagenPuerta.stopAnimating()
    }
    
}
