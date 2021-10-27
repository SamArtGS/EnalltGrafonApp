//
//  SySJuego1VCCollectionViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-14.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class SySJuego1VC: UICollectionViewController, UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate{

    private let reuseIdentifier = "Cell"
    private var nivelFonema: Int?
    private var puntos: Int = 0
    private var tarjetas: [ParejaSonido]?
    var halfModalTransitioningDelegate: HalfModalTransitioningDelegate?
    
    
    
    @objc func instrucciones(){
        presentacionModal(viewController: PresentacionJuegoSyS(), halfTransition: &halfModalTransitioningDelegate)
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, nivelSelecionado: Int) {
        super.init(collectionViewLayout: layout)
        nivelFonema = nivelSelecionado
        tarjetas = Data.JuegoSyS.filter{ elemento in
            elemento.nivel == nivelSelecionado
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("\n\nSe reclama collection view del Juego \n\n")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurar()
        self.collectionView!.register(JuegoSySCelda.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        collectionView.backgroundColor = .clear
        
        colocarFondo(imagen: "bck_n1_juegos_v2")
        
        let BarButtonItemIzquierdo = menuButton(self,
        action: #selector(salir2),
        imageName: "n2_btn_jgo_cerrar")
        self.navigationItem.leftBarButtonItem = BarButtonItemIzquierdo
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .white
        self.navigationController?.setToolbarHidden(true, animated: false)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tarjetas?.count ?? 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! JuegoSySCelda
        cell.delegate = self
        cell.ejercicio = tarjetas?[indexPath.item]
        return cell
    }
    override func viewDidLayoutSubviews() {
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        puntaje.title = "\(indexPath.item + 1 ) | \(tarjetas?.count ?? 1)"
        barraProgreso.progress = Float(indexPath.item + 1 )/Float(tarjetas?.count ?? 1)
    }
    
    private var puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "0 | 20",style: .plain, target: nil, action: nil)
    }()
    

    private let barraProgreso:UIProgressView = {
        let barraprog = UIProgressView(progressViewStyle: .default)
        barraprog.isUserInteractionEnabled = true
        barraprog.translatesAutoresizingMaskIntoConstraints = false
        barraprog.progressTintColor = .white
        barraprog.isOpaque = true
        barraprog.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        return barraprog
    }()
}

extension SySJuego1VC{
    func configurar(){
        self.title = "Juego \(nivelFonema!)"
       
        collectionView.backgroundColor = .white
        collectionView?.isPagingEnabled = false
        collectionView?.isScrollEnabled = false
        
        configuracionToolBar()
        
        
        /// Configuración del botón de ayuda
        let BarButtonItemDerecho = menuButton(self,
        action: #selector(instrucciones),
        imageName: "icons8-query")
        self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
    }
    
    func configuracionToolBar(){
        
        //Tamaño de la barra de progreso
        barraProgreso.widthAnchor.constraint(equalToConstant: view.frame.width - 110).isActive = true
        
        
        let items = [UIBarButtonItem(customView: barraProgreso), puntaje]
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        self.navigationController?.toolbar.isTranslucent = false
        self.navigationController?.toolbar.barTintColor = .colorBarraSuperiorSyS
        self.navigationController?.toolbar.tintColor = .white
    }
    
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
        return UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
}

extension SySJuego1VC: juegoSimbolosySonidosDelegate{
    func siguiente() {
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        if indexPath.item != tarjetas!.count - 1 {
            collectionView.scrollToItem(at: IndexPath(item: indexPath.item + 1, section: 0), at: .centeredHorizontally, animated: true)
        }else{
            (collectionView.cellForItem(at: indexPath) as! JuegoSySCelda).finalizado()
            finalizar()
        }
    }
    
    
    
    func recolectarPuntaje() {
        puntos+=1
    }
    
    
    func finalizar() {
        let vc = PuntuacionJuegoSyS(puntaje: puntos)
        vc.pantalla.delegate = self
        vc.modalPresentationStyle = .fullScreen
        navigationController?.present(vc, animated: true, completion: nil)
        
    }
    
}


extension SySJuego1VC: pantallaResultadosDelegate{
    func irOtroJuego() {
        /*
         navigationController?.dismiss(animated: true)
         navigationController?.popViewController(animated: true)
        */
        navigationController?.dismiss(animated: true)
        let vc = (navigationController?.viewControllers[1]) as? TabBarTeoriaJuegos
        vc?.selectedIndex = 0
        vc?.title = "Símbolos y Sonidos"
        navigationController?.popToViewController(vc!, animated: true)
    }
    
    func irPantallaPajaros() {
        navigationController?.dismiss(animated: true)
        let vc = (navigationController?.viewControllers[1]) as? TabBarTeoriaJuegos
        vc?.selectedIndex = 0
        vc?.title = "Símbolos y Sonidos"
        navigationController?.popToViewController(vc!, animated: true)
    }
    
    func irAPuertas() {
        self.dismiss(animated: true)
        guard let viewController = navigationController?.viewControllers else { return }
        let vc = (viewController[0]) as? PagePuertasCV
        vc?.collectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .centeredHorizontally, animated: true)
        navigationController?.popToViewController(vc!, animated: true)
        navigationController?.setToolbarHidden(true, animated: false)
    }
}
