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
    
    private let imageContainers: [ImagenLoteria] = {
        var imageContainer: [ImagenLoteria] = [ImagenLoteria]()
        for i in 0..<8{
            let imageView = ImagenLoteria()
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
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
            imageView.setImage(imageView.imagenMostar, for: .normal)
            imageContainer.append(imageView)
        }
        return imageContainer
    }()
    
    
    
    func generarMatriz(colorFondo: UIColor, palabrasMemorama: [UILabelPersonalizado], imagenes: [ImagenLoteria])-> UIStackView{
        
        let stackHorizontal1 = pilaHorizontal()
        let stackHorizontal2 = pilaHorizontal()
        let stackVertical = pilaVertical()
        stackVertical.backgroundColor = colorFondo
        stackVertical.addArrangedSubview(stackHorizontal1)
        stackVertical.addArrangedSubview(stackHorizontal2)
        stackHorizontal1.addArrangedSubview(imagenes[0])
        stackHorizontal1.addArrangedSubview(imagenes[1])
        stackHorizontal2.addArrangedSubview(imagenes[2])
        stackHorizontal2.addArrangedSubview(imagenes[3])
        
        
        stackHorizontal1.addArrangedSubview(imagenes[0].imagenTarjeta)
        stackHorizontal1.addArrangedSubview(imagenes[1].imagenTarjeta)
        stackHorizontal2.addArrangedSubview(imagenes[2].imagenTarjeta)
        stackHorizontal2.addArrangedSubview(imagenes[3].imagenTarjeta)
        
        
        
        for i in 0..<4{
            imagenes[i].palabra = palabrasMemorama[i]
            imagenes[i].imagenTarjeta.addSubview(imagenes[i].palabra!)
            imagenes[i].imagenTarjeta.isHidden = true
            
            imagenes[i].addTarget(self, action: #selector(voltear(sender:)), for: .touchUpInside)
            imagenes[i].imagenTarjeta.addTarget(self, action: #selector(voltear(sender:)), for: .touchUpInside)
            
            
            imagenes[i].palabra?.topAnchor.constraint(equalTo: imagenes[i].imagenTarjeta.topAnchor, constant: 5).isActive = true
            imagenes[i].palabra?.centerXAnchor.constraint(equalTo: imagenes[i].imagenTarjeta.centerXAnchor).isActive = true
            imagenes[i].palabra?.leadingAnchor.constraint(equalTo: imagenes[i].imagenTarjeta.leadingAnchor, constant: 5).isActive = true
            imagenes[i].palabra?.trailingAnchor.constraint(equalTo: imagenes[i].imagenTarjeta.trailingAnchor, constant: -5).isActive = true
        }
        
        NSLayoutConstraint.activate([
            imagenes[0].topAnchor.constraint(equalTo: stackHorizontal1.topAnchor,constant: 7),
            imagenes[0].leadingAnchor.constraint(equalTo: stackHorizontal1.leadingAnchor, constant: 3),
            imagenes[1].topAnchor.constraint(equalTo: stackHorizontal1.topAnchor, constant: 7),
            imagenes[1].trailingAnchor.constraint(equalTo: stackVertical.trailingAnchor, constant: -7),
            imagenes[2].leadingAnchor.constraint(equalTo: stackHorizontal2.leadingAnchor, constant: 3),
            imagenes[2].bottomAnchor.constraint(equalTo: stackHorizontal2.bottomAnchor, constant: -7),
            imagenes[3].trailingAnchor.constraint(equalTo: stackVertical.trailingAnchor, constant: -7),
            imagenes[3].bottomAnchor.constraint(equalTo: stackHorizontal2.bottomAnchor, constant: -7),
            
            
            imagenes[0].imagenTarjeta.topAnchor.constraint(equalTo: stackHorizontal1.topAnchor,constant: 7),
            imagenes[0].imagenTarjeta.leadingAnchor.constraint(equalTo: stackHorizontal1.leadingAnchor, constant: 3),
            imagenes[1].imagenTarjeta.topAnchor.constraint(equalTo: stackHorizontal1.topAnchor, constant: 7),
            imagenes[1].imagenTarjeta.trailingAnchor.constraint(equalTo: stackVertical.trailingAnchor, constant: -7),
            imagenes[2].imagenTarjeta.leadingAnchor.constraint(equalTo: stackHorizontal2.leadingAnchor, constant: 3),
            imagenes[2].imagenTarjeta.bottomAnchor.constraint(equalTo: stackHorizontal2.bottomAnchor, constant: -7),
            imagenes[3].imagenTarjeta.trailingAnchor.constraint(equalTo: stackVertical.trailingAnchor, constant: -7),
            imagenes[3].imagenTarjeta.bottomAnchor.constraint(equalTo: stackHorizontal2.bottomAnchor, constant: -7),
        ])
        
        return stackVertical
    }
    
    
    
    private let imagePajaro: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .clear
        image.image = UIImage(named: "loto1_grafon_1cmdpi")
        return image
    }()
    
    private let pilaHorizontal: () -> UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .horizontal
        elementosApilados.distribution = .fillEqually
        elementosApilados.alignment = .firstBaseline
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }
    
    private let pilaVertical: () -> UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillEqually
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }
    
    private let pilaElementosVerticalGeneral: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 70
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let botonSonido: UIButton = {
        let boton = UIButton(type: .custom)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.contentMode = .scaleAspectFit
        boton.setImage(UIImage(named: "btn_lotoaudiomdpi"), for: .normal)
        boton.setImage(UIImage(named: "btn_lotoaudio-playingmdpi"), for: .selected)
        return boton
    }()
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Lotofón"
    }
    
    
    func distribuirConstraints(){
        view.addSubview(pilaElementosVerticalGeneral)
        pilaElementosVerticalGeneral.addArrangedSubview(botonSonido)
        
        
        
        let matrix1 = generarMatriz(colorFondo: .purple, palabrasMemorama: Array(labelContainers[0..<4]), imagenes: Array(imageContainers[0..<4]))
        let matrix2 = generarMatriz(colorFondo: .orange, palabrasMemorama: Array(labelContainers[4..<8]), imagenes: Array(imageContainers[4..<8]))
        
        let pilaHorizontalAux = pilaHorizontal()
        pilaHorizontalAux.distribution = .fillProportionally
        pilaHorizontalAux.addArrangedSubview(matrix1)
        pilaHorizontalAux.addArrangedSubview(imagePajaro)
        
        pilaElementosVerticalGeneral.addArrangedSubview(pilaHorizontalAux)
        
        pilaElementosVerticalGeneral.addArrangedSubview(matrix2)
        
        NSLayoutConstraint.activate([
            botonSonido.heightAnchor.constraint(equalToConstant: 50),
            botonSonido.widthAnchor.constraint(equalToConstant: 100),
            pilaElementosVerticalGeneral.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            pilaElementosVerticalGeneral.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            pilaElementosVerticalGeneral.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            pilaElementosVerticalGeneral.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            imagePajaro.topAnchor.constraint(equalTo: matrix1.topAnchor),
            imagePajaro.leadingAnchor.constraint(equalTo: matrix1.trailingAnchor, constant: -30),
            imagePajaro.widthAnchor.constraint(equalTo: matrix1.widthAnchor,multiplier: 0.6),
            matrix1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            //matrix1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            matrix2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            matrix2.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6)
        ])
        view.bringSubviewToFront(matrix1)
        view.bringSubviewToFront(matrix2)
        view.bringSubviewToFront(imagePajaro)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        view.backgroundColor = .colorVerdeFondoLoteria
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @objc func voltear(sender:UIButton){
        
        if sender.isSelected{
           //Voltear
        }
        print("Si entro")
        
        
        if let imagen = sender as? ImagenLoteria {
            if imagen.volteada{
                print("SI")
                imagen.imagenTarjeta.isSelected = true
                imagen.flipBack()
                imagen.volteada = false
            }else{
                imagen.flip()
                imagen.volteada = true
            }
        }else{
            
        }
    }
}

extension ImagenLoteria{
    func flip(){
        UIView.transition(from: self, to: imagenTarjeta, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews]) {_ in
            
        }
    }
    
    func flipBack(){
       UIView.transition(from: imagenTarjeta, to: self, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews]) {_ in
        
    }
    }
}
