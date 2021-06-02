//
//  CeldaPalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaPalabras: UICollectionViewCell {
    
    lazy var texto: String = ""
    
    var palabrasEnTarjeta: Tarjeta? {
        didSet {
            texto.removeAll()
            guard let destapado = palabrasEnTarjeta else { return }
            for silaba in destapado.silabas{
                for palabra in silaba.palabras{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            }
            palabrerio.text = texto
        }
    }
    
    private let imagenPergamino: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "icons8-paper")
        return imageView
    }()
    
    private let palabrerio: UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Lato(.regular, size: 12)
        etiqueta.textColor = .black
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.numberOfLines = 10
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    func configurarConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
        contentMode = .scaleAspectFit
        imagenPergamino.addSubview(palabrerio)
        addSubview(imagenPergamino)
        
        NSLayoutConstraint.activate([
            imagenPergamino.topAnchor.constraint(equalTo: topAnchor),
            imagenPergamino.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenPergamino.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagenPergamino.bottomAnchor.constraint(equalTo: bottomAnchor),
            palabrerio.topAnchor.constraint(equalTo: imagenPergamino.topAnchor),
            palabrerio.leadingAnchor.constraint(equalTo: imagenPergamino.leadingAnchor),
            palabrerio.trailingAnchor.constraint(equalTo: imagenPergamino.trailingAnchor),
            palabrerio.bottomAnchor.constraint(equalTo: imagenPergamino.bottomAnchor),
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se reclama Celda de tarjeta")
    }
}
