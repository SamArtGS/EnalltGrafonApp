//
//  SonidoSeleccionado.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-10.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation


class SonidoSeleccionado: UICollectionViewController,UICollectionViewDelegateFlowLayout{
    
    private let reuseIdentifier:String = "celdaFonema"
    var indiceSeleccionado:Int?
   
    private var reproductorAudio = AVAudioPlayer()
    
    let items = [UIBarButtonItem(title: "",
                    style: .plain, target: self, action: nil),
                 UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                    target: self, action: nil),
                 UIBarButtonItem(title: "",
                    style: .plain, target: nil, action: nil)]
    
    @objc func menu(){
        navigationController?.pushViewController(PresentacionJuegoSyS(), animated: true)
    }
    @objc func juegos(){
        navigationController?.pushViewController(PresentacionJuegoSyS(), animated: true)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ejemplos"
        collectionView.backgroundColor = .white
        collectionView?.isPagingEnabled = true
        personalizacionNavController()
        self.collectionView!.register(SimboloPaginaCelda.self,
                                      forCellWithReuseIdentifier: reuseIdentifier)
        let BarButtonItemDerecho = UIBarButtonItem.menuButton(self,
                                                              action: #selector(juegos),
                                                              imageName: "iconbar1")
        self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
        self.toolbarItems = items
    }

    override func viewDidAppear(_ animated: Bool) {
        guard let indice = indiceSeleccionado else { return }
        collectionView.scrollToItem(at: IndexPath(item: indice - 1, section: 0), at: .centeredHorizontally, animated: false)
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
    }
    
    func personalizacionNavController(){
        navigationController?.navigationBar.setBackgroundImage(
            UIColor(red: 82/255, green: 145/255, blue: 179/255, alpha: 1).as1ptImage(), for: .default)
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barTintColor = .colorBarraSuperiorSyS
        navigationController?.navigationBar
            .shadowImage = UIColor.colorLineaBarraSuperiorSyS.as1ptImage()
        navigationController?.toolbar.barTintColor = .colorToolBarSyS
    }
    
    override func viewDidLayoutSubviews() {
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        let filtrado = Data.fonemas.filter{ elemento in
            elemento.identificador != 0
        }
        items[0].title = "\(filtrado[indexPath.item].fonema)"
        items[2].title = "\(filtrado[indexPath.item].identificador) / \(filtrado.count)"
        
    }
    override func collectionView(_ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        
        return Data.fonemas.filter{ elemento in
                elemento.identificador != 0
        }.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath)-> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: reuseIdentifier,for: indexPath) as! SimboloPaginaCelda
        
        let filtrado = Data.fonemas.filter{ elemento in
            elemento.identificador != 0
        }
        cell.fonema = filtrado[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
                            return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
                            return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView,
                                 didSelectItemAt indexPath: IndexPath) {
        
        let filtrado = Data.fonemas.filter{ elemento in
            elemento.identificador != 0
        }
        
        let cell = collectionView.cellForItem(at: indexPath) as! SimboloPaginaCelda
        cell.cambiarImagen()
        
        let sonido = Bundle.main.path(forResource: filtrado[indexPath.item].audio, ofType: "mp3")
        do {
            reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "a_s1_1e"))
            reproductorAudio.play()
        }catch{
            print("Error al reproducir el audio")
        }
        
    }

}
