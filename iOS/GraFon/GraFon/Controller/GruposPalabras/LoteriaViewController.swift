//
//  LoteriaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 10/4/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation

class LoteriaViewController: UIViewController {
    
    var loteria1: [ParejaLoteria]?
    var loteria2: [ParejaLoteria]?
    var loteria3: [ParejaLoteria]?
    var loteria4: [ParejaLoteria] = [ParejaLoteria]()
    
    var puntosGrafon:Int = 0
    var puntosJugador:Int = 0
    var paro:Bool = true

    var reproductorAudio: AVAudioPlayer?
    
    var loteria:Loteria?{
        didSet{
            guard let loteria = loteria else { return }
            loteria3 = loteria.parejasLoteria
            if loteria == Data.loteria1{
                imagePajaro.image = UIImage(named: "loto1_grafon_1cmdpi")
                distribuirConstraints(seleccionada: 1)
                botonSonido.isUserInteractionEnabled = true
            }else{
                imagePajaro.image = UIImage(named: "loto2_grafon_1cmdpi")
                distribuirConstraints(seleccionada: 2)
                botonSonido.isUserInteractionEnabled = true
            }
            
            
            loteria1 = loteria.parejasLoteria.shuffled() // Arreglo de cartas de lotería
            let loterian = loteria.parejasLoteria.shuffled()[0..<8].map({ pareja in pareja })
            loteria2 = loterian                      // Cartas de jugadores
            
            
            for i in 0..<loterian.count{
                labelContainers[i].text = loterian[i].palabra
                imageContainers[i].pareja = loterian[i]
            }
        }
    }
    
    var loteriaRepeat:Loteria?{
        didSet{
            guard let loteriap = loteria else { return }
            loteria3 = loteriap.parejasLoteria
            if loteria == Data.loteria1{
                imagePajaro.image = UIImage(named: "loto1_grafon_1cmdpi")
                distribuirConstraints(seleccionada: 1)
                botonSonido.isUserInteractionEnabled = true
            }else{
                imagePajaro.image = UIImage(named: "loto2_grafon_1cmdpi")
                distribuirConstraints(seleccionada: 2)
                botonSonido.isUserInteractionEnabled = true
            }
            loteria1 = loteriap.parejasLoteria.shuffled() // Arreglo de cartas de lotería
            let loterian = loteriap.parejasLoteria[0..<8].map({ pareja in pareja })
            loteria2 = loterian                      // Cartas de jugadores
            for i in 0..<loterian.count{
                labelContainers[i].text = loterian[i].palabra
                imageContainers[i].pareja = loterian[i]
            }
        }
    }
    
    
    
    @objc func playLoteria(){
        guard let carta = loteria1?.popLast() else {
            print("No pude sacar la carta")
            return
        }
        botonSonido.isUserInteractionEnabled = false
        loteria4.append(carta)
        print(carta)
        let sonido = Bundle.main.path(forResource: carta.sonido, ofType: "mp3")
        do{
            reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido!))
            reproductorAudio?.delegate = self
            reproductorAudio?.play()
            botonSonido.isSelected = true
        }catch{
            print(error)
        }
    }
    
    private var parejas: [ParejaLoteria] = [ParejaLoteria]()
    private let labelContainers: [UILabelPersonalizado] = {
        var labelContaier: [UILabelPersonalizado] = [UILabelPersonalizado]()
        for i in 0..<8{
            let word = UILabelPersonalizado()
            word.translatesAutoresizingMaskIntoConstraints = false
            switch i {
            case 0..<4:
                if UIDevice().userInterfaceIdiom == .phone {
                    word.textColor = .colorLetraVerde
                    word.font = .Roboto(.regular, size: 15)
                }
                if UIDevice().userInterfaceIdiom == .pad{
                    word.textColor = .colorLetraVerde
                    word.font = .Roboto(.regular, size: 25)
                }
            default:
                if UIDevice().userInterfaceIdiom == .phone {
                    word.textColor = .colorLetraVerde
                    word.font = .Roboto(.bold, size: 20)
                }
                if UIDevice().userInterfaceIdiom == .pad{
                    word.textColor = .colorLetraVerde
                    word.font = .Roboto(.bold, size: 30)
                }
                
            }
            labelContaier.append(word)
        }
        return labelContaier
    }()
    
    private var imageContainers = [ImagenLoteria]()
    
    private let imageContainers1: () -> [ImagenLoteria] = {
        var imageContainer: [ImagenLoteria] = [ImagenLoteria]()
        for i in 0..<8{
            let imageView = ImagenLoteria()
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            switch i {
            case 0:
                imageView.imagenPajaro.image = UIImage(named: "loto1_grafon_1a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_1a_marcamdpi"), for: .normal)
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_1a_marcamdpi"), for: .normal)
            case 1:
                imageView.imagenPajaro.image = UIImage(named: "loto1_grafon_1b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_1b_marcamdpi"), for: .normal)
            case 2:
                imageView.imagenPajaro.image = UIImage(named: "loto1_grafon_2a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_2a_marcamdpi"), for: .normal)
            case 3:
                imageView.imagenPajaro.image = UIImage(named: "loto1_grafon_2b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_2b_marcamdpi"), for: .normal)
            case 4:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_1a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_1a_marcamdpi"), for: .normal)
            case 5:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_1b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_1b_marcamdpi"), for: .normal)
            case 6:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_2a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_2a_marcamdpi"), for: .normal)
                
            case 7:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_2b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_2b_marcamdpi"), for: .normal)
                
            default:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_2b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_2b_marcamdpi"), for: .normal)
            }
            imageContainer.append(imageView)
        }
        return imageContainer
    }
    
    
    private let imageContainers2: () -> [ImagenLoteria] = {
        var imageContainer: [ImagenLoteria] = [ImagenLoteria]()
        for i in 0..<8{
            let imageView = ImagenLoteria()
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            switch i {
            case 0:
                imageView.imagenPajaro.image = UIImage(named: "loto2_grafon_1a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_1a_marcamdpi"), for: .normal)
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_1a_marcamdpi"), for: .normal)
            case 1:
                imageView.imagenPajaro.image = UIImage(named: "loto2_grafon_1b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_1b_marcamdpi"), for: .normal)
            case 2:
                imageView.imagenPajaro.image = UIImage(named: "loto2_grafon_2a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_2a_marcamdpi"), for: .normal)
            case 3:
                imageView.imagenPajaro.image = UIImage(named: "loto2_grafon_2b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_grafon_2b_marcamdpi"), for: .normal)
            case 4:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_1a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_1a_marcamdpi"), for: .normal)
            case 5:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_1b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_1b_marcamdpi"), for: .normal)
            case 6:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_2a_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_2a_marcamdpi"), for: .normal)
                
            case 7:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_2b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_2b_marcamdpi"), for: .normal)
                
            default:
                imageView.imagenPajaro.image = UIImage(named: "loto1_user_2b_marcamdpi")
                //imageView.imagenPajaro.setImage(UIImage(named: "loto1_user_2b_marcamdpi"), for: .normal)
            }
            imageContainer.append(imageView)
        }
        return imageContainer
    }
    
    
    
    func generarMatriz(matriz:Int, colorFondo: UIColor, palabrasMemorama: [UILabelPersonalizado], imagenes: [ImagenLoteria])-> UIStackView{
        
        let stackHorizontal1 = pilaHorizontal()
        let stackHorizontal2 = pilaHorizontal()
        let stackVertical = pilaVertical()
        
        stackVertical.addArrangedSubview(stackHorizontal1)
        stackVertical.addArrangedSubview(stackHorizontal2)
        stackHorizontal1.addArrangedSubview(imagenes[0])
        stackHorizontal1.addArrangedSubview(imagenes[1])
        stackHorizontal2.addArrangedSubview(imagenes[2])
        stackHorizontal2.addArrangedSubview(imagenes[3])
        
        stackVertical.backgroundColor = colorFondo
        
        for i in 0..<4 {
            imagenes[i].palabra = palabrasMemorama[i]
            
            if matriz == 2{
                imagenes[i].imagenTarjeta.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(voltear(sender:))))
                imagenes[i].imagenPajaro.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(voltear(sender:))))
            }
            
            
            imagenes[i].addSubview(imagenes[i].imagenTarjeta)
            imagenes[i].addSubview(imagenes[i].imagenPajaro)
            
            NSLayoutConstraint.activate([
                imagenes[i].imagenTarjeta.topAnchor.constraint(equalTo: imagenes[i].topAnchor),
                imagenes[i].imagenTarjeta.leadingAnchor.constraint(equalTo: imagenes[i].leadingAnchor),
                
                imagenes[i].imagenTarjeta.trailingAnchor.constraint(equalTo: imagenes[i].trailingAnchor),
                imagenes[i].imagenTarjeta.bottomAnchor.constraint(equalTo: imagenes[i].bottomAnchor),
                
                
                imagenes[i].imagenPajaro.topAnchor.constraint(equalTo: imagenes[i].topAnchor),
                imagenes[i].imagenPajaro.leadingAnchor.constraint(equalTo: imagenes[i].leadingAnchor),
                
                imagenes[i].imagenPajaro.trailingAnchor.constraint(equalTo: imagenes[i].trailingAnchor),
                imagenes[i].imagenPajaro.bottomAnchor.constraint(equalTo: imagenes[i].bottomAnchor),
            ])
            imagenes[i].flipBack()
            let time = 200
            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(i*time)) {
                imagenes[i].flip()
            }
        }
        
        NSLayoutConstraint.activate([
            imagenes[0].topAnchor.constraint(equalTo: stackHorizontal1.topAnchor, constant: 7),
            imagenes[1].topAnchor.constraint(equalTo: stackHorizontal1.topAnchor, constant: 7),
            imagenes[1].trailingAnchor.constraint(equalTo: stackVertical.trailingAnchor, constant: -7),
            imagenes[2].bottomAnchor.constraint(equalTo: stackVertical.bottomAnchor, constant: -7),
            imagenes[3].trailingAnchor.constraint(equalTo: stackVertical.trailingAnchor, constant: -7),
            imagenes[3].bottomAnchor.constraint(equalTo: stackVertical.bottomAnchor, constant: -7)
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
        elementosApilados.alignment = .fill
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
        elementosApilados.distribution = .equalCentering
        elementosApilados.alignment = .center
        elementosApilados.spacing = 20
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
        botonSonido.addTarget(self, action: #selector(playLoteria), for: .touchUpInside)
        let BarButtonItemIzquierdo = menuButton(self,
        action: #selector(salir),
        imageName: "n2_btn_jgo_cerrar")
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo
        
        let BarButtonItemDerecho = menuButton(self,
        action: #selector(mostrarInstrucciones),
        imageName: "icons8-query")
        
        self.navigationItem.rightBarButtonItems = [BarButtonItemDerecho]
    }
    
    @objc
    func mostrarInstrucciones(){
        if loteria == Data.loteria1{
            present(InstruccionesVC(imagenInstruccion: "tutorial_loto1mdpi", imagenBoton: "btn_loto_jugarmdpi", juegoLanzar: .loteria1, modal: true), animated: true)
        }
        
        if loteria == Data.loteria2{
            present(InstruccionesVC(imagenInstruccion: "tutorial_loto2mdpi", imagenBoton: "btn_loto_jugarmdpi", juegoLanzar: .loteria2, modal: true), animated: true)
        }
    }
    
    func distribuirConstraints(seleccionada: Int){
        view.addSubview(pilaElementosVerticalGeneral)
        pilaElementosVerticalGeneral.addArrangedSubview(botonSonido)

        if seleccionada == 1{
            imageContainers = imageContainers1()
        }else{
            imageContainers = imageContainers2()
        }
        
        let matrix1 = generarMatriz(matriz: 1,colorFondo: .colorVerdeFondoTarjetaLoteria1, palabrasMemorama: Array(labelContainers[0..<4]), imagenes: Array(imageContainers[0..<4]))
        
        let matrix2 = generarMatriz(matriz: 2,colorFondo: .colorVerdeFondoTarjetaLoteria2, palabrasMemorama: Array(labelContainers[4..<8]), imagenes: Array(imageContainers[4..<8]))
        
        let pilaHorizontalAux = pilaHorizontal()
        pilaHorizontalAux.addArrangedSubview(matrix1)
        pilaHorizontalAux.addArrangedSubview(imagePajaro)
        pilaElementosVerticalGeneral.addArrangedSubview(pilaHorizontalAux)
        pilaElementosVerticalGeneral.addArrangedSubview(matrix2)
        
        NSLayoutConstraint.activate([
            botonSonido.heightAnchor.constraint(equalToConstant: 60),
            botonSonido.widthAnchor.constraint(equalToConstant: 110),
            pilaElementosVerticalGeneral.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            pilaElementosVerticalGeneral.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            pilaElementosVerticalGeneral.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            pilaElementosVerticalGeneral.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            imagePajaro.topAnchor.constraint(equalTo: matrix1.topAnchor),
            matrix1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            matrix2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            
        ])
        view.bringSubviewToFront(matrix1)
        view.bringSubviewToFront(matrix2)
        view.bringSubviewToFront(imagePajaro)
        
        if UIDevice().userInterfaceIdiom == .phone {
            matrix1.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45).isActive = true
            matrix2.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
            
            if seleccionada == 1{
                imagePajaro.leadingAnchor.constraint(equalTo: matrix1.trailingAnchor, constant: -9).isActive = true
                imagePajaro.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.3).isActive = true
            }else{
                imagePajaro.leadingAnchor.constraint(equalTo: matrix1.trailingAnchor, constant: -9).isActive = true
                imagePajaro.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.3).isActive = true
            }
            
            
        }else{
            if UIDevice().userInterfaceIdiom == .pad{
                matrix1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
                matrix2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
                
                if seleccionada == 1{
                    imagePajaro.leadingAnchor.constraint(equalTo: matrix1.trailingAnchor, constant: -25).isActive = true
                    imagePajaro.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.3).isActive = true
                }else{
                    imagePajaro.leadingAnchor.constraint(equalTo: matrix1.trailingAnchor, constant: -20).isActive = true
                    imagePajaro.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.3).isActive = true
                }
            }
        }
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
    
    @objc func voltear(sender:UITapGestureRecognizer){
        
        imageContainers.forEach { imagen in
            
            if imagen.imagenTarjeta.isEqual(sender.view) && botonSonido.isSelected {
                if loteria4.contains(imagen.pareja!){
                    
                    //Marcar como buena
                    imagen.flipBack()
                    
                    puntosJugador+=1
                    if puntosJugador == 4 {
                        terminarJuego(ganador: 2)
                    }
                }else{
                    imagen.imagenTarjeta.image = UIImage(named: "loto_user_error")
                    imagen.palabra?.textColor = .letrasRojasLoteria
                    terminarJuego(ganador: 1)
                }
                imagen.imagenTarjeta.isUserInteractionEnabled = false
                imagen.imagenPajaro.isUserInteractionEnabled = false
            }
            
        }
    }
}

extension ImagenLoteria{
    func flip(tipo: Bool = true){
        UIView.transition(from: imagenPajaro, to: imagenTarjeta, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews]) {_ in
            
        }
    }
    
    func flipBack(tipo: Bool = true){
       UIView.transition(from: imagenTarjeta, to: imagenPajaro, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews]) {_ in
        
       }
    }
}
extension LoteriaViewController: AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag && paro{
            if !(loteria1?.isEmpty ?? false){
                guard let carta = loteria1?.popLast() else {
                    print("No pude sacar la carta")
                    return
                }
                loteria4.append(carta)
                print(carta)
                let sonido = carta.sonido
                for i in 0..<4{
                    if imageContainers[i].pareja?.sonido == sonido{
                        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
                            self.imageContainers[i].flipBack()
                            self.imageContainers[i].volteada = true
                        }
                    }
                }
                if imageContainers[0].volteada && imageContainers[1].volteada && imageContainers[2].volteada && imageContainers[3].volteada {
                    terminarJuego(ganador: 1)
                    
                }else{
                    let soundi = Bundle.main.path(forResource: sonido, ofType: "mp3")
                    reproductorAudio = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundi ?? "15"))
                    reproductorAudio?.play()
                    reproductorAudio?.delegate = self
                }
                
            }else{
                terminarJuego(ganador: 1)
                
                botonSonido.isUserInteractionEnabled = false
                botonSonido.isSelected = false
            }
        }else{
            print("ERROR")
        }
    }
    
    
    func terminarJuego(ganador: Int){
        paro = false
        reproductorAudio?.stop()
        var mensaje = ""
        botonSonido.isSelected = false
        if ganador == 1{ mensaje = "Grafón ganó"
        }else{ mensaje = "Le ganaste a Grafón" }
        let alert = UIAlertController(title: mensaje, message: "¿Volver a jugar con la misma plantilla?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: { [weak self] _ in
            self?.view.subviews.forEach { viewcita in
                viewcita.removeFromSuperview()
                viewcita.subviews.forEach { viewc in
                    viewc.removeFromSuperview()
                }
            }
            self?.botonSonido.isSelected = false
            self?.paro = false
            self?.reproductorAudio?.stop()
            self?.loteria4.removeAll()
            self?.loteria1?.removeAll()
            self?.loteria2?.removeAll()
            self?.puntosJugador = 0
            self?.loteriaRepeat = Loteria(parejasLoteria: (self?.loteria3)!)
            self?.paro = true
        }))
        
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: { [weak self]_ in
            self?.view.subviews.forEach { viewcita in
                viewcita.removeFromSuperview()
                viewcita.subviews.forEach { viewc in
                    viewc.removeFromSuperview()
                }
            }
            self?.botonSonido.isSelected = false
            self?.paro = false
            self?.reproductorAudio?.stop()
            self?.loteria4.removeAll()
            self?.loteria1?.removeAll()
            self?.loteria2?.removeAll()
            self?.puntosJugador = 0
            self?.loteria = Loteria(parejasLoteria: (self?.loteria3)!)
            self?.paro = true
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
