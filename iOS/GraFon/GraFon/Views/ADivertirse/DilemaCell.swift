//
//  DilemaCell.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 12/23/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation

protocol juegoDilemaDelegate: AnyObject{
    func recolectarPuntaje(correcto: Bool)
    func sonarPoint(bool: Bool)
}

class DilemaCell: UICollectionViewCell{
    
    weak var delegate: juegoDilemaDelegate?
    var reproductorAudio: AVAudioPlayer?
    
    var dilema: Dilema?{
        didSet{
            guard let dilema = dilema else { return }
            
            tituloLabel.text = "¿Qué escuchas?"
            
            botonArriba.setTitle(dilema.frase1, for: .normal)
            botonArriba.setTitle(dilema.frase1, for: .selected)
            
            botonAbajo.setTitle(dilema.frase2, for: .normal)
            botonAbajo.setTitle(dilema.frase2, for: .selected)
            
            
            
            if UIDevice().userInterfaceIdiom == .pad{
                tituloLabel.font = .Roboto(.bold, size: 27)
            }else{
                switch UIDevice().type{
                    case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                        tituloLabel.font =  .Roboto(.bold, size: 15)
                    default:
                        tituloLabel.font = .Roboto(.bold, size: 17)
                }
            }
        }
    }
    
    private let pilaVertical: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 7
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        distribucionConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let tituloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        if UIDevice().userInterfaceIdiom == .pad{
            label.font = .Roboto(.bold, size: 24)
        }else{
            switch UIDevice().type{
                case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                    label.font =  .Roboto(.bold, size: 14)
                default:
                    label.font = .Roboto(.bold, size: 14)
            }
        }
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()

    
    let imagenBrujula: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "vineta_juego2")
        return imageView
    }()
    
    let cuadritoBlanco: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.colorBarraNavigationBarADivertirse.cgColor
        return view
    }()
    
    let botonArriba: UIButton = {
        let boton = UIButton()
        boton.setBackgroundColor(.colorBotonJuegosTurbobonNormal, for: .normal)
        boton.setBackgroundColor(.colorBotonJuegosTurbobonSelected, for: .selected)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setTitleColor(.black, for: .normal)
        boton.setTitleColor(.black, for: .selected)
        boton.layer.cornerRadius = 15
        boton.layer.borderWidth = 2
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    let botonAbajo: UIButton = {
        let boton = UIButton()
        boton.setBackgroundColor(.colorBotonJuegosTurbobonNormal, for: .normal)
        boton.setBackgroundColor(.colorBotonJuegosTurbobonSelected, for: .selected)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setTitleColor(.black, for: .normal)
        boton.setTitleColor(.black, for: .selected)
        boton.layer.cornerRadius = 15
        boton.layer.borderWidth = 2
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    let botonBocina: UIButton = {
        let boton = UIButton()
        boton.setImage(UIImage(named: "btn_dilemas_audio_playmdpi"), for: .normal)
        boton.setImage(UIImage(named: "btn_dilemas_audio_playingmdpi"), for: .selected)
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    
    private let pilaHorizontal: () -> UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .horizontal
        elementosApilados.distribution = .fill
        elementosApilados.alignment = .top
        elementosApilados.spacing = 10
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }
    
    
    
    func distribucionConstraints(){
        addSubview(cuadritoBlanco)
        addSubview(pilaVertical)
        
        let pilaHorizontal0 = pilaHorizontal()
        pilaHorizontal0.addArrangedSubview(imagenBrujula)
        pilaHorizontal0.addArrangedSubview(tituloLabel)
        pilaHorizontal0.alignment = .leading
        pilaHorizontal0.distribution = .fillProportionally
        pilaVertical.addArrangedSubview(pilaHorizontal0)
        
        pilaVertical.addArrangedSubview(botonArriba)
        pilaVertical.addArrangedSubview(botonBocina)
        pilaVertical.addArrangedSubview(botonAbajo)
        
        botonArriba.addTarget(self, action: #selector(tocarBoton(sender:)), for: .touchUpInside)
        
        botonBocina.addTarget(self, action: #selector(sonarAudio(sender:)), for: .touchUpInside)
        
        botonAbajo.addTarget(self, action: #selector(tocarBoton(sender:)), for: .touchUpInside)
    
        
        NSLayoutConstraint.activate([
            cuadritoBlanco.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cuadritoBlanco.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            cuadritoBlanco.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cuadritoBlanco.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            pilaVertical.topAnchor.constraint(equalTo: cuadritoBlanco.topAnchor, constant: 10),
            pilaVertical.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            pilaVertical.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            pilaVertical.bottomAnchor.constraint(equalTo: cuadritoBlanco.bottomAnchor, constant: -10),
            imagenBrujula.topAnchor.constraint(equalTo: cuadritoBlanco.topAnchor, constant: 10),
            imagenBrujula.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            imagenBrujula.widthAnchor.constraint(equalTo: cuadritoBlanco.widthAnchor, multiplier: 0.1),
            imagenBrujula.heightAnchor.constraint(equalTo: imagenBrujula.widthAnchor),
            
            botonArriba.widthAnchor.constraint(equalTo: cuadritoBlanco.widthAnchor, multiplier: 0.8),
            botonArriba.heightAnchor.constraint(equalTo: botonArriba.widthAnchor, multiplier: 0.1379310345),
            
            botonAbajo.widthAnchor.constraint(equalTo: cuadritoBlanco.widthAnchor, multiplier: 0.8),
            botonAbajo.heightAnchor.constraint(equalTo: botonAbajo.widthAnchor, multiplier: 0.1379310345),
            
            tituloLabel.heightAnchor.constraint(equalTo: imagenBrujula.heightAnchor)
            
        ])
        
        
    }
    
    func apagarbotones(){
        botonAbajo.isUserInteractionEnabled = false
        botonArriba.isUserInteractionEnabled = false
        botonBocina.isUserInteractionEnabled = false
    }
    
    func encenderBotones(){
        botonAbajo.isSelected = false
        botonArriba.isSelected = false
        botonBocina.isSelected = false
        botonAbajo.isUserInteractionEnabled = true
        botonArriba.isUserInteractionEnabled = true
        botonBocina.isUserInteractionEnabled = true
    }
    
    
    @objc func sonarAudio(sender: UIButton){
        let sonido = Bundle.main.path(forResource: self.dilema?.audio, ofType: "mp3")
        reproductorAudio = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
        reproductorAudio?.delegate = self
        
        do {
              try AVAudioSession.sharedInstance().setCategory(.playback)
           } catch(let error) {
               print(error.localizedDescription)
           }
        
        if (reproductorAudio?.isPlaying ?? false) {
            reproductorAudio?.stop()
        }
        else {
            reproductorAudio?.play()
        }
        botonBocina.isSelected = true
        self.isHighlighted = true
    }
    
    
    @objc func tocarBoton(sender: UIButton){
        sender.isSelected = true
        apagarbotones()
        var boolean: Bool = false
        if sender.isEqual(botonArriba){
            if dilema?.respuesta == 1{
                print("bien")
                boolean = true
                self.delegate?.sonarPoint(bool: true)
                botonArriba.layer.borderColor = UIColor.systemGreen.cgColor
            }else{
                self.delegate?.sonarPoint(bool: false)
                botonArriba.layer.borderColor = UIColor.systemRed.cgColor
            }
        }
        
        if sender.isEqual(botonAbajo){
            if dilema?.respuesta == 2{
                print("bien")
                boolean = true
                self.delegate?.sonarPoint(bool: true)
                botonAbajo.layer.borderColor = UIColor.systemGreen.cgColor
            }else{
                self.delegate?.sonarPoint(bool: false)
                botonAbajo.layer.borderColor = UIColor.systemRed.cgColor
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            if boolean{
                print("bien")
                self.delegate?.recolectarPuntaje(correcto: true)
            }else{
                self.delegate?.recolectarPuntaje(correcto: false)
            }
            self.botonAbajo.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
            self.botonArriba.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
            self.encenderBotones()
        }
        
    }
}


extension DilemaCell: AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag {
            botonBocina.isSelected = false
        }
    }
}
