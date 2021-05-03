//
//  CeldaPalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaPalabras: UICollectionViewCell {
    
    private var sonido: String?
    private var correcto: Bool?
    
    weak var delegate: juegoSimbolosySonidosDelegate?
    
    var ejercicio: ParejaSonido? {
        didSet {
            guard let destapado = ejercicio else { return }
            imagenFonema.image = UIImage(named: destapado.imagen)
            sonido = destapado.sonido
            correcto = destapado.correcto
        }
    }
    
    private let botonSonido: UIButton = {
        let boton = UIButton(type: .custom)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setImage(UIImage(named: "n1_jgo_play_mdpi"), for: .normal)
        boton.setImage(UIImage(named: "n1_jgo_playing_mdpi"), for: .highlighted)
        boton.contentMode = .scaleAspectFit
        boton.isUserInteractionEnabled = true
        return boton
    }()
    
    private let imagenFonema: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "n1_jgo1_pant_01mdpi")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let imagenPajaroMal: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "n1_jgo_NoCorresponde_mdpi")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let imagenPajaroBien: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "n1_jgo_SiCorresponde_mdpi")
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let pilaElementos: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let pilaPajaros: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .horizontal
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 50
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
}
