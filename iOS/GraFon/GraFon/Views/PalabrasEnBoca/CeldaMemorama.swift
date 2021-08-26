//
//  CeldaMemorama.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/25/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaMemorama: UICollectionViewCell {
    
    var estaVolteado: Bool = true
    var acertado:Bool = false
    
    var tipo: TipoMemorama?{
        didSet{
            guard let tipo = tipo else { return }
            switch tipo {
            case .memoramaPalabras:
                imagenAtras.image = UIImage(named: "n2_tarjeta_memorama-1")
                texto.font = .Roboto(.regular, size: 30)
            case .memoramaFrases:
                imagenAtras.image = UIImage(named: "n2_tarjeta_memorama-2")
                texto.font = .Roboto(.regular, size: 20)
            }
        }
    }
    
    var palabra: String?{
        didSet{
            guard let palabra = palabra else { return }
            texto.text = palabra
        }
    }
    
    let imagenFrente: UIImageView = {
        let imagen = UIImageView()
        imagen.image = UIImage(named: "n2_tarjeta_memorama-blanca")
        imagen.layer.cornerRadius = 5
        //imagen.layer.borderWidth = 2
        imagen.isUserInteractionEnabled = true
        imagen.clipsToBounds = true
        //imagen.layer.borderColor = UIColor.naranjaMemorama1.cgColor
        imagen.translatesAutoresizingMaskIntoConstraints = false
        return imagen
    }()
    
    private let texto: UILabelPersonalizado = {
       let label = UILabelPersonalizado()
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .colorLetras
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private let imagenAtras: UIImageView = {
        let imagen = UIImageView()
        imagen.translatesAutoresizingMaskIntoConstraints = false
        imagen.isUserInteractionEnabled = true
        imagen.contentMode = .scaleToFill
        return imagen
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        ponerConstraints()
    }
    
    func ponerConstraints(){
        
        addSubview(imagenAtras)
        addSubview(imagenFrente)
        imagenFrente.addSubview(texto)
        
        NSLayoutConstraint.activate([
            imagenAtras.topAnchor.constraint(equalTo: topAnchor),
            imagenAtras.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenAtras.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagenAtras.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            imagenFrente.topAnchor.constraint(equalTo: topAnchor,constant: 2),
            imagenFrente.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            imagenFrente.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2),
            imagenFrente.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2),

            texto.topAnchor.constraint(equalTo: imagenFrente.topAnchor),
            texto.leadingAnchor.constraint(equalTo: imagenFrente.leadingAnchor, constant: 2),
            texto.trailingAnchor.constraint(equalTo: imagenFrente.trailingAnchor, constant: -2),
            texto.bottomAnchor.constraint(equalTo: imagenFrente.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func flip(){
        
        UIView.transition(from: imagenAtras, to: imagenFrente, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews]) {[weak self] bool in
            self?.estaVolteado = true
        }
    }
    
    func flipBack(){
        UIView.transition(from: imagenFrente, to: imagenAtras, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews]) { [weak self] bool in
            self?.estaVolteado = false
        }
    }
}
