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
    
    @objc func updateCounter(sender: Timer) {
        print(segundosRestantes)
        if segundosRestantes >= 0 {
            switch segundosRestantes {
            case 0:
                mapa.image = UIImage(named: "mapa_juego3_18")
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
                terminarJuego()
            case 1..<5:
                mapa.image = UIImage(named: "mapa_juego3_17")
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
            case 5..<10:
                mapa.image = UIImage(named: "mapa_juego3_16")
                tiempo.title = "Tiempo: 0:0\(segundosRestantes)"
            case 10..<30:
                mapa.image = UIImage(named: "mapa_juego3_15")
                tiempo.title = "Tiempo: 0:\(segundosRestantes)"
            case 30..<60:
                mapa.image = UIImage(named: "mapa_juego3_14")
                tiempo.title = "Tiempo: 0:\(segundosRestantes)"
            case 60..<70:
                mapa.image = UIImage(named: "mapa_juego3_13")
                tiempo.title = "Tiempo: 1:0\(segundosRestantes - 60)"
            case 60..<70:
                mapa.image = UIImage(named: "mapa_juego3_12")
                tiempo.title = "Tiempo: 1:0\(segundosRestantes - 60)"
            case 70..<90:
                mapa.image = UIImage(named: "mapa_juego3_11")
                tiempo.title = "Tiempo: 1:\(segundosRestantes - 60)"
            case 90..<120:
                mapa.image = UIImage(named: "mapa_juego3_10")
                tiempo.title = "Tiempo: 1:\(segundosRestantes - 60)"
            case 120..<130:
                mapa.image = UIImage(named: "mapa_juego3_9")
                tiempo.title = "Tiempo: 2:0\(segundosRestantes - 120)"
            case 130..<150:
                mapa.image = UIImage(named: "mapa_juego3_8")
                tiempo.title = "Tiempo: 2:\(segundosRestantes - 120)"
            case 150..<180:
                mapa.image = UIImage(named: "mapa_juego3_7")
                tiempo.title = "Tiempo: 2:\(segundosRestantes - 120)"
            case 180..<190:
                mapa.image = UIImage(named: "mapa_juego3_6")
                tiempo.title = "Tiempo: 3:0\(segundosRestantes - 180)"
            case 190..<210:
                mapa.image = UIImage(named: "mapa_juego3_5")
                tiempo.title = "Tiempo: 3:\(segundosRestantes - 180)"
            case 210..<240:
                mapa.image = UIImage(named: "mapa_juego3_4")
                tiempo.title = "Tiempo: 3:\(segundosRestantes - 180)"
            case 240..<250:
                mapa.image = UIImage(named: "mapa_juego3_3")
                tiempo.title = "Tiempo: 4:0\(segundosRestantes - 240)"
            case 250..<280:
                mapa.image = UIImage(named: "mapa_juego3_2")
                tiempo.title = "Tiempo: 4:\(segundosRestantes - 240)"
            case 280..<300:
                mapa.image = UIImage(named: "mapa_juego3_1")
                tiempo.title = "Tiempo: 4:\(segundosRestantes - 240)"
            case 300:
                mapa.image = UIImage(named: "mapa_juego3_1")
                tiempo.title = "Tiempo: 5:00"
            default:
                debugPrint("no time")
            }
            segundosRestantes -= 1
        }
    }
    
    func terminarJuego(){
        timer?.invalidate()
        let alert = UIAlertController(title: "Obtuviste: \(score) en 5 minutos", message: "¿Seguir jugando?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: {[weak self] _ in
            self?.timer?.invalidate()
            self?.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self!, selector: #selector(self?.updateCounter(sender:)), userInfo: nil, repeats: true)
            self?.citas.shuffle()
            self?.score = 0
            self?.segundosRestantes = 300
            self?.puntaje.title = "Puntos: 0"
            self?.coleccionView.reloadData()
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
        return Data.citas.count
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
            puntaje.title = "Puntos: \(score)"
        }else{
            score -= 1
            puntaje.title = "Puntos: \(score)"
        }
        
        //problema del visible item
        guard let indexPath = coleccionView.indexPathsForVisibleItems.first else {
            return
        }
        
        //mapa.image = UIImage(named: "mapa_juego3_\(indexPath.item + 2)")
        
        coleccionView.scrollToItem(at: IndexPath(item: indexPath.item + 1, section: 0), at: .centeredHorizontally, animated: true)
        
    
    }
}

extension JuegoCitas: AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag && player.isEqual(reproductorMusica){
            reproductorMusica?.play()
        }
    }
}
