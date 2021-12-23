//
//  JuegoCitas.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 11/17/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation

class JuegoCitas: UIViewController{
    
    private var score: Int = 0
    
    var citas = Data.citas.shuffled()
    var timer: Timer?
    private var segundosRestantes = 300
    
    
    let mapa: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "mapa_juego3_1")
        return imageView
    }()
    
    let coleccionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let coleccion = UICollectionView(frame: .zero, collectionViewLayout: layout)
        coleccion.showsHorizontalScrollIndicator = false
        coleccion.showsVerticalScrollIndicator = false
        coleccion.translatesAutoresizingMaskIntoConstraints = false
        coleccion.isPagingEnabled = true
        return coleccion
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioFondo()
        coleccionView.delegate = self
        coleccionView.dataSource = self
        coleccionView.backgroundColor = .clear
        view.backgroundColor = .colorFondoTurboFon
        coleccionView.register(CitaCell.self, forCellWithReuseIdentifier: "cell_cita")
        distribucionConstraints()
        configuracionToolBar()
        coleccionView.isScrollEnabled = false
    
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter(sender:)), userInfo: nil, repeats: true)
        
        let BarButtonItemIzquierdo = menuButton(self,
        action: #selector(salir),
        imageName: "n2_btn_jgo_cerrar")
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo
        
        let BarButtonItemDerecho = menuButton(self,
        action: #selector(mostrarInstrucciones),
        imageName: "icons8-query")
        
        self.navigationItem.rightBarButtonItems = [BarButtonItemDerecho]
        let botonPausa = menuButton(self,
        action: #selector(pausaPlay),
        imageName: "icons8-no_audio")
        self.navigationItem.rightBarButtonItems = [BarButtonItemDerecho,botonPausa]
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo

    }
    
    var tiempoText = ""
    @objc func updateCounter(sender: Timer) {
        print(segundosRestantes)
        if segundosRestantes >= 0 {
            switch segundosRestantes {
            case 0:
                tiempoText = "0:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
                terminarJuego(bool: false)
            case 1..<5:
                tiempoText = "0:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
            case 5..<10:
                tiempoText = "0:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
            case 10..<30:
                tiempo.title = "Tiempo: 0:\(segundosRestantes)"
            case 30..<60:
                tiempoText = "0:\(segundosRestantes)"
                tiempo.title = "Tiempo: 0:\(segundosRestantes)"
            case 60..<70:
                tiempoText = "1:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 1:0\(segundosRestantes - 60)"
            case 60..<70:
                tiempoText = "1:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 1:0\(segundosRestantes - 60)"
            case 70..<90:
                tiempoText = "1:\(segundosRestantes)"
                tiempo.title = "Tiempo: 1:\(segundosRestantes - 60)"
            case 90..<120:
                tiempoText = "1:\(segundosRestantes)"
                tiempo.title = "Tiempo: 1:\(segundosRestantes - 60)"
            case 120..<130:
                tiempoText = "2:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 2:0\(segundosRestantes - 120)"
            case 130..<150:
                tiempoText = "2:\(segundosRestantes)"
                tiempo.title = "Tiempo: 2:\(segundosRestantes - 120)"
            case 150..<180:
                tiempoText = "2:\(segundosRestantes)"
                tiempo.title = "Tiempo: 2:\(segundosRestantes - 120)"
            case 180..<190:
                tiempoText = "3:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 3:0\(segundosRestantes - 180)"
            case 190..<210:
                tiempoText = "3:\(segundosRestantes)"
                tiempo.title = "Tiempo: 3:\(segundosRestantes - 180)"
            case 210..<240:
                tiempoText = "3:\(segundosRestantes)"
                tiempo.title = "Tiempo: 3:\(segundosRestantes - 180)"
            case 240..<250:
                tiempoText = "4:0\(segundosRestantes)"
                tiempo.title = "Tiempo: 4:0\(segundosRestantes - 240)"
            case 250..<280:
                tiempoText = "4:\(segundosRestantes)"
                tiempo.title = "Tiempo: 4:\(segundosRestantes - 240)"
            case 280..<300:
                tiempoText = "4:\(segundosRestantes)"
                tiempo.title = "Tiempo: 4:\(segundosRestantes - 240)"
            case 300:
                tiempoText = "5:00"
                tiempo.title = "Tiempo: 5:00"
            default:
                debugPrint("no time")
            }
            segundosRestantes -= 1
        }
    }
    
    func terminarJuego(bool: Bool){
        timer?.invalidate()
        
        var tituloAlert = ""
        //Están componiendo una puerta en mi casa //Si lo oigo
        if bool{
            tituloAlert = "¡Felicidades, llegaste a la meta!"
            mapa.image = UIImage(named: "cruce_meta_juego3")
        }else{
            tituloAlert = "¡Intentalo de nuevo para llegar más lejos!"
        }
        let alert = UIAlertController(title: tituloAlert, message: "¿Seguir jugando?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: {[weak self] _ in
            self?.timer?.invalidate()
            self?.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self!, selector: #selector(self?.updateCounter(sender:)), userInfo: nil, repeats: true)
            self?.citas = Data.citas.shuffled()
            self?.score = 0
            self?.segundosRestantes = 300
            self?.puntaje.title = "Puntos: 0"
            self?.citas = Data.citas.shuffled()
            self?.coleccionView.reloadData()
            self?.coleccionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
            self?.mapa.image = UIImage(named: "mapa_juego3_1")
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {[weak self] _ in
            guard let viewController = self?.navigationController?.viewControllers else { return }
            self?.navigationController?.popToViewController(viewController[viewController.count - 3], animated: true)
            self?.navigationController?.setToolbarHidden(true, animated: false)
        }))
        
        
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc
    func mostrarInstrucciones(){
        present(InstruccionesVC(imagenInstruccion: "tutorial_juego_citas", imagenBoton: "btn_jugar_n4", juegoLanzar: .turbofon3, modal: true), animated: true)
    }
    
    deinit {
        print("Limpieza citas completa")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
        //self.navigationController?.setToolbarHidden(true, animated: false)
        //timer?.invalidate()
        //timer2?.invalidate()
        timer?.invalidate()
        self.reproductorMusica?.stop()
        
    }
    
    private var reproductorLetra: AVAudioPlayer?
    
    @objc func pausaPlay(){
        if (reproductorMusica?.isPlaying ?? false) {
            reproductorMusica?.pause()
            guard let boton = self.navigationItem.rightBarButtonItems?[1].customView as? UIButton else { return }
            boton.isSelected = true
        }
        else {
            reproductorMusica?.play()
            guard let boton = self.navigationItem.rightBarButtonItems?[1].customView as? UIButton else { return }
            boton.isSelected = false
        }
    }
    
    var reproductorMusica: AVAudioPlayer?
    private var fondoSonido: String = "Juego_de_citas"
    
    func audioFondo(){
        let sonido12 = Bundle.main.path(forResource: fondoSonido, ofType: "mp3")
        reproductorMusica = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido12 ?? "15"))
        reproductorMusica?.delegate = self
        reproductorMusica?.volume = 0.2
        do {
              try AVAudioSession.sharedInstance().setCategory(.playback)
           } catch(let error) {
               print(error.localizedDescription)
           }
        if (reproductorMusica?.isPlaying ?? false) {
            reproductorMusica?.stop()
        }
        else {
            reproductorMusica?.play()
        }
    }

    
    func distribucionConstraints(){
        view.addSubview(mapa)
        view.addSubview(coleccionView)
        
        NSLayoutConstraint.activate([
            coleccionView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.65),
            coleccionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            coleccionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            coleccionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            mapa.topAnchor.constraint(equalTo: view.topAnchor),
            mapa.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapa.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mapa.bottomAnchor.constraint(equalTo: coleccionView.topAnchor),
        ])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
    }
    
    func configuracionToolBar(){
        let items = [puntaje, flexibleSpace,tiempo]
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        self.navigationController?.toolbar.isTranslucent = false
        
        if #available(iOS 15.0, *) {
            let appereance = UIToolbarAppearance()
            appereance.configureWithOpaqueBackground()
            appereance.backgroundColor = .colorNavigationBarADivertirse
            UIToolbar.appearance().tintColor = .colorBarraNavigationBarADivertirse
            navigationController?.toolbar.standardAppearance = appereance
            navigationController?.toolbar.scrollEdgeAppearance = appereance
            navigationController?.toolbar.compactAppearance = appereance
        }
        
        self.navigationController?.toolbar.barTintColor = .colorNavigationBarADivertirse
        self.navigationController?.toolbar.tintColor = .colorBarraNavigationBarADivertirse
    }
    
    private var puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "Puntos: 0",style: .plain, target: nil, action: nil)
    }()
    private var tiempo: UIBarButtonItem = {
        return UIBarButtonItem(title: "Tiempo: 5:00",style: .plain, target: nil, action: nil)
    }()
    private var flexibleSpace: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }()
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        coleccionView.visibleCells.forEach { cell in
            cell.isUserInteractionEnabled = true
        }
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        coleccionView.visibleCells.forEach { cell in
            cell.isUserInteractionEnabled = false
        }
    }
    
}

extension JuegoCitas: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return citas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell_cita", for: indexPath) as! CitaCell
        cell.cita = citas[indexPath.item]
        cell.backgroundColor = .clear
        cell.delegate = self
        return cell
    }
}

extension JuegoCitas: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 10, height: collectionView.frame.height - 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

extension JuegoCitas: juegoCitasDelegate{
    func sonarPoint(bool: Bool) {
        if bool{
            let sonido = Bundle.main.path(forResource: "buena", ofType: "wav")
            reproductorLetra?.volume = 0.1
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.play()
            reproductorLetra?.volume = 1
            reproductorLetra?.delegate = self
        }else{
            let sonido = Bundle.main.path(forResource: "mala", ofType: "wav")
            reproductorLetra?.volume = 0.1
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.volume = 0.3
            reproductorLetra?.play()
            reproductorLetra?.delegate = self
        }
    }
    
    func recolectarPuntaje(correcto: Bool) {
        
        if correcto{
            score += 1
            mapa.image = UIImage(named: "mapa_juego3_\(score + 1)")
            puntaje.title = "Puntos: \(score)"
        }else{
            puntaje.title = "Puntos: \(score)"
        }
        
        //problema del visible item
        guard let indexPath = coleccionView.indexPathsForVisibleItems.first else {
            return
        }
        print("index",indexPath.item + 1)
        if self.score == 18{
            terminarJuego(bool: true)
            coleccionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
            
        }else{
            
            if indexPath.item + 1 == citas.count{
                
                self.citas = Data.citas.shuffled()
                self.coleccionView.reloadData()
                coleccionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
                
            }else{
                coleccionView.scrollToItem(at: IndexPath(item: indexPath.item + 1, section: 0), at: .centeredHorizontally, animated: true)
            }
            
        }
    }
}

extension JuegoCitas: AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag && player.isEqual(reproductorMusica){
            reproductorMusica?.play()
        }
    }
}
