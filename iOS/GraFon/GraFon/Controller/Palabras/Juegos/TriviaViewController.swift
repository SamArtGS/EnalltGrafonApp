//
//  TriviaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation


class TriviaViewController: UICollectionViewController {
    
    private var segundosRestantes = 60
    private var score: Int = 0
    private let fondoSonido: String = "music_Instruso"
    private var reproductorAudio: AVAudioPlayer?
    private let dataShuffle = Data.trivias
    private var reproductorLetra: AVAudioPlayer?
    private var booleano: Bool = false
    
    init(collection: UICollectionViewLayout) {
        super.init(collectionViewLayout: collection)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Trivia"
        collectionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
        configuracionToolBar()
        
        collectionView?.isPagingEnabled = true
        collectionView?.isScrollEnabled = false
        
        
        collectionView.register(TriviaCollectionViewCell.self, forCellWithReuseIdentifier: "celltrivia")
        
        
        audioFondo()
        
        let sonido = Bundle.main.path(forResource: dataShuffle[0].audio, ofType: "mp3")
        let reproductorAud = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
        reproductorAud?.play()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.updateCounter()
        }
        let BarButtonItemDerecho = menuButton(self,
        action: #selector(mostrarInstrucciones),
        imageName: "icons8-query")
        self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
        
        let BarButtonItemIzquierdo = menuButton(self,
        action: #selector(salir),
        imageName: "n2_btn_jgo_cerrar")
        
        let botonPausa = menuButton(self,
        action: #selector(pausaPlay),
        imageName: "icons8-no_audio")
        self.navigationItem.rightBarButtonItems = [BarButtonItemDerecho,botonPausa]
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo
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
        present(InstruccionesVC(imagenInstruccion: "n2_jgo_tutorial_trivia_mdpi", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .trivia, modal: true), animated: true)
    }
    
    func terminarJuego(){
        let alert = UIAlertController(title: "¿Seguir jugando?", message: "Lograste \(score) puntos en 2 minutos", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: {[weak self] _ in
            self?.segundosRestantes = 60
            self?.score = 0
            self?.collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
            
            self?.collectionView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {[weak self] _ in
            guard let viewController = self?.navigationController?.viewControllers else { return }
            self?.navigationController?.popToViewController(viewController[viewController.count - 3], animated: true)
            self?.navigationController?.setToolbarHidden(true, animated: false)
        }))

        self.present(alert, animated: true, completion: nil)
    }
    
    private var contadorA10: Int = 0
    
    @objc func updateCounter() {
        
        contadorA10+=1
        
        if contadorA10 == 10 && segundosRestantes >= 0{
            score -= 1
            puntaje.title = "Puntos: \(score)"
            sonarPunto(bool: false)
            guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
                return
            }
            collectionView.scrollToItem(at: IndexPath(item: indexPath.item + 1, section: 0), at: .centeredHorizontally, animated: true)
            
            if indexPath.item + 1 >= dataShuffle.count{
                collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
            }
            contadorA10 = 0
        }
        
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
                debugPrint("")
            }
            segundosRestantes -= 1
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
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
    func configuracionToolBar(){
        let items = [puntaje,flexibleSpace,tiempo]
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        self.navigationController?.toolbar.isTranslucent = false
        self.navigationController?.toolbar.barTintColor = .colorTabBarPalabrasEnBoca
        self.navigationController?.toolbar.tintColor = .white
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataShuffle.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celltrivia", for: indexPath) as! TriviaCollectionViewCell
        cell.trivia = dataShuffle[indexPath.item]
        cell.delegate = self
        
        return cell
    }
}


extension TriviaViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width),
                            height: (view.safeAreaLayoutGuide.layoutFrame.height))
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        return UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
extension TriviaViewController: juegoTriviaDelegate, AVAudioPlayerDelegate{
    func sonarPunto(bool: Bool) {
        if bool{
            let sonido = Bundle.main.path(forResource: "buena", ofType: "wav")
            reproductorLetra?.volume = 0.1
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            //reproductorLetra?.volume = 0.3
            reproductorLetra?.play()
            reproductorLetra?.volume = 1
            reproductorLetra?.delegate = self
        }else{
            let sonido = Bundle.main.path(forResource: "mala", ofType: "wav")
            reproductorLetra?.volume = 0.1
            reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
            reproductorLetra?.volume = 0.3
            reproductorLetra?.play()
            //reproductorLetra?.volume = 1
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
        contadorA10 = 0
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        collectionView.scrollToItem(at: IndexPath(item: indexPath.item + 1, section: 0), at: .centeredHorizontally, animated: true)
        
        if indexPath.item + 1 >= dataShuffle.count{
            collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
        }
    }
    
    override func viewDidLayoutSubviews() {
        
    }
    override func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        collectionView.visibleCells.forEach { cell in
            cell.isUserInteractionEnabled = true
        }
    }
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        collectionView.visibleCells.forEach { cell in
            cell.isUserInteractionEnabled = false
        }
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
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag && player.isEqual(reproductorAudio){
                reproductorAudio?.play()
        }
    }
}
