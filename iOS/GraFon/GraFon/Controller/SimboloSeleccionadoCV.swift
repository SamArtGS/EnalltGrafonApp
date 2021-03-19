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
    private let tituloVC:String = "Símbolos y Sonidos"
    private let BarButtonItemDerecho = UIBarButtonItem.menuButton(nil, action: #selector(juegos), imageName: "iconbar1")
    
    @objc func juegos(){
        print("Siguiente VC")
    }
    
    //Funciones del ciclo de vida del VC
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = tituloVC
        collectionView.backgroundColor = .white
        collectionView?.isPagingEnabled = true
        personalizacionNavController()
        self.collectionView!.register(SimboloPaginaCelda.self,
                                      forCellWithReuseIdentifier: reuseIdentifier)
        self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
        
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
        self.title = "Símbolos y Sonidos"
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        navigationController?.navigationBar.setBackgroundImage(
            UIColor(red: 82/255, green: 145/255, blue: 179/255, alpha: 1)
                .as1ptImage(), for: .default)
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = .colorBarraSuperior
        navigationController?.navigationBar
            .shadowImage = UIColor.colorLineaBarraSuperior.as1ptImage()
        
        navigationController?.toolbar.barTintColor = .colorToolBar
    }
    
    
    override func collectionView(_ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        
            return UICollectionView.fonemas.filter{ elemento in
                elemento.identificador != 0
            }.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath)-> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: reuseIdentifier,for: indexPath) as! SimboloPaginaCelda
        
        let filtrado = UICollectionView.fonemas.filter{ elemento in
            elemento.identificador != 0
        }
        //Filtrado de las que son distintos de 0
        cell.fonema = filtrado[indexPath.item]
        
        let items = [
            UIBarButtonItem(title: filtrado[indexPath.item].fonema,
                            style: .plain, target: self, action: nil),
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                            target: self, action: nil),
            UIBarButtonItem(title: "\(indexPath.item  )/\(filtrado.count )",
                            style: .plain, target: nil, action: nil)
        ]

        self.toolbarItems = items
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
    
    var reproductorAudio = AVAudioPlayer()
    
    override func collectionView(_ collectionView: UICollectionView,
                                 didSelectItemAt indexPath: IndexPath) {
        let filtrado = UICollectionView.fonemas.filter{ elemento in
            elemento.identificador != 0
        }
        
        let sonido = Bundle.main.path(forResource: filtrado[indexPath.item].audio, ofType: "mp3")
        do {
            reproductorAudio = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sonido!))
            print("El audio se reprodujo con etzito  \(sonido!)")
        }catch{
            print("Error al reproducir el audio")
        }
        //reproductorAudio.play()
    }
}
