//
//  PajaroCelda.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-27.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaMolde: UICollectionViewCell {
    
    //Variables para los pedidos de la profa y la diseñadora:
    private let tamanioImagen:CGFloat = 1
    
    var fonema: Fonema? {
       didSet {
            guard let destapado1 = fonema else { return }
        if !destapado1.imagenPajaro.isEmpty{
            imagenElemento.image = UIImage(named: destapado1.imagenPajaro)
        }
       }
    }
    
    var letra: Letra? {
        didSet{
            guard let destapado2 = letra else { return }
            imagenElemento.image = UIImage(named: destapado2.imagenHoja)
        }
    }
    
    override init(frame: CGRect) {
       super.init(frame: frame)
       distribucionElementos()
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
           imagenElemento.heightAnchor.constraint(equalTo: heightAnchor,multiplier: tamanioImagen).isActive = true
           imagenElemento.widthAnchor.constraint(equalTo: widthAnchor,multiplier: tamanioImagen).isActive = true
    }
}
