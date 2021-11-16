//
//  CeldaTrivia.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/27/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation

class TriviaCollectionViewCell: UICollectionViewCell{
    
    
    weak var delegate: juegoTriviaDelegate?
    
    private var sonido: String?
    private var reproductorAudio: AVAudioPlayer?

    var trivia:Trivia? {
        didSet{
            guard let trivia = trivia else{ return }
            
            
            botonSonido.addSubview(labelBoton)
            
            NSLayoutConstraint.activate([
                labelBoton.topAnchor.constraint(equalTo: botonSonido.topAnchor),
                labelBoton.leadingAnchor.constraint(equalTo: botonSonido.leadingAnchor),
                labelBoton.trailingAnchor.constraint(equalTo: botonSonido.trailingAnchor),
                labelBoton.bottomAnchor.constraint(equalTo: botonSonido.bottomAnchor),
            ])
            labelBoton.text = trivia.letra
            
            
            sonido = trivia.audio
            
            var palabras = [trivia.incorrecta1, trivia.incorrecta2, trivia.respuesta]
            palabras.shuffle()
            labelSuperior.text   = palabras[0]
            labelMedio.text      = palabras[1]
            labelInferior.text   = palabras[2]
            palabraSuperior.palabra = palabras[0]
            palabraCentral.palabra = palabras[1]
            palabraInferior.palabra = palabras[2]
        }
    }
    
    private let stack: UIStackView = {
       let stack:UIStackView = UIStackView()
        stack.isUserInteractionEnabled = true
        stack.axis = .vertical
        stack.distribution = .equalCentering
        stack.alignment = .center
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let botonSonido:UIButton = {
        let boton = UIButton(type: .system)
        boton.setBackgroundColor(.white, for: .normal)
        boton.setBackgroundColor(.colorLetras, for: .selected)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.layer.cornerRadius = 10
        boton.layer.borderWidth = 3
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.systemOrange.cgColor
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    
    private let labelBoton: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 20)
        label.textColor = .colorLetraRosa
        label.textAlignment = .center
        return label
    }()
    
    private let labelSuperior: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 25)
        label.textColor = .colorLetras
        return label
    }()
    
    private let labelMedio: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 25)
        label.textColor = .colorLetras
        return label
    }()
    
    private let labelInferior: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 25)
        label.textColor = .colorLetras
        return label
    }()
    
    private let palabraSuperior: ImagenTrivia = {
        let imagenView = ImagenTrivia()
        imagenView.isUserInteractionEnabled = true
        imagenView.imagenCorrecta = UIImage(named: "btn_trivia_sup_acierto_n2")
        imagenView.imagenIncorrecta = UIImage(named: "btn_trivia_sup-inf_error_n2")
        imagenView.imagenNormal = UIImage(named: "btn_trivia_sup-inf_n2")
        imagenView.image = imagenView.imagenNormal
        
        imagenView.translatesAutoresizingMaskIntoConstraints = false
        imagenView.contentMode = .scaleAspectFit
        
        return imagenView
    }()
    
    private let palabraCentral: ImagenTrivia = {
        let imagenView = ImagenTrivia()
        imagenView.isUserInteractionEnabled = true
        imagenView.imagenCorrecta = UIImage(named: "btn_trivia_medio_acierto_n2")
        imagenView.imagenIncorrecta = UIImage(named: "btn_trivia_medio_error_n2")
        imagenView.imagenNormal = UIImage(named: "btn_trivia_medio_n2")
        imagenView.image = imagenView.imagenNormal
        
        imagenView.translatesAutoresizingMaskIntoConstraints = false
        imagenView.contentMode = .scaleAspectFit
        imagenView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(verificarRespuesta(_:))))
        return imagenView
    }()
    
    private let palabraInferior: ImagenTrivia = {
        let imagenView = ImagenTrivia()
        imagenView.isUserInteractionEnabled = true
        imagenView.imagenCorrecta = UIImage(named: "btn_trivia_inf_acierto_n2")
        imagenView.imagenIncorrecta = UIImage(named: "btn_trivia_sup-inf_error_n2")
        imagenView.imagenNormal = UIImage(named: "btn_trivia_sup-inf_n2")
        imagenView.image = imagenView.imagenNormal
        
        
        imagenView.translatesAutoresizingMaskIntoConstraints = false
        imagenView.contentMode = .scaleAspectFit
        imagenView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(verificarRespuesta(_:))))
        return imagenView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        botonSonido.addTarget(self, action: #selector(sonarAudio), for: .touchUpInside)
        configurarConstraints()
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se reclama Celda de juego de arrastre")
    }
    
    func configurarConstraints(){
        
        palabraSuperior.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(verificarRespuesta(_:))))
        
        palabraCentral.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(verificarRespuesta(_:))))
        
        palabraInferior.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(verificarRespuesta(_:))))
        
        addSubview(stack)
        
        stack.addArrangedSubview(botonSonido)
        
        stack.addArrangedSubview(palabraSuperior)
        palabraSuperior.addSubview(labelSuperior)
        
        stack.addArrangedSubview(palabraCentral)
        palabraCentral.addSubview(labelMedio)
        
        stack.addArrangedSubview(palabraInferior)
        palabraInferior.addSubview(labelInferior)
        
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            
            botonSonido.heightAnchor.constraint(equalToConstant: 50),
            botonSonido.widthAnchor.constraint(equalToConstant: 90),
            
            palabraSuperior.widthAnchor.constraint(equalTo: widthAnchor),
            palabraCentral.widthAnchor.constraint(equalTo: widthAnchor),
            palabraInferior.widthAnchor.constraint(equalTo: widthAnchor),
            
            
            labelSuperior.centerXAnchor.constraint(equalTo: palabraSuperior.centerXAnchor),
            labelSuperior.centerYAnchor.constraint(equalTo: palabraSuperior.centerYAnchor,constant: 10),
            
            labelMedio.centerXAnchor.constraint(equalTo: palabraCentral.centerXAnchor),
            labelMedio.centerYAnchor.constraint(equalTo: palabraCentral.centerYAnchor,constant: 10),
            
            labelInferior.centerXAnchor.constraint(equalTo: palabraInferior.centerXAnchor),
            labelInferior.centerYAnchor.constraint(equalTo: palabraInferior.centerYAnchor,constant: 10),
        
        ])
    }
    
    @objc func sonarAudio(){
        let sonido = Bundle.main.path(forResource: self.sonido, ofType: "mp3")
        do {
            reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorAudio?.play()
        }catch{
            print("Error al reproducir el audio: \(error.localizedDescription)")
        }
    }
    
    @objc func verificarRespuesta(_ sender: UITapGestureRecognizer){
        guard let imagenHoja = sender.view as? ImagenTrivia else { return }
        self.isUserInteractionEnabled = false
        imagenHoja.isUserInteractionEnabled = false
        palabraSuperior.isUserInteractionEnabled = false
        palabraCentral.isUserInteractionEnabled = false
        palabraInferior.isUserInteractionEnabled = false
        
        if imagenHoja.palabra == trivia?.respuesta{
            
            imagenHoja.image = imagenHoja.imagenCorrecta
            delegate?.sonarPunto(bool: true)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: { [weak self] in
                self?.delegate?.recolectarPuntaje(correcto: true)
                imagenHoja.image = imagenHoja.imagenNormal
                imagenHoja.isUserInteractionEnabled = true
                self?.isUserInteractionEnabled = true
                self?.palabraSuperior.isUserInteractionEnabled = true
                self?.palabraCentral.isUserInteractionEnabled = true
                self?.palabraInferior.isUserInteractionEnabled = true
            })
            
            

        }else{
            
            imagenHoja.image = imagenHoja.imagenIncorrecta
            delegate?.sonarPunto(bool: false)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: { [weak self ] in
                self?.delegate?.recolectarPuntaje(correcto: false)
                imagenHoja.image = imagenHoja.imagenNormal
                imagenHoja.isUserInteractionEnabled = true
                self?.isUserInteractionEnabled = true
                self?.palabraSuperior.isUserInteractionEnabled = true
                self?.palabraCentral.isUserInteractionEnabled = true
                self?.palabraInferior.isUserInteractionEnabled = true
            })
            
            
        }
    }
}
