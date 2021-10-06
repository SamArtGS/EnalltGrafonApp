//
//  LoteriaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 10/4/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct ParejaLoteria{
    let sonido: String
    let palabra: String
}
class ImagenLoteria: UIImageView{
    var colorBorde: UIColor = .clear
    var colorBackgroud: UIColor = .clear
    var imagenMostar: UIImage? = nil
    
}

struct Loteria{
    let parejasLoteria: [ParejaLoteria]
}

class LoteriaViewController: UIViewController {
    
    let imagenPresentacion:UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "demo_n1_jgo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.enableZoom()
        return imageView
    }()
    
    private let imageContainers: [UIImageView] = {
        var imageContainer: [UIImageView] = [UIImageView]()
        for i in 0..<8{
            let imageView = ImagenLoteria()
            imageView.backgroundColor = .white
            switch i {
            case 0:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_1a_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 2:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_1b_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 3:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_2a_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 4:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_2b_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 5:
                imageView.imagenMostar = UIImage(named: "")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 6:
                imageView.imagenMostar = UIImage(named: "")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 7:
                imageView.imagenMostar = UIImage(named: "")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            default:
                imageView.imagenMostar = UIImage(named: "")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            }
            imageContainer.append(imageView)
        }
        
        return imageContainer
    }()
    
    private let generadorMatriz: (UIColor,[UILabel]) -> UIStackView = { colorFondo, palabrasMemorama in
        let imageContainer1 = UIImage()
        let stackView = UIStackView()
        let backgroundWhite1 = UIView()
        
        return stackView
    }
    
    private let pila: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
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
    
    private let botonSonido:UIButton = {
        let boton = UIButton(type: .system)
        boton.setBackgroundColor(.white, for: .normal)
        boton.setBackgroundColor(.colorLetras, for: .selected)
        boton.setTitleColor(.colorLetraRosa, for: .normal)
        boton.setTitleColor(.white, for: .highlighted)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.layer.cornerRadius = 10
        boton.layer.borderWidth = 3
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.systemOrange.cgColor
        boton.titleLabel?.font = .Roboto(.bold, size: 20)
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
