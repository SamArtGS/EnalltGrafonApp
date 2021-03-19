//
//  PajaroCelda.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-27.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PajaroCelda: UICollectionViewCell {
    
    //Variables para los pedidos de la profa y la diseñadora:
    private let tamanioImagen:CGFloat = 1
    
    var pajaroObjeto: Fonema? {
       didSet {
           guard let destapado = pajaroObjeto else { return }
        imagenPajaro.image = UIImage(named: destapado.imagenPajaro)
       }
       
   }
    
   override init(frame: CGRect) {
       super.init(frame: frame)
       distribucionElementos()
   }
   
   required init?(coder: NSCoder) {
       fatalError("La función constructor no fue implementada correctamente :(")
   }
   
    private let imagenPajaro: UIImageView = {
      let imageView = UIImageView()
       imageView.translatesAutoresizingMaskIntoConstraints = false
       imageView.contentMode = .scaleAspectFill
       return imageView
    }()
       
    private func distribucionElementos(){
           
           self.translatesAutoresizingMaskIntoConstraints = false
           self.contentMode = .scaleAspectFit
            
           addSubview(imagenPajaro)
           imagenPajaro.heightAnchor.constraint(equalTo: heightAnchor,multiplier: tamanioImagen).isActive = true
            imagenPajaro.widthAnchor.constraint(equalTo: widthAnchor,multiplier: tamanioImagen).isActive = true
           
    }
}
