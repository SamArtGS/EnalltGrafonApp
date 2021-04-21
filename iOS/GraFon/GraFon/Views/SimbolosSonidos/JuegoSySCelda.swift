//
//  JuegoSySCelda.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-14.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation


class JuegoSySCelda: UICollectionViewCell, AVAudioPlayerDelegate{
    
    private var sonido: String?
    private var correcto: Bool?
    
    private var reproductorAudio: AVAudioPlayer = AVAudioPlayer()
    
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
    
    @objc func sonarAudio(){
        let sonido = Bundle.main.path(forResource: self.sonido, ofType: "mp3")
        do {
            reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorAudio.play()
        }catch{
            print("Error al reproducir el audio: \(error.localizedDescription)")
        }
    }
    
    func configurarConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(pilaElementos)
        pilaElementos.addArrangedSubview(botonSonido)
        pilaElementos.addArrangedSubview(imagenFonema)
        pilaElementos.addArrangedSubview(pilaPajaros)
        pilaPajaros.addArrangedSubview(imagenPajaroMal)
        pilaPajaros.addArrangedSubview(imagenPajaroBien)
        
        NSLayoutConstraint.activate([
            pilaElementos.topAnchor.constraint(equalTo: topAnchor, constant: 55),
            pilaElementos.leadingAnchor.constraint(equalTo: leadingAnchor),
            pilaElementos.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilaElementos.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25)
            
        ])
    }
    
    func arrastre(){
        let dragInteraction = UIDragInteraction(delegate: self)
        let dropIteration1 = UIDropInteraction(delegate: self)
        let dropIteration2 = UIDropInteraction(delegate: self)
        dropIteration1.allowsSimultaneousDropSessions = true
        dropIteration2.allowsSimultaneousDropSessions = true
        dragInteraction.isEnabled = true
        imagenFonema.addInteraction(dragInteraction)
        imagenPajaroMal.addInteraction(dropIteration1)
        imagenPajaroBien.addInteraction(dropIteration2)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        botonSonido.addTarget(self, action: #selector(sonarAudio), for: .touchUpInside)
        configurarConstraints()
        arrastre()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension JuegoSySCelda: UIDragInteractionDelegate {
    
    
    

    func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem] {
        guard let image = imagenFonema.image else { return [] }
        let item = UIDragItem(itemProvider: NSItemProvider(object: image))
        item.localObject = image
        return [item]
    }
}

extension JuegoSySCelda: UIDropInteractionDelegate {

    func dropInteraction(_ interaction: UIDropInteraction, canHandle session: UIDropSession) -> Bool {
        return session.canLoadObjects(ofClass: UIImage.self) && session.items.count == 1
    }

    func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal {
        return UIDropProposal(operation: .copy)
    }
    
    func dropInteraction(_ interaction: UIDropInteraction, sessionDidEnter session: UIDropSession) {
        guard let vista = interaction.view else{
            return
        }
        if vista.isEqual(self.imagenPajaroBien){
            self.imagenPajaroBien.image = UIImage(named: "n1_jgo_SiCorresponde_sel_mdpi")
        }
        if vista.isEqual(self.imagenPajaroMal){
            self.imagenPajaroMal.image = UIImage(named: "n1_jgo_NoCorresponde_sel_mdpi")
        }
    }
    func dropInteraction(_ interaction: UIDropInteraction, sessionDidExit session: UIDropSession) {
        guard let vista = interaction.view else{
            return
        }
        if vista.isEqual(self.imagenPajaroBien){
            self.imagenPajaroBien.image = UIImage(named: "n1_jgo_SiCorresponde_mdpi")
        }
        if vista.isEqual(self.imagenPajaroMal){
            self.imagenPajaroMal.image = UIImage(named: "n1_jgo_NoCorresponde_mdpi")
        }
    }

    func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession) {
        session.loadObjects(ofClass: UIImage.self) { imageItems in
            guard let vista = interaction.view else{
                return
            }
            if vista.isEqual(self.imagenPajaroBien){
                if self.correcto ?? false{
                    self.imagenPajaroBien.image = UIImage(named: "n1_jgo_acierto_mdpi")
                }else{
                    self.imagenPajaroBien.image = UIImage(named: "n1_jgo_error_mdpi")
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                    self.imagenPajaroBien.image = UIImage(named: "n1_jgo_SiCorresponde_mdpi")
                })
            }
            if vista.isEqual(self.imagenPajaroMal){
                if self.correcto ?? false{
                    self.imagenPajaroMal.image = UIImage(named: "n1_jgo_error_mdpi")
                }else{
                    self.imagenPajaroMal.image = UIImage(named: "n1_jgo_acierto_mdpi")
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                    self.imagenPajaroMal.image = UIImage(named: "n1_jgo_NoCorresponde_mdpi")
                })
            }
        }
    }
}
