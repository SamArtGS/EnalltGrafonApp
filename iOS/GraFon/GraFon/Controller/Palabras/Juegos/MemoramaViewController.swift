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
    private var segundosRestantes = 0
    private var score:Int = 0
    private let reuseIdentifier = "Cell"
    private var reproductorLetra: AVAudioPlayer?
    private var cartas:[String]?
    private var parejaCartas:[ParejaCartas]?
    private var tipoMemorama: TipoMemorama
    private var palabraSeleccionada: CeldaMemorama? = nil
    private var booleano: Bool = false
    
    
    init(collectionFlow: UICollectionViewLayout, tipoMemorama: TipoMemorama) {
        self.tipoMemorama = tipoMemorama
        super.init(collectionViewLayout: collectionFlow)
        
        
        if tipoMemorama == .memoramaPalabras{
            self.segundosRestantes = 59
            self.tiempo.title = "Tiempo: 1:00"
        }else{
            self.segundosRestantes = 120
            self.tiempo.title = "Tiempo: 2:00"
        }
    }
    
    func generarTarjetas(){
        palabraSeleccionada = nil
        collectionView.isUserInteractionEnabled = true
        
        collectionView.visibleCells.forEach { cell in
            guard let cell = cell as? CeldaMemorama else { return }
            cell.backgroundColor = .clear
            cell.flipBack()
            cell.isUserInteractionEnabled = true
            cell.imagenFrente.layer.borderWidth = 0
            cell.imagenFrente.layer.borderColor = UIColor.clear.cgColor
        }
        
        if tipoMemorama == .memoramaPalabras{
            let seleccionado:Int = Int.random(in: 0..<Data.parejaMemoramaPalabra.count/4)
            cartas = Data.parejaMemoramaPalabra[seleccionado*4...(seleccionado*4)+3].map({ pareja in
                pareja.primeraPalabra
            })
            cartas?.append(contentsOf: Data.parejaMemoramaPalabra[seleccionado*4...seleccionado*4+3].map({ pareja in
                pareja.segundaPalabra
            }))
            parejaCartas = Data.parejaMemoramaPalabra[seleccionado*4...(seleccionado*4)+3].shuffled()
            
        }else{
            let seleccionado:Int = Int.random(in: 0..<Data.parejaMemoramaFrases.count/4)
            cartas = Data.parejaMemoramaFrases[seleccionado*4...(seleccionado*4)+3].map({ pareja in
                pareja.primeraPalabra
            })
            cartas?.append(contentsOf: Data.parejaMemoramaFrases[seleccionado*4...seleccionado*4+3].map({ pareja in
                pareja.segundaPalabra
            }))
            parejaCartas = Data.parejaMemoramaFrases[seleccionado*4...(seleccionado*4)+3].shuffled()
        }
        cartas?.shuffle()
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
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter(sender:)), userInfo: nil, repeats: false)
        
//        //TODO: Verificar que contador anterior se muera como debe.
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
//            print(timer)
//            self?.
//        }
        
        
        
        collectionView.isScrollEnabled = false
        
        let BarButtonItemDerecho = menuButton(self,
        action: #selector(mostrarInstrucciones),
        imageName: "icons8-query")
        
        let botonPausa = menuButton(self,
        action: #selector(pausaPlay(_:)),
        imageName: "icons8-no_audio",
        imageSelected: "icons8-sound")
        
        
        //self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
        self.navigationItem.rightBarButtonItems = [BarButtonItemDerecho,botonPausa]
        
        
        let BarButtonItemIzquierdo = menuButton(self,
        action: #selector(salir),
        imageName: "n2_btn_jgo_cerrar")
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo
        
    }
    @objc func pausaPlay(_ sender: UIBarButtonItem?){
        if (reproductorAudio?.isPlaying ?? false) {
            reproductorAudio?.pause()
            booleano = false
            guard let boton = self.navigationItem.rightBarButtonItems?[1].customView as? UIButton else { return }
            boton.isSelected = true
            
            //guard let button = sender?.customView! as? UIButton else { return }
            //button.isSelected = false
        }
        else {
            reproductorAudio?.play()
            booleano = true
            //self.navigationItem.rightBarButtonItems?[1].image = UIImage(named: "icons8-no-audio")
            //sender?.image = UIImage(named: "icons8-no-audio")
            //guard let button = sender?.customView! as? UIButton else { return }
            //button.isSelected = true
            guard let boton = self.navigationItem.rightBarButtonItems?[1].customView as? UIButton else { return }
            boton.isSelected = false
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
    
    @objc
    func mostrarInstrucciones(){
        if tipoMemorama == .memoramaPalabras{
            present(InstruccionesVC(imagenInstruccion: "n2_tutorial_memorama-1", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .memoramaPalabras, modal: true), animated: true)
        }else{
            present(InstruccionesVC(imagenInstruccion: "n2_turorial_memorama-2", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .memoramaFrases, modal: true), animated: true)
        }
        
    }
    
    func terminarJuego(){
        let alert = UIAlertController(title: "Parejas: \(score)", message: "¿Seguir jugando con la misma pareja?", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: {[weak self] _ in
            
            self?.cartas?.shuffle()
            self?.score = 0
            self?.puntaje.title = "Pares: 0"
            self?.palabraSeleccionada = nil
            self?.collectionView.isUserInteractionEnabled = true
            self?.collectionView.visibleCells.forEach { cell in
                guard let cell = cell as? CeldaMemorama else { return }
                cell.backgroundColor = .clear
                cell.flipBack()
                cell.isUserInteractionEnabled = true
                cell.imagenFrente.layer.borderWidth = 0
                cell.imagenFrente.layer.borderColor = UIColor.clear.cgColor
            }
            self?.collectionView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: {[weak self] _ in
            self?.score = 0
            self?.puntaje.title = "Pares: 0"
            self?.generarTarjetas()
            self?.collectionView.reloadData()
        }))
        
        if tipoMemorama == .memoramaPalabras{
            self.segundosRestantes = 59
        }else{
            self.segundosRestantes = 120
        }

        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    func darPuntaje(acierto: Bool) {
        if segundosRestantes >= 0{
            if acierto{
                score += 1
                puntaje.title = "Pares: \(score)"
                
                let sonido = Bundle.main.path(forResource: "buena", ofType: "wav")
                reproductorLetra?.volume = 0.1
                reproductorLetra = try? AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "15"))
                //reproductorLetra?.volume = 0.3
                reproductorLetra?.play()
                reproductorLetra?.volume = 1
                reproductorLetra?.delegate = self
                
                if score % 4 == 0{
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: { [weak self ] in
                        self?.generarTarjetas()
                        self?.collectionView.reloadData()
                    })
                    
                }
            }else{
                if score > 0{
                    score -= 1
                    puntaje.title = "Pares: \(score)"
                }
            }
        }
    }
    
    @objc func updateCounter(sender: Any) {
        print(sender)
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
        print(segundosRestantes)
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
        
        cell.pareja = parejaCartas?.filter({ pareja in
            pareja.primeraPalabra == cartas?[indexPath.item]
        }).first?.segundaPalabra

        if cell.pareja == nil {
            cell.pareja = parejaCartas?.filter({ pareja in
                pareja.segundaPalabra == cartas?[indexPath.item]
            }).first?.primeraPalabra
        }
        
        print("PAREJA.", cell.palabra ?? "", cell.pareja ?? "")
        cell.flip()
        
        
        
        
        let time = 50
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(indexPath.item*time)) {
              cell.flipBack()
        }
        
        return cell
    }
    
    private var puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "Pares: 0",style: .plain, target: nil, action: nil)
    }()
    
    private var tiempo: UIBarButtonItem = {
        return UIBarButtonItem(title: "Tiempo: ",style: .plain, target: nil, action: nil)
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
            return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width/2.2),
                          height: (view.safeAreaLayoutGuide.layoutFrame.height/4.5))
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
        if cell.estaBocaAbajo {
            cell.flip()
            
            if cell.palabra == palabraSeleccionada?.pareja{
                print("Pareja encontrada")
                cell.isUserInteractionEnabled = false
                palabraSeleccionada?.isUserInteractionEnabled = false
                //cell.backgroundColor = .systemGreen
                //palabraSeleccionada?.backgroundColor = .systemGreen
                cell.imagenFrente.layer.borderWidth = 3
                cell.imagenFrente.layer.borderColor = UIColor.orange.cgColor
                palabraSeleccionada?.imagenFrente.layer.borderWidth = 3
                palabraSeleccionada?.imagenFrente.layer.borderColor = UIColor.orange.cgColor
                
                darPuntaje(acierto: true)
                palabraSeleccionada = nil
            }else{
                if palabraSeleccionada == nil {
                    cell.isUserInteractionEnabled = false
                    palabraSeleccionada = cell
                }else{
                    palabraSeleccionada?.isUserInteractionEnabled = true
                    
                    collectionView.isUserInteractionEnabled = false
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: { [weak self ] in
                        self?.collectionView.visibleCells.forEach { cellita in
                            guard let cellita = cellita as? CeldaMemorama else { return }
                            if !cellita.estaBocaAbajo  && cellita.isUserInteractionEnabled{
                                cellita.flipBack()
                            }
                        }
                        cell.flipBack()
                        self?.collectionView.isUserInteractionEnabled = true
                    })
                    
                    
                    palabraSeleccionada = nil
                }
            }
        }else{
            if cell.isUserInteractionEnabled{
                cell.flipBack()
            }
        }
    }
}

extension MemoramaViewController: AVAudioPlayerDelegate{
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if flag && player.isEqual(reproductorAudio){
            reproductorAudio?.play()
        }
    }
}
