//
//  SonidosSimbolosSeleccionado.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class SimboloPaginaCelda: UICollectionViewCell {
    
    var sonido:String?
    var touch:Bool?
    private var imagenFonAntes:String = ""
    private var imageFonDespues:String = ""
    
    //Al momento de pasarle por la construcción del objeto:
    var fonema: Fonema? {
        didSet {
            guard let destapado = fonema else { return }
            imagenFonAntes = destapado.imagenFonemaAntes
            imageFonDespues = destapado.imagenFonemaDespues
            imagenFonemaAntes.image = UIImage(named: destapado.imagenFonemaAntes)
            imagenObjeto.image = UIImage(named: destapado.imagenFiguraEjemplo)
            sonido = destapado.audio
        }
    }
    
    func cambiarImagen() {
        imagenFonemaAntes.image = UIImage(named: imageFonDespues)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
            self.imagenFonemaAntes.image = UIImage(named: self.imagenFonAntes)
        })
    }
    
    private var imagenFonemaAntes: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private var imagenObjeto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           distribucionConstraints()
    }
       
    required init?(coder: NSCoder) {
           fatalError("Falló al momento de implementar el constructor")
    }
        
    func distribucionConstraints(){
            translatesAutoresizingMaskIntoConstraints = false
            contentMode = .scaleAspectFit
        
            let imagenesApiladas:UIStackView = UIStackView()
            imagenesApiladas.axis = .vertical
            imagenesApiladas.distribution = .fillProportionally
            imagenesApiladas.alignment = .center
            imagenesApiladas.spacing = 1
            imagenesApiladas.translatesAutoresizingMaskIntoConstraints = false
            imagenesApiladas.addArrangedSubview(imagenFonemaAntes)
            imagenesApiladas.addArrangedSubview(imagenObjeto)
            
            addSubview(imagenesApiladas)
            
    NSLayoutConstraint.activate([
        
            imagenesApiladas.topAnchor.constraint(equalTo: topAnchor),
            imagenesApiladas.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagenesApiladas.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenesApiladas.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            
            imagenFonemaAntes.topAnchor.constraint(equalTo: topAnchor,constant: 30),
            imagenFonemaAntes.leadingAnchor.constraint(equalTo: imagenesApiladas.leadingAnchor),
            imagenFonemaAntes.trailingAnchor.constraint(equalTo: imagenesApiladas.trailingAnchor)
            
    ])
    
    }
}
