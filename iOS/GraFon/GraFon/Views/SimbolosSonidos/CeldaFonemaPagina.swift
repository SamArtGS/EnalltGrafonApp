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
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private var imagenObjeto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let imagenesApiladas: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 10
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
               
        return elementosApilados
    }()
        
    func distribucionConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
        contentMode = .scaleAspectFit
    
        imagenesApiladas.addArrangedSubview(imagenFonemaAntes)
        imagenesApiladas.addArrangedSubview(imagenObjeto)
        
        addSubview(imagenesApiladas)
            
    NSLayoutConstraint.activate([
        
        imagenesApiladas.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 70),
        imagenesApiladas.trailingAnchor.constraint(equalTo: trailingAnchor),
        imagenesApiladas.leadingAnchor.constraint(equalTo: leadingAnchor),
        imagenesApiladas.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50)
            
    ])
    
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        distribucionConstraints()
    }
       
    required init?(coder: NSCoder) {
        fatalError("Falló al momento de implementar el constructor")
    }
}
