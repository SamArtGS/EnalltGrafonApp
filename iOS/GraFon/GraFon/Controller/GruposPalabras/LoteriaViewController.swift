//
//  LoteriaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 10/4/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class LoteriaViewController: UIViewController {
    
    var loteria1: [ParejaLoteria]?
    var loteria2: [ParejaLoteria]?
    
    var loteria:Loteria?{
        didSet{
            guard let loteria = loteria else { return }
            
            loteria1 = loteria.parejasLoteria.shuffled()
            let loteria3 = (loteria.parejasLoteria[0..<8].shuffled())
            loteria2 = loteria3
            
            for i in 0..<loteria3.count{
                labelContainers[i].text = loteria3[i].palabra
            }
            
            distribuirConstraints()
        }
    }
    
    func playLoteria(loteria: Loteria){
        var timeCounter = 0
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print(loteria.parejasLoteria[timeCounter].sonido)
            print(loteria.parejasLoteria[timeCounter].palabra)
            timeCounter+=1
        }
    }
    
    private let labelContainers: [UILabelPersonalizado] = {
        var labelContaier: [UILabelPersonalizado] = [UILabelPersonalizado]()
        for i in 0..<8{
            let word = UILabelPersonalizado()
            word.translatesAutoresizingMaskIntoConstraints = false
            switch i {
            case 0..<4:
                word.textColor = .cyan
                word.font = .Roboto(.regular, size: 15)
            default:
                word.textColor = .magenta
                word.font = .Roboto(.bold, size: 20)
            }
            labelContaier.append(word)
        }
        return labelContaier
    }()
    
    private let imageContainers: [UIImageView] = {
        var imageContainer: [UIImageView] = [UIImageView]()
        for i in 0..<8{
            let imageView = ImagenLoteria()
            imageView.contentMode = .scaleToFill
            imageView.backgroundColor = .white
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.layer.cornerRadius = 10
            imageView.clipsToBounds = true
            switch i {
            case 0:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_1a_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 1:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_1b_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 2:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_2a_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 3:
                imageView.imagenMostar = UIImage(named: "loto1_grafon_2b_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 4:
                imageView.imagenMostar = UIImage(named: "loto1_user_1a_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 5:
                imageView.imagenMostar = UIImage(named: "loto1_user_1b_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            case 6:
                imageView.imagenMostar = UIImage(named: "loto1_user_2a_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
                
            case 7:
                imageView.imagenMostar = UIImage(named: "loto1_user_2b_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
                
            default:
                imageView.imagenMostar = UIImage(named: "loto1_user_2b_marcamdpi")
                imageView.colorBorde = .red
                imageView.colorBackgroud = .orange
            }
            imageView.image = imageView.imagenMostar
            imageContainer.append(imageView)
        }
        return imageContainer
    }()
    
    func generarMatriz(colorFondo: UIColor, palabrasMemorama: [UILabel], imagenes: [UIImageView])-> UIStackView{
        let stackHorizontal1 = pilaHorizontal()
        
        
        let stackHorizontal2 = pilaHorizontal()
        let stackVertical = pilaVertical()
        
        let imageView = UIImageView(image: UIImage(named: "loto1_grafon_1cmdpi"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        stackVertical.backgroundColor = .systemGreen
    
        stackVertical.addArrangedSubview(stackHorizontal1)
        stackVertical.addArrangedSubview(stackHorizontal2)
        
        
        stackHorizontal1.addArrangedSubview(imagenes[0])
        stackHorizontal1.addArrangedSubview(imagenes[1])
        
        //stackHorizontal1.addArrangedSubview(imageView)
        stackHorizontal2.addArrangedSubview(imagenes[2])
        stackHorizontal2.addArrangedSubview(imagenes[3])
        
        NSLayoutConstraint.activate([
        ])
        
        return stackVertical
    }
    
    private let pilaHorizontal: () -> UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .horizontal
        elementosApilados.distribution = .fillEqually
        elementosApilados.alignment = .center
        elementosApilados.spacing = 5
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }
    
    private let pilaVertical: () -> UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 5
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }
    
    private let pilaElementosVerticalGeneral: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 80
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let botonSonido: UIButton = {
        let boton = UIButton(type: .custom)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.contentMode = .scaleAspectFit
        boton.setImage(UIImage(named: "btn_lotoaudio-playingmdpi"), for: .normal)
        boton.setImage(UIImage(named: "btn_lotoaudio-playingmdpi"), for: .selected)
        boton.isUserInteractionEnabled = true
        return boton
    }()
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Lotofón"
        view.backgroundColor = .colorFondoTarjetasGrupoDePalabras
    }
    
    func distribuirConstraints(){
        view.addSubview(pilaElementosVerticalGeneral)
        pilaElementosVerticalGeneral.addArrangedSubview(botonSonido)
        let matrix1 = generarMatriz(colorFondo: .purple, palabrasMemorama: Array(labelContainers[0..<4]), imagenes: Array(imageContainers[0..<4]))
        let matrix2 = generarMatriz(colorFondo: .orange, palabrasMemorama: Array(labelContainers[4..<8]), imagenes: Array(imageContainers[4..<8]))
        
        
        
        pilaElementosVerticalGeneral.addArrangedSubview(matrix1)
        pilaElementosVerticalGeneral.addArrangedSubview(matrix2)
        
        
        NSLayoutConstraint.activate([
            botonSonido.heightAnchor.constraint(equalToConstant: 50),
            botonSonido.widthAnchor.constraint(equalToConstant: 100),
            
            pilaElementosVerticalGeneral.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pilaElementosVerticalGeneral.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pilaElementosVerticalGeneral.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            
        ])
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
}
