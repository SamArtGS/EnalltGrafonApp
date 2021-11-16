//
//  EncuentraIntrusoViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation


class EncuentraIntrusoViewController: UIViewController, AVAudioPlayerDelegate {
    
    private let fondoSonido: String = "music_Instruso"
    private var reproductorAudio: AVAudioPlayer?
    private var reproductorLetra: AVAudioPlayer?
    private var segundosRestantes = 120
    private var playing:Bool = true
    private var letraSonidoCurso:SonidoActualIntruso?
    private var queueIntrusos:[ContenidoHoja]?
    private var score:Int = 0
    private var booleano: Bool = false

    
    private let labelBoton: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 20)
        label.textColor = .colorLetraRosa
        label.textAlignment = .center
        return label
    }()
    
    private let botonLetra:UIButton = {
        let boton = UIButton(type: .system)
        boton.setBackgroundColor(.white, for: .normal)
        boton.setBackgroundColor(.colorLetras, for: .selected)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.layer.cornerRadius = 20
        boton.layer.borderWidth = 3
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.systemOrange.cgColor
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    private func generarHojas() -> ParejaHoja? {
        if queueIntrusos!.count > 0{
            return ParejaHoja(hojaImagen: Data.hojasImagenes[Int.random(in: 0..<Data.hojasImagenes.count)], contenidoHoja: queueIntrusos?[Int.random(in: 0..<(queueIntrusos?.count ?? 1))] ?? ContenidoHoja(palabra: "", sonido: 0))
        }
        return nil
        
    }
    
    
    private let zonaMuerta: UIView = {
        let vista = UIView()
        vista.backgroundColor = .colorLineaBarraSuperiorPalabras
        vista.translatesAutoresizingMaskIntoConstraints = false
        vista.alpha = 0.5
        vista.isUserInteractionEnabled = false
        return vista
    }()
    
    override func viewDidLoad() {
        self.title = "Encuentra al intruso"
        view.backgroundColor = .white
        
        super.viewDidLoad()
        
        audioFondo()
        
        
        //colocarFondo(imagen: "Back-menu_jgo_intruso")
        
        configuracionToolBar()
        let BarButtonItemDerecho = menuButton(self,
        action: #selector(mostrarInstrucciones),
        imageName: "icons8-query")
        self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
        
        let BarButtonItemIzquierdo = menuButton(self,
        action: #selector(salir),
        imageName: "n2_btn_jgo_cerrar")
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo
        
        let botonPausa = menuButton(self,
        action: #selector(pausaPlay),
        imageName: "icons8-no_audio")
        self.navigationItem.rightBarButtonItems = [BarButtonItemDerecho,botonPausa]
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.updateCounter()
        }
        
        Timer.scheduledTimer(withTimeInterval: 2.5, repeats: true) { [weak self] timer in
                self?.soltarHoja()
        }
        letraSonidoCurso =  Data.sonidosDisponiblesIntrusos[Int.random(in: 0..<Data.sonidosDisponiblesIntrusos.count)]
    }
    
    @objc func pausaPlay(){
        if (reproductorAudio?.isPlaying ?? false) {
            reproductorAudio?.pause()
            booleano = false
            guard let boton = self.navigationItem.rightBarButtonItems?[1].customView as? UIButton else { return }
            boton.isSelected = true
        }
        else {
            reproductorAudio?.play()
            booleano = true
            guard let boton = self.navigationItem.rightBarButtonItems?[1].customView as? UIButton else { return }
            boton.isSelected = false
        }
    }
    
    @objc
    func mostrarInstrucciones(){
        present(InstruccionesVC(imagenInstruccion: "n2_jgo_tutorial_intruso", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .intruso, modal: true), animated: true)
    }
    
    @objc func updateCounter() {
        if segundosRestantes >= 0 {
            switch segundosRestantes {
            case 0:
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
                terminarJuego()
            case 1..<10:
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
            case 10..<60:
                tiempo.title = "Tiempo: 0:\(segundosRestantes)"
            case 60..<70:
                tiempo.title = "Tiempo: 1:0\(segundosRestantes - 60)"
            case 70..<120:
                tiempo.title = "Tiempo: 1:\(segundosRestantes - 60)"
            default:
                debugPrint("no time")
            }
            segundosRestantes -= 1
        }
    }
    
    
    func darPuntaje(acierto: Bool) {
        if segundosRestantes >= 0{
            if acierto{
                score += 1
                puntaje.title = "Puntos: \(score)"
            }else{
                score -= 1
                puntaje.title = "Puntos: \(score)"
            }
        }
    }
    
    
    func terminarJuego(){
        
        let alert = UIAlertController(title: "Puntos: \(score)", message: "¿Seguir jugando con el mismo sonido?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: {[weak self] _ in
            self?.segundosRestantes = 120
            self?.score = 0
            self?.puntaje.title = "Puntos: 0"
            self?.reload()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {[weak self] _ in
            self?.segundosRestantes = 120
            self?.score = 0
            self?.puntaje.title = "Puntos: 0"
            self?.letraSonidoCurso =  Data.sonidosDisponiblesIntrusos[Int.random(in: 0..<Data.sonidosDisponiblesIntrusos.count)]
            self?.reload()
        }))
        

        self.present(alert, animated: true, completion: nil)
    }
    
    func configurarConstraints(){
        view.addSubview(botonLetra)
        view.addSubview(zonaMuerta)
        view.bringSubviewToFront(zonaMuerta)
        botonLetra.addSubview(labelBoton)
        labelBoton.text = letraSonidoCurso?.letra
        
        
        NSLayoutConstraint.activate([
            botonLetra.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            botonLetra.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            botonLetra.widthAnchor.constraint(equalToConstant: 90),
            botonLetra.heightAnchor.constraint(equalToConstant: 50),
            zonaMuerta.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            zonaMuerta.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            zonaMuerta.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            zonaMuerta.heightAnchor.constraint(equalToConstant: 100),
            
            labelBoton.topAnchor.constraint(equalTo: botonLetra.topAnchor),
            labelBoton.leadingAnchor.constraint(equalTo: botonLetra.leadingAnchor),
            labelBoton.trailingAnchor.constraint(equalTo: botonLetra.trailingAnchor),
            labelBoton.bottomAnchor.constraint(equalTo: botonLetra.bottomAnchor),
        ])
    }
    
    func audioFondo(){
        let sonido = Bundle.main.path(forResource: fondoSonido, ofType: "mp3")
        reproductorAudio = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
        reproductorAudio?.delegate = self
        reproductorAudio?.volume = 0.2
        if (reproductorAudio?.isPlaying ?? false) {
            reproductorAudio?.stop()
        }
        else {
            reproductorAudio?.play()
        }
    }
    
    @objc func sonarAudio(_ tipo: Int = 0){
        
        switch tipo {
        case 0:
            let sonido = Bundle.main.path(forResource: letraSonidoCurso?.sonido, ofType: "mp3")
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.play()
            reproductorLetra?.delegate = self
        case 1:
            let sonido = Bundle.main.path(forResource: "buena", ofType: "wav")
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.play()
            reproductorLetra?.delegate = self
        case 2:
            let sonido = Bundle.main.path(forResource: "fallido", ofType: "wav")
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.play()
            reproductorLetra?.delegate = self
        case 3:
            let sonido = Bundle.main.path(forResource: "finalizado", ofType: "mp3")
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.play()
            reproductorLetra?.delegate = self
        default:
            let sonido = Bundle.main.path(forResource: letraSonidoCurso?.sonido, ofType: "mp3")
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.play()
            reproductorLetra?.delegate = self
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
        botonLetra.addTarget(self, action: #selector(sonarAudio), for: .touchUpInside)
        
        colocarFondo(imagen: "Back-menu_jgo_intruso")
        configurarConstraints()
        queueIntrusos =  Data.intrusos.filter { contenido in
            contenido.sonido == letraSonidoCurso?.tipo || contenido.sonido * -1 == letraSonidoCurso?.tipo
        }
        terminar = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
        self.reproductorAudio?.stop()
        self.reproductorLetra?.stop()
        view.layer.removeAllAnimations()
        view.subviews.forEach { view in
            view.layer.removeAllAnimations()
        }
    }
    
    
    
    func soltarHoja() {
        let hoja = generarHojas()
        guard let hoja = hoja else { return }
        let imagenView = ImagenHojaCayendo(imagenHoja: hoja.hojaImagen, contenidoHoja: hoja.contenidoHoja)
        imagenView.isUserInteractionEnabled = true
        imagenView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(presionarHoja(_:))))
    
        imagenView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imagenView)
        //botonLetra.superview?.bringSubviewToFront(botonLetra)
        view.bringSubviewToFront(botonLetra)
        NSLayoutConstraint.activate([
            
            imagenView.widthAnchor.constraint(equalToConstant: 120),
            imagenView.heightAnchor.constraint(equalToConstant: 80),
            
            imagenView.topAnchor.constraint(equalTo: view.topAnchor, constant: -70),
            imagenView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: CGFloat(Int.random(in: Int(-view.frame.maxX/3)...Int(view.frame.maxX/3))))
            
        ])
        sigSag(viewcita: imagenView)
    }
    private var terminar: Bool = false
    
    func sigSag(viewcita:ImagenHojaCayendo, posX: CGFloat = 0, posY: CGFloat = 0, delayo: Int = 0){
        UIView.animate(withDuration: 1,
                       delay: TimeInterval(delayo),
                       options: [
                        .allowUserInteraction,
                        .preferredFramesPerSecond60,
                        .curveLinear
                       ], animations: {
                        viewcita.transform = CGAffineTransform(translationX:  posX, y:  posY).rotated(by: posX/150)
                }, completion: { [weak self] bool in
                    
                    guard let viewtita = self else { return }
                    
                    if posY < viewtita.view.frame.height-100{
                        self?.sigSag(viewcita: viewcita, posX: -posX + 35, posY: posY + 50)
                    }else{
                        if posY < viewtita.view.frame.height-50{
                            viewcita.isUserInteractionEnabled = false
                            self?.sigSag(viewcita: viewcita, posX: -posX + 35, posY: posY + 50)
                            if viewcita.image == viewcita.imagenHoja?.imagenNormal &&  viewcita.contenidoHoja?.sonido == self?.letraSonidoCurso?.tipo {
                                
                                    viewcita.cambiarAMal()
                            
                                    viewcita.isUserInteractionEnabled = false
                                    self?.darPuntaje(acierto: false)
                                    self?.sonarAudio(2)
                                }
                        }else{
                            viewcita.isUserInteractionEnabled = false
                            //MARK: TODO - Arreglar eliminar hojas al caer
                            if posY >= viewtita.view.frame.height + 50 {
                                print("hoja eliminada")

                               viewcita.removeFromSuperview()
                            }else{
                                self?.sigSag(viewcita: viewcita, posX: -posX + 35, posY: posY + 50)
                            }
                        }
                        
                        
                    }
                    
                }
        )
    }
    
    
    @objc func presionarHoja(_ sender: UITapGestureRecognizer){
        guard let imagenHoja = sender.view as? ImagenHojaCayendo else { return }
        guard let imagenCurso = imagenHoja.imagenHoja?.imagenNormal else { return }
        
        if segundosRestantes > 0{
        
            if (!imagenHoja.isEqual(imagenCurso)){
                if imagenHoja.contenidoHoja?.sonido == letraSonidoCurso?.tipo {
                    imagenHoja.cambiarABien()
                    darPuntaje(acierto: true)
                    imagenHoja.isUserInteractionEnabled = false
                    sonarAudio(1)
                    }else{
                    imagenHoja.cambiarAMal()
                    darPuntaje(acierto: false)
                    imagenHoja.isUserInteractionEnabled = false
                    sonarAudio(2)
                }
            }
        }
    }
    
    private var puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "Puntos: 0",style: .plain, target: nil, action: nil)
    }()
    
    private var tiempo: UIBarButtonItem = {
        return UIBarButtonItem(title: "Tiempo: 2:00",style: .plain, target: nil, action: nil)
    }()
    
    private var flexibleSpace: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }()
    
    private var boca: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage(named: "n2_btn_jgo_mas-sonidos"), style: .plain, target: self, action: #selector(preguntarCambioLetra))
    }()
    
     func reload(){
        
        
        view.subviews.forEach { view in
            
            if view.isKind(of: ImagenHojaCayendo.self){
                print("Removiendo hojas")
                view.layer.removeAllAnimations()
                view.removeFromSuperview()
                terminar = true
            }else{
                view.removeFromSuperview()
                view.layer.removeAllAnimations()
            }
        }
        viewWillAppear(false)
        
    }
    
    @objc func preguntarCambioLetra(){
        let alert = UIAlertController(title: "¿Jugar con otro sonido?", message: nil, preferredStyle: .alert)
        let accion1 = UIAlertAction(title: "Sí", style: .default, handler: { [weak self] han in
            self?.letraSonidoCurso =  Data.sonidosDisponiblesIntrusos[Int.random(in: 0..<Data.sonidosDisponiblesIntrusos.count)]
            self?.reload()
        })
        alert.addAction(accion1)
        let accion2 = UIAlertAction(title: "No", style: .default)
        alert.addAction(accion2)
        //alert.view.tintColor = .orange
        //alert.setValue(NSAttributedString(string: "¿Jugar con otro sonido?", attributes: [NSAttributedString.Key.font : UIFont.Roboto(.bold, size: 18),NSAttributedString.Key.foregroundColor : UIColor.orange]), forKey: "attributedTitle")
        //alert.view.subviews.last?.subviews.last?.backgroundColor = .orange
        
        self.present(alert, animated: true)
    }

}

extension EncuentraIntrusoViewController{
    
    
    
    func configuracionToolBar(){
        let items = [puntaje,flexibleSpace,tiempo,flexibleSpace,boca]
        boca.target = self
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        self.navigationController?.toolbar.isTranslucent = false
        self.navigationController?.toolbar.barTintColor = .colorTabBarPalabrasEnBoca
        self.navigationController?.toolbar.tintColor = .white
    }
    
    @objc
    func MostrarBanner(){
        
    }
    

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag && player.isEqual(reproductorAudio){
                reproductorAudio?.play()
        }
    }
    
}
