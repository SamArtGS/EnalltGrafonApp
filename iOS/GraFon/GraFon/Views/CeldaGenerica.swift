//
//  PajaroCelda.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-27.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaMolde: UICollectionViewCell {
    
    deinit {
        print("Se reclama cada una de las celdas genéricas")
    }
    
    var fonema: Fonema? {
       didSet {
            guard let destapado = fonema else { return }
        if !destapado.imagenPajaro.isEmpty{
            imagenElemento.image = UIImage(named: destapado.imagenPajaro)
        }
       }
    }
    
    var letra: Letra? {
        didSet{
            guard let destapado = letra else { return }
            if !destapado.imagenHoja.isEmpty{
                imagenElemento.image = UIImage(named: destapado.imagenHoja)
            }
            
        }
    }
    
    var nivel: String? {
        didSet{
            guard let destapado = nivel else { return }
            imagenElemento.image = UIImage(named: destapado)
            imagenElemento.contentMode = .scaleAspectFit
        }
    }
    
    override init(frame: CGRect) {
       super.init(frame: frame)
        distribucionElementos()
        print("Se crea sonidos y simbolos")
   }
    
    
   
   required init?(coder: NSCoder) {
       fatalError("La función constructor no fue implementada correctamente :(")
   }
   
    private let imagenElemento: UIImageView = {
      let imageView = UIImageView()
       imageView.translatesAutoresizingMaskIntoConstraints = false
       imageView.contentMode = .scaleAspectFill
       return imageView
    }()
    
    private func distribucionElementos(){
           self.translatesAutoresizingMaskIntoConstraints = false
           self.contentMode = .scaleAspectFit
           addSubview(imagenElemento)
        
        NSLayoutConstraint.activate([
            imagenElemento.topAnchor.constraint(equalTo: topAnchor),
            imagenElemento.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenElemento.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagenElemento.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
