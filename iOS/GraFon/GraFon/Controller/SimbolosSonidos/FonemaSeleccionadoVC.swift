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
    var seleccionado:Int = 10
   
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
        constraintsDobleBarra()
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
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
        collectionView.scrollToItem(at:IndexPath(item: seleccionado,
                                                 section: 0),
                                                 at: .bottom,
                                                 animated: true)
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
        items[0].title = "\(filtrado[indexPath.item].fonema)"
        items[2].title = "\(filtrado[indexPath.item].identificador) / \(filtrado.count)"
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
    
    
    private var textoSimbolos: UILabel = {
        let texto = UILabel()
        texto.translatesAutoresizingMaskIntoConstraints = false
        texto.text = "Símbolos y Sonidos"
        texto.textColor = .colorBarraSuperiorSyS
        texto.contentMode = .scaleAspectFit
        texto.adjustsFontForContentSizeCategory = true
        return texto
    }()
    
    private var imagenPajaroBarraAdicional:UIButton = {
        let boton = UIButton(type: .custom)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setImage(UIImage(named: "iconbar1"), for: .normal)
        boton.contentMode = .scaleAspectFit
        boton.target(forAction: #selector(paginaPrincipal), withSender: .none)
        return boton
    }()
    
    @objc func paginaPrincipal(){
        print("Regresando a la pantalla xx2")
    }
    
    func constraintsDobleBarra(){
        let barra = UIView()
            barra.translatesAutoresizingMaskIntoConstraints = false
            barra.contentMode = .scaleAspectFit
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(barra)
        barra.addSubview(textoSimbolos)
        barra.addSubview(imagenPajaroBarraAdicional)
        barra.backgroundColor = .colorToolBarSyS
        
        NSLayoutConstraint.activate([
            barra.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            barra.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            barra.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            barra.widthAnchor.constraint(equalTo: view.widthAnchor),
            barra.heightAnchor.constraint(equalToConstant: 50),
            textoSimbolos.topAnchor.constraint(equalTo: barra.topAnchor),
            textoSimbolos.bottomAnchor.constraint(equalTo: barra.bottomAnchor),
            textoSimbolos.leadingAnchor.constraint(equalTo: barra.leadingAnchor,
                                                        constant: 20),
            imagenPajaroBarraAdicional.topAnchor.constraint(equalTo: barra.topAnchor,
                                                        constant: 10),
            imagenPajaroBarraAdicional.bottomAnchor.constraint(equalTo: barra.bottomAnchor,
                                                        constant: -10),
            imagenPajaroBarraAdicional.trailingAnchor.constraint(equalTo: barra.trailingAnchor,
                                                        constant: -20),
            imagenPajaroBarraAdicional.widthAnchor.constraint(equalToConstant: 35),
            collectionView.topAnchor.constraint(equalTo: barra.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
