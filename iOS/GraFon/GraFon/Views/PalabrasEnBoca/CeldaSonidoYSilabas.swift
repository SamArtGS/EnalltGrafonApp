//
//  CeldaSonidoYSilabas.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-12.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation

class CeldaSonidoYSilabas: UICollectionViewCell {
    
    private var sonido: String?
    private var reproductorAudio: AVAudioPlayer = AVAudioPlayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        botonSonido.addTarget(self, action: #selector(sonarAudio), for: .touchUpInside)
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se reclamado la sílaba de la primera posición")
    }
    
    var tarjetaSeleccionada: Tarjeta? {
        didSet {
            guard let destapado = tarjetaSeleccionada else { return }
            var contadorPalabras = 0
            sonido = destapado.audio
            for cuenta in 0...destapado.silabas.count - 1{
                let bloqueSilaba = previstaSilaba(destapado.silabas[cuenta], UIColor.fondosSilabaPalabrasEnBoca[cuenta])
                pilaViews.addArrangedSubview(bloqueSilaba)
                contadorPalabras += destapado.silabas[cuenta].palabras.count
                NSLayoutConstraint.activate([
                    bloqueSilaba.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 15),
                    bloqueSilaba.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -15)
                ])
            }
            pilaViews.heightAnchor.constraint(equalToConstant: CGFloat(contadorPalabras*30)).isActive = true
        }
        
        willSet{
            pilaViews.subviews.forEach { (view) in
                view.removeFromSuperview()
            }
        }
    }
    
    private let botonSonido: UIButton = {
        let boton = UIButton(type: .custom)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setImage(UIImage(named: "jgo_playing_n2"), for: .normal)
        boton.setImage(UIImage(named: "jgo_play_n2"), for: .selected)
        boton.contentMode = .scaleAspectFit
        boton.isUserInteractionEnabled = true
        return boton
    }()
    
    private let imagenFondo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "tarjeta_largo-04_n2")
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let pilaViews: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let previstaSilaba: (Silaba,UIColor) -> (UIStackView) = { silaba,color in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabelPersonalizado()
        let labelDer:UILabel = UILabelPersonalizado()
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBocina)
        labelIzq.textColor = .colorLetras
        labelIzq.translatesAutoresizingMaskIntoConstraints = false
        labelIzq.textAlignment = .right
        labelIzq.contentMode = .scaleAspectFill
        
        labelDer.font = .Roboto(.regular, size: Tamanio.letrasRosaBocina)
        labelDer.translatesAutoresizingMaskIntoConstraints = false
        labelDer.textAlignment = .left
        labelDer.textColor = .colorLetraRosa
        labelDer.contentMode = .scaleAspectFill
        
        vista.translatesAutoresizingMaskIntoConstraints = false
        vista.axis = .horizontal
        vista.distribution = .fillEqually
        vista.alignment = .center
        vista.spacing = 10
        
        vista.colorFondo(color: color)
        
        vista.addArrangedSubview(labelIzq)
        vista.addArrangedSubview(labelDer)
        
        var textoIzquierdo:String = ""
        var textoDerecho:String = ""
        
        for palabra in silaba.palabras{
            textoIzquierdo.append(palabra.palabra)
            textoDerecho.append(palabra.enGriego)
            textoIzquierdo.append("\n")
            textoDerecho.append("\n")
            labelIzq.numberOfLines+=1
            labelDer.numberOfLines+=1
        }
        textoIzquierdo.removeLast()
        textoDerecho.removeLast()
        
        
        labelIzq.text = textoIzquierdo
        labelDer.text = textoDerecho
        
        return vista
    }
    
    
    @objc func sonarAudio(){
        let sonido = Bundle.main.path(forResource: self.sonido, ofType: "mp3")
        do {
            reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorAudio.delegate = self
            reproductorAudio.play()
            botonSonido.isSelected = true
            self.isHighlighted = true
        }catch{
            print("Error al reproducir el audio: \(error.localizedDescription)")
        }
    }
    

    func configurarConstraints(){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(imagenFondo)
        imagenFondo.addSubview(botonSonido)
        imagenFondo.addSubview(pilaViews)
        
        NSLayoutConstraint.activate([
            imagenFondo.topAnchor.constraint(equalTo:  safeAreaLayoutGuide.topAnchor, constant: 10),
            imagenFondo.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenFondo.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagenFondo.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            botonSonido.topAnchor.constraint(equalTo: imagenFondo.topAnchor),
            botonSonido.centerXAnchor.constraint(equalTo: imagenFondo.centerXAnchor),
            botonSonido.heightAnchor.constraint(equalToConstant: 100),
            botonSonido.widthAnchor.constraint(equalToConstant: 100),
            
            pilaViews.topAnchor.constraint(equalTo: botonSonido.bottomAnchor, constant: 30),
            pilaViews.leadingAnchor.constraint(equalTo: imagenFondo.leadingAnchor),
            pilaViews.trailingAnchor.constraint(equalTo: imagenFondo.trailingAnchor),
        ])
    }
}

extension CeldaSonidoYSilabas: AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag {
            botonSonido.isSelected = false
        }
    }
}
