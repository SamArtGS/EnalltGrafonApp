//
//  SonidoSeleccionado.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-03-10.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit
import AVFoundation


class SonidoSeleccionado: UICollectionViewController,UICollectionViewDelegateFlowLayout, UITabBarControllerDelegate{
    
    private let reuseIdentifier:String = "celdaFonema"
    var indiceSeleccionado:Int?
   
    private var reproductorAudio = AVAudioPlayer()
    
    deinit {
        print("\n\n Se reclama memoria de CollectionView de Ejemplos teoría")
    }
    
    let items = [UIBarButtonItem(title: "",
                style: .plain, target: self, action: nil),
                 UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                    target: self, action: nil),
                 UIBarButtonItem(title: "",
                    style: .plain, target: nil, action: nil)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Símbolos y Sonidos"
        collectionView.backgroundColor = .white
        collectionView?.isPagingEnabled = true
        tabBarController?.delegate = self
        self.collectionView!.register(SimboloPaginaCelda.self,
                                      forCellWithReuseIdentifier: reuseIdentifier)
        
        
        configuracionToolBar()
        DispatchQueue.main.async {
            guard let indice = self.indiceSeleccionado else { return }
            self.collectionView.scrollToItem(at: IndexPath(item: indice - 1, section: 0), at: .centeredHorizontally, animated: false)
        }
        
    }
    
    func configuracionToolBar(){
        self.toolbarItems = items
        self.navigationController?.toolbar.isTranslucent = false
        self.navigationController?.toolbar.barTintColor = .colorTabBarSonidoSimbolo
        self.navigationController?.toolbar.tintColor = .white
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        super.navigationController?.navigationBar.backItem?.title = ""
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
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
        
        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width), height: (view.safeAreaLayoutGuide.layoutFrame.height))
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
            reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido ?? "pb_a_01"))
            reproductorAudio.play()
        }catch{
            print("Error al reproducir el audio")
        }
        
    }
}
