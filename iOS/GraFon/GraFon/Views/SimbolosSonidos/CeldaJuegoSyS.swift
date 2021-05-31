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
    
    weak var delegate: juegoSimbolosySonidosDelegate?
    
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
    
     let imagenFonema: UIImageView = {
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
        imageView.backgroundColor = .clear
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
        contentMode = .scaleAspectFit
        addSubview(pilaElementos)
        pilaElementos.addArrangedSubview(botonSonido)
        pilaElementos.addArrangedSubview(imagenFonema)
        pilaElementos.addArrangedSubview(pilaPajaros)
        pilaPajaros.addArrangedSubview(imagenPajaroMal)
        pilaPajaros.addArrangedSubview(imagenPajaroBien)
        
        NSLayoutConstraint.activate([
            pilaElementos.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            pilaElementos.leadingAnchor.constraint(equalTo: leadingAnchor),
            pilaElementos.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilaElementos.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -35)
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
    
    deinit {
        print("Se reclama Celda de juego de arrastre")
    }
}

extension JuegoSySCelda: UIDragInteractionDelegate {

    func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem] {
        guard let image = imagenFonema.image else { return [] }
        let item = UIDragItem(itemProvider: NSItemProvider(object: image))
        item.localObject = image
        sonarAudio()
        return [item]
    }
    
    func dragInteraction(_ interaction: UIDragInteraction, previewForLifting item: UIDragItem, session: UIDragSession) -> UITargetedDragPreview? {
        guard let image = item.localObject as? UIImage else { return nil }

        // Scale the preview image view frame to the image's size.
        let frame: CGRect
        if image.size.width > image.size.height {
            let multiplier = imagenFonema.frame.width / image.size.width
            frame = CGRect(x: 0, y: 0, width: imagenFonema.frame.width, height: image.size.height * multiplier)
        } else {
            let multiplier = imagenFonema.frame.height / image.size.height
            frame = CGRect(x: 0, y: 0, width: image.size.width * multiplier, height: imagenFonema.frame.height)
        }

        let previewImageView = UIImageView(image: image)
        previewImageView.contentMode = .scaleAspectFit
        previewImageView.frame = frame
        previewImageView.backgroundColor = .clear
        let center = CGPoint(x: imagenFonema.bounds.midX, y: imagenFonema.bounds.midY)
        let target = UIDragPreviewTarget(container: imagenFonema, center: center)
        
        let previewParameters = UIDragPreviewParameters()
        previewParameters.backgroundColor = .clear
        
        return UITargetedDragPreview(view: previewImageView, parameters: previewParameters, target: target)
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
    func finalizado(){
        imagenFonema.isUserInteractionEnabled = false
    }

    func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession) {
        session.loadObjects(ofClass: UIImage.self) { imageItems in
            guard let vista = interaction.view else{
                return
            }
            if vista.isEqual(self.imagenPajaroBien){
                if self.correcto ?? false{
                    self.imagenPajaroBien.image = UIImage(named: "n1_jgo_acierto_mdpi")
                    let bien = Bundle.main.path(forResource: "positive", ofType: "mp3")
                    do {
                        self.reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: bien ?? "a_s1_1e"))
                        self.reproductorAudio.play()
                    }catch{
                        print("Error al reproducir el audio")
                    }
                    
                    
                    self.delegate?.recolectarPuntaje()
                }else{
                    self.imagenPajaroBien.image = UIImage(named: "n1_jgo_error_mdpi")
                    let mal = Bundle.main.path(forResource: "negative", ofType: "mp3")
                    do {
                        self.reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: mal ?? "a_s1_1e"))
                        self.reproductorAudio.play()
                    }catch{
                        print("Error al reproducir el audio")
                    }
                }
                self.imagenFonema.isUserInteractionEnabled = false
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                    self.imagenPajaroBien.image = UIImage(named: "n1_jgo_SiCorresponde_mdpi")
                    self.imagenFonema.isUserInteractionEnabled = true
                    self.delegate?.siguiente()
                })
            }
            if vista.isEqual(self.imagenPajaroMal){
                if self.correcto ?? false{
                    self.imagenPajaroMal.image = UIImage(named: "n1_jgo_error_mdpi")
                    let mal = Bundle.main.path(forResource: "negative", ofType: "mp3")
                    do {
                        self.reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: mal ?? "a_s1_1e"))
                        self.reproductorAudio.play()
                    }catch{
                        print("Error al reproducir el audio")
                    }
                }else{
                    self.imagenPajaroMal.image = UIImage(named: "n1_jgo_acierto_mdpi")
                    
                    let bien = Bundle.main.path(forResource: "positive", ofType: "mp3")
                    do {
                        self.reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: bien ?? "a_s1_1e"))
                        self.reproductorAudio.play()
                    }catch{
                        print("Error al reproducir el audio")
                    }
                    
                    self.delegate?.recolectarPuntaje()
                }
                self.imagenFonema.isUserInteractionEnabled = false
                DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
                    self.imagenPajaroMal.image = UIImage(named: "n1_jgo_NoCorresponde_mdpi")
                    self.imagenFonema.isUserInteractionEnabled = true
                    self.delegate?.siguiente()
                })
            }
        }
    }
}
