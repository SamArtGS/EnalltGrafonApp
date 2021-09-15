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
    var reproductorAudio: AVAudioPlayer?
    
    var silabasVolteadas: [[Palabra]] = [[
        Palabra(palabra: "*le*s l*ivres", enGriego:"lᴇ.livʀ"),
        Palabra(palabra: "le*s é*tudiantes", enGriego: "lᴇ.zᴇ.ty.djɑ̃t"),
        Palabra(palabra: "quel*s f*ilms", enGriego: "kᴇl.film"),
        Palabra(palabra: "quel*s a*cteurs", enGriego:"kᴇl.zak.t&Œ&ʀ"),
        Palabra(palabra: "grand*s p*rojets", enGriego: "gʀɑ̃.pʀo.ʒᴇ"),
        Palabra(palabra: "grand*s a*rbres", enGriego: "gʀɑ̃.zaʀbʀ"),
    ],
    [
        Palabra(palabra: "*un d*oute", enGriego: "ɛ̃.dut"),
        Palabra(palabra: "*un e*nfant", enGriego: "ɛ̃.nɑ̃.fɑ̃"),
        Palabra(palabra: "*aucun r*ésultat", enGriego: "o.kɛ̃.ʀᴇ.zyl.ta"),
        Palabra(palabra: "*aucun e*ffort", enGriego: "o.kɛ̃.nᴇ.foʀ"),
    ],
    [
        Palabra(palabra: "*en F*rance", enGriego: "ɑ̃.fʀɑ̃s"),
        Palabra(palabra: "*en A*rgentine", enGriego: "ɑ̃.naʀ.ʒɑ̃.tin"),
        Palabra(palabra: "*en p*lastique", enGriego: "ɑ̃.plas.tik"),
        Palabra(palabra: "*en o*r", enGriego: "ɑ̃.noʀ"),
        Palabra(palabra: "*en t*rois fois", enGriego: "ɑ̃.tʀwa.fwa"),
        Palabra(palabra: "*en u*ne fois", enGriego: "ɑ̃.nyn.fwa"),
    ],
    [
        Palabra(palabra: "elle*s v*isitent", enGriego: "ᴇl.vi.zit"),
        Palabra(palabra: "elle*s a*iment", enGriego: "ᴇl.zᴇm"),
        Palabra(palabra: "nou*s p*arlons", enGriego: "nu.paʀ.lõ"),
        Palabra(palabra: "nou*s h*abitons", enGriego: "nu.za.bi.tõ"),
        Palabra(palabra: "je le*s t*rouve", enGriego: "ʒ&Œ&.lᴇ.tʀuv"),
        Palabra(palabra: "je le*s a*ime", enGriego: "ʒ&Œ&.lᴇ.zᴇm"),
    ],
    [
        Palabra(palabra: "ºelleºªs tªºe proposentº", enGriego: "ᴇl.t&Œ&.pʀo.poz"),
        Palabra(palabra: "elle*s y* pensent", enGriego: "ᴇl.zi.pɑ̃s"),
        Palabra(palabra: "vou*s l*ui parlez", enGriego: "vu.lɥi.paʀ.lᴇ"),
        Palabra(palabra: "vou*s en* voulez ", enGriego: "vu.zɑ̃.vu.lᴇ")
    ],
    [
        Palabra(palabra: "va*s-y*", enGriego: "va.zi"),
        Palabra(palabra: "allon*s-y*", enGriego: "a.lõ.zi"),
        Palabra(palabra: "prene*z-en*", enGriego: "pʀ&Œ&.nᴇ.zɑ̃")
    ],
    [
        Palabra(palabra: "répon*d-il*?", enGriego: "ʀᴇ.põ.til"),
        Palabra(palabra: "pleu*t-il*?", enGriego: "pl&Œ&.til"),
        Palabra(palabra: "ºsonºªt-ilsª ºd’accord?º", enGriego: "sõ.til.da.koʀ"),
        Palabra(palabra: "par*t-elle*?", enGriego: "paʀ.tᴇl"),
        Palabra(palabra: "mangen*t-elles*?", enGriego: "mɑ̃ʒ.tᴇl"),
        Palabra(palabra: "atten*d-on*?", enGriego: "a.tɑ̃.tõ")
    ],
    [
        Palabra(palabra: "*on t*raverse", enGriego: "õ.tʀa.vᴇʀs"),
        Palabra(palabra: "*on é*coute", enGriego: "õ.nᴇ.kut"),
        Palabra(palabra: "*on p*ense", enGriego: "õ.pɑ̃s"),
        Palabra(palabra: "*on h*ésite", enGriego: "õ.nᴇ.zit")
    ],
    [
        Palabra(palabra: "*on y* va", enGriego: "õ.ni.va"),
        Palabra(palabra: "*on en* parle", enGriego: "õ.nɑ̃.paʀl")
    ],
    [
        Palabra(palabra: "tu *en m*anges", enGriego: "ty.ɑ̃.mɑ̃ʒ"),
        Palabra(palabra: "tu *en a*chètes", enGriego: "ty.ɑ̃.na.ʃᴇt"),
        Palabra(palabra: "*en p*artant", enGriego: "ɑ̃.paʀ.tɑ̃"),
        Palabra(palabra: "*en h*ésitant", enGriego: "ɑ̃.nᴇ.zi.tɑ̃"),
    ],
    [
        Palabra(palabra: "tu *en m*anges", enGriego: "ty.ɑ̃.mɑ̃ʒ"),
        Palabra(palabra: "tu *en a*chètes", enGriego: "ty.ɑ̃.na.ʃᴇt"),
        Palabra(palabra: "*en p*artant", enGriego: "ɑ̃.paʀ.tɑ̃"),
        Palabra(palabra: "*en h*ésitant", enGriego: "ɑ̃.nᴇ.zi.tɑ̃"),
    ]
    ]
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        botonSonido.addTarget(self, action: #selector(sonarAudio), for: .touchUpInside)
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        reproductorAudio?.stop()
        print("Se reclamado la sílaba de la primera posición")
    }
    
    var tarjetaSeleccionada: Tarjeta? {
        didSet {
            guard let destapado = tarjetaSeleccionada else { return }
            var contadorPalabras = 0
            sonido = destapado.audio
            botonSonido.setImage(UIImage(named: "jgo_playing_n2"), for: .normal)
            botonSonido.setImage(UIImage(named: "jgo_play_n2"), for: .selected)
            
            for cuenta in 0...destapado.silabas.count - 1{
                let bloqueSilaba = previstaSilaba(destapado.silabas[cuenta], UIColor.fondosSilabaPalabrasEnBoca[cuenta], .colorLetras)
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
    
    var mezclado: Bool = false
    var cualEsVoletada: Int? {
        didSet{
            guard cualEsVoletada != nil else {
                return
            }
            mezclado = true
        }
    }
    
    var tarjetaSeleccionadaGrupos: Tarjeta? {
        didSet {
            guard let destapado = tarjetaSeleccionadaGrupos else { return }
            
            
            if mezclado{
                
                var contadorPalabras = 0
                sonido = destapado.audio
                botonSonido.setImage(UIImage(named: "btn_audio-playing_n3"), for: .normal)
                botonSonido.setImage(UIImage(named: "btn_audio-play_n3"), for: .selected)
                
                for cuenta in 0..<silabasVolteadas[cualEsVoletada ?? 0].count{
                    let bloqueSilaba = previstaPalabraMezclada(silabasVolteadas[cualEsVoletada ?? 0][cuenta], UIColor.parejaVerdes[cuenta%2], .colorLetraVerde)
                    pilaViews.addArrangedSubview(bloqueSilaba)
                    contadorPalabras += 1
                    NSLayoutConstraint.activate([
                        bloqueSilaba.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 15),
                        bloqueSilaba.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -15)
                    ])
                }
                
                pilaViews.heightAnchor.constraint(equalToConstant: CGFloat(contadorPalabras*30)).isActive = true
                
            }else{
                
                var contadorPalabras = 0
                sonido = destapado.audio
                botonSonido.setImage(UIImage(named: "btn_audio-playing_n3"), for: .normal)
                botonSonido.setImage(UIImage(named: "btn_audio-play_n3"), for: .selected)
                
                for cuenta in 0...destapado.silabas.count - 1{
                    
                    let bloqueSilaba = previstaSilaba(destapado.silabas[cuenta], UIColor.fondosSilabaGrupoPalabras[cuenta], .colorLetraVerde)
                    pilaViews.addArrangedSubview(bloqueSilaba)
                    contadorPalabras += destapado.silabas[cuenta].palabras.count
                    NSLayoutConstraint.activate([
                        bloqueSilaba.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 15),
                        bloqueSilaba.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -15)
                    ])
                    
                }
                pilaViews.heightAnchor.constraint(equalToConstant: CGFloat(contadorPalabras*30)).isActive = true
                
            }
            
            
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
    
    
    
    private let previstaSilaba: (Silaba,UIColor,UIColor) -> (UIStackView) = { silaba,color,colorLetra in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabelPersonalizado()
        let labelDer:UILabelPersonalizado = UILabelPersonalizado()
        labelDer.banderin = true
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBocina)
        labelIzq.textColor = colorLetra
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
    
    private let previstaPalabraMezclada: (Palabra,UIColor,UIColor) -> (UIStackView) = { palabra,color,colorLetra in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabelPersonalizado()
        let labelDer:UILabelPersonalizado = UILabelPersonalizado()
        labelDer.banderin = true
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBocina)
        labelIzq.textColor = colorLetra
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
        
        labelIzq.text = palabra.palabra
        labelDer.text = palabra.enGriego
        return vista
    }
    
    
    @objc func sonarAudio(){
    
        let sonido = Bundle.main.path(forResource: self.sonido, ofType: "mp3")
        reproductorAudio = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
        reproductorAudio?.delegate = self
        if (reproductorAudio?.isPlaying ?? false) {
            reproductorAudio?.stop()
        }
        else {
            reproductorAudio?.play()
        }
        botonSonido.isSelected = true
        self.isHighlighted = true
        
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
