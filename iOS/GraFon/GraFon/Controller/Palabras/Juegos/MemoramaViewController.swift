//
//  MemoramaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation

class MemoramaViewController: UICollectionViewController {
    
    private let fondoSonido: String = "music_Instruso"
    private var reproductorAudio: AVAudioPlayer?
    private var segundosRestantes = 59
    private var score:Int = 0
    private let reuseIdentifier = "Cell"
    private var cartas:[String]?
    private var tipoMemorama: TipoMemorama
    
    init(collectionFlow: UICollectionViewLayout, tipoMemorama: TipoMemorama) {
        self.tipoMemorama = tipoMemorama
        
        super.init(collectionViewLayout: collectionFlow)
        
        
    }
    
    func generarTarjetas(){
        
        collectionView.visibleCells.forEach { cell in
            guard let cell = cell as? CeldaMemorama else { return }
            cell.backgroundColor = .clear
            cell.acertado = false
            cell.estaVolteado = true
        }
        
        if tipoMemorama == .memoramaPalabras{
            let seleccionado:Int = Int.random(in: 0..<Data.parejaMemoramaPalabra.count/4)
            cartas = Data.parejaMemoramaPalabra[seleccionado*4...(seleccionado*4)+3].map({ pareja in
                pareja.primeraPalabra
            })
            cartas?.append(contentsOf: Data.parejaMemoramaPalabra[seleccionado*4...seleccionado*4+3].map({ pareja in
                pareja.segundaPalabra
            }))
            
        }else{
            let seleccionado:Int = Int.random(in: 0..<Data.parejaMemoramaFrases.count/4)
            cartas = Data.parejaMemoramaFrases[seleccionado*4...(seleccionado*4)+3].map({ pareja in
                pareja.primeraPalabra
            })
            cartas?.append(contentsOf: Data.parejaMemoramaFrases[seleccionado*4...seleccionado*4+3].map({ pareja in
                pareja.segundaPalabra
            }))
        }
        cartas?.shuffle()
        print(cartas ?? "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Limpieza de memoramas")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        audioFondo()
        configuracionToolBar()
        generarTarjetas()
        
        collectionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
        
        self.collectionView!.register(CeldaMemorama.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.updateCounter()
        }
        collectionView.isScrollEnabled = false
        
        
        /// Configuración del botón de ayuda
        let BarButtonItemDerecho = menuButton(self,
        action: #selector(mostrarInstrucciones),
        imageName: "icons8-query")
        self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
        
        let BarButtonItemIzquierdo = menuButton(self,
        action: #selector(salir),
        imageName: "n2_btn_jgo_cerrar")
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo
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
    
    @objc
    func mostrarInstrucciones(){
        if tipoMemorama == .memoramaPalabras{
            present(InstruccionesVC(imagenInstruccion: "n2_tutorial_memorama-1", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .memoramaPalabras, modal: true), animated: true)
        }else{
            present(InstruccionesVC(imagenInstruccion: "n2_turorial_memorama-2", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .memoramaFrases, modal: true), animated: true)
        }
        
    }
    
    func terminarJuego(){
        
    }
    
    
    
    func darPuntaje(acierto: Bool) {
        if segundosRestantes >= 0{
            if acierto{
                score += 1
                puntaje.title = "Pares: \(score)"
                if score % 4 == 0{
                    generarTarjetas()
                    collectionView.reloadData()
                }
            }else{
                if score > 0{
                    score -= 1
                    puntaje.title = "Pares: \(score)"
                }
            }
        }
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
            default:
                debugPrint("no time")
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
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
        self.reproductorAudio?.stop()
        view.layer.removeAllAnimations()
        view.subviews.forEach { view in
            view.layer.removeAllAnimations()
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cartas?.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CeldaMemorama
        cell.tipo = tipoMemorama
        cell.palabra = cartas?[indexPath.item]
        cell.flip()
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(indexPath.item*200)) {
            cell.flipBack()
        }
        return cell
    }
    
    private var palabraSeleccionada: CeldaMemorama?

    
    private var puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "Pares: 0",style: .plain, target: nil, action: nil)
    }()
    
    private var tiempo: UIBarButtonItem = {
        return UIBarButtonItem(title: "Tiempo: 1:00",style: .plain, target: nil, action: nil)
    }()
    private var flexibleSpace: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }()

}


extension MemoramaViewController: UICollectionViewDelegateFlowLayout{
    
    
    
    func configuracionToolBar(){
        let items = [puntaje, flexibleSpace,tiempo]
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        self.navigationController?.toolbar.isTranslucent = false
        self.navigationController?.toolbar.barTintColor = .colorTabBarPalabrasEnBoca
        self.navigationController?.toolbar.tintColor = .white
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if UIDevice().userInterfaceIdiom == .phone {
            return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width/2.1),
                          height: (view.safeAreaLayoutGuide.layoutFrame.height/4.5))
        }else{
            return CGSize(width: 150, height: 200)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        
        if UIDevice().userInterfaceIdiom == .phone {
            return UIEdgeInsets(top: 10, left: 5, bottom: 20, right: 5)
        }else{
            return UIEdgeInsets(top: 20, left: 15, bottom: 20, right: 15)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice().userInterfaceIdiom == .phone {
            return 2
        }else{
            return 10
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice().userInterfaceIdiom == .phone {
            return 10
        }else{
            return 10
        }
    }
}


extension MemoramaViewController{
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CeldaMemorama
        if !cell.estaVolteado && !cell.acertado{
            cell.flip()
            if Data.parejaMemoramaPalabra.filter({ pareja in
                pareja.primeraPalabra == palabraSeleccionada?.palabra
            }).first?.segundaPalabra == cell.palabra{
                print("Pareja encontrada")
                cell.acertado = true
                palabraSeleccionada?.acertado = true
                cell.backgroundColor = .systemGreen
                palabraSeleccionada?.backgroundColor = .systemGreen
                
                darPuntaje(acierto: true)
                
            }else{
                if Data.parejaMemoramaPalabra.filter({ pareja in
                    pareja.segundaPalabra == palabraSeleccionada?.palabra
                }).first?.primeraPalabra == cell.palabra{
                    print("Pareja encontrada")
                    
                    cell.acertado = true
                    palabraSeleccionada?.acertado = true
                    
                    cell.backgroundColor = .systemGreen
                    palabraSeleccionada?.backgroundColor = .systemGreen
                    darPuntaje(acierto: true)
                    
                }else{
                    //Primer toque
                    if palabraSeleccionada == nil {
                        palabraSeleccionada = cell
                    }else{
                        //Segundo toque erróneo
                        palabraSeleccionada = nil
                        collectionView.visibleCells.forEach { cell in
                            guard let cell = cell as? CeldaMemorama else { return }
                            if cell.estaVolteado  && !cell.acertado{
                                cell.flipBack()
                            }
                        }
                    }
                }
                
            }
        }else{
            let cell = collectionView.cellForItem(at: indexPath) as! CeldaMemorama
            if !cell.acertado{
                cell.flipBack()
            }
        }
    }
}

extension MemoramaViewController: AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag || player.isEqual(reproductorAudio) {
            reproductorAudio?.play()
        }
    }
}
