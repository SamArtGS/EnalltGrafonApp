//
//  SonidosSimbolosSeleccionado.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class SimboloPaginaCelda: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        distribucionConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Falló al momento de implementar el constructor")
    }
    
    var sonido:String?
    
    //Al momento de pasarle por la construcción del objeto:
    var fonema: Fonema? {
        didSet {
            guard let destapado = fonema else { return }
            imagenFonemaAntes.image = UIImage(named: destapado.imagenFonemaAntes)
            imagenObjeto.image = UIImage(named: destapado.imagenFiguraEjemplo)
            sonido = destapado.audio
        }
    }
    

    
    func cambiarImagen() -> String? {
        guard case imagenFonemaAntes.image = UIImage(named: fonema!.imagenFonemaDespues) else {
            return nil
        }
        guard case imagenFonemaAntes.image = UIImage(named: fonema!.imagenFonemaAntes) else {
            return nil
        }
        return sonido
    }
    
    // ELEMENTOS UI
    private var imagenFonemaAntes: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var imagenObjeto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var imagenPajaroBarraAdicional:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "iconbar1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
        
    func distribucionConstraints(){
            self.translatesAutoresizingMaskIntoConstraints = false
            self.contentMode = .scaleAspectFit
        
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(imagenPajaroBarraAdicional)
        
            addSubview(view)
            view.backgroundColor = .blue
        
        
        
            let imagenesApiladas:UIStackView = UIStackView()
            imagenesApiladas.axis = .vertical
            imagenesApiladas.distribution = .equalSpacing
            imagenesApiladas.alignment = .center
            imagenesApiladas.spacing = frame.size.height*0.01
            imagenesApiladas.translatesAutoresizingMaskIntoConstraints = false
            imagenesApiladas.addArrangedSubview(imagenFonemaAntes)
            imagenesApiladas.addArrangedSubview(imagenObjeto)
            imagenesApiladas.backgroundColor = .red
            
            addSubview(imagenesApiladas)
            
            let constraints = [
                view.topAnchor.constraint(equalTo: topAnchor),
                view.trailingAnchor.constraint(equalTo: trailingAnchor),
                view.leadingAnchor.constraint(equalTo: leadingAnchor),
                view.widthAnchor.constraint(equalTo: widthAnchor),
                view.heightAnchor.constraint(equalToConstant: CGFloat(80.0)),
                
                imagenPajaroBarraAdicional.topAnchor.constraint(equalTo: view.topAnchor),
                imagenPajaroBarraAdicional.leftAnchor.constraint(equalTo: view.leftAnchor),
                imagenPajaroBarraAdicional.widthAnchor.constraint(equalToConstant: CGFloat(20.0)),
                imagenPajaroBarraAdicional.heightAnchor.constraint(equalToConstant: CGFloat(20.0)),
                    
                imagenFonemaAntes.widthAnchor.constraint(equalTo: widthAnchor),
                
                imagenObjeto.widthAnchor.constraint(equalTo: widthAnchor),
                imagenObjeto.heightAnchor.constraint(equalTo: heightAnchor, multiplier: CGFloat(0.45)),
                
                imagenesApiladas.topAnchor.constraint(equalTo: view.bottomAnchor),
                imagenesApiladas.centerXAnchor.constraint(equalTo: centerXAnchor),
                imagenesApiladas.centerYAnchor.constraint(equalTo: centerYAnchor)
            ]
            NSLayoutConstraint.activate(constraints)
    }
}
