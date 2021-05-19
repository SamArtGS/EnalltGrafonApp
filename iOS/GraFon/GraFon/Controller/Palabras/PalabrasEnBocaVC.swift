//
//  PalabrasEnBocaVC.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-14.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

protocol SeleccionarTarjetaDelegate: class {
    func mostrarTarjeta(seleccionado:Int)
}

class PalabrasEnBocaVC: UICollectionViewController, UIToolbarDelegate{
    
    private let reuseIdentifier = "Cell"
    private var indice: Int?
    private let zoom = ZoomTransitioningDelegate()
    
    private let items = [UIBarButtonItem(title: "", style: .plain, target: self, action: nil),
                         UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
                         UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = zoom
        collectionView.backgroundColor = .white
        collectionView.isPagingEnabled = true
        self.title = "Palabras en la boca"
        self.collectionView!.register(CeldaColeccionDeColecciones.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, indiceSeleccionado: Int) {
        super.init(collectionViewLayout: layout)
        indice = indiceSeleccionado
        self.toolbarItems = items
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("Se reclama la memoria de las tarjetas")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
        let dicindice = indice ?? 1
        DispatchQueue.main.async {
            self.collectionView.scrollToItem(at: IndexPath(item: dicindice - 1, section: 0), at: .centeredHorizontally, animated: false)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)

    }
}


extension PalabrasEnBocaVC: SeleccionarTarjetaDelegate{
    
    func mostrarTarjeta(seleccionado: Int) {
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        let vcs = TarjetaSeleccionadaController(collectionViewLayout:scrollLayout,
                                                tarjeta: Data.letras.filter{letra in
                                                    letra.identificador != 0}[(indice ?? 0)-1].tarjetas?[seleccionado])
        self.navigationController?.pushViewController(vcs, animated: true)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.letras.filter{letra in letra.identificador != 0}.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CeldaColeccionDeColecciones
        cell.delegate = self
        cell.indice = indexPath.item
        return cell
    }
    
    override func viewDidLayoutSubviews() {
        
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        
        
        let filtrado = Data.letras.filter{letra in letra.identificador != 0}
        indice = filtrado[indexPath.item].identificador
        items[0].title = "\(filtrado[indexPath.item].letra)"
        items[2].title = "\(filtrado[indexPath.item].identificador) / \(filtrado.count)"
    }
}




extension CeldaColeccionDeColecciones: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.letras.filter{letra in letra.identificador != 0}[indice ?? 0].tarjetas?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coleccionView.dequeueReusableCell(withReuseIdentifier: "Tarjeta", for: indexPath) as! CeldaPalabras
        cell.palabrasEnTarjeta = Data.letras.filter{letra in letra.identificador != 0}[indice ?? 0].tarjetas?[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.mostrarTarjeta(seleccionado: indexPath.item)
    }
    
    
    
}



extension PalabrasEnBocaVC: UICollectionViewDelegateFlowLayout{
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width), height: (view.safeAreaLayoutGuide.layoutFrame.height))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    override func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }
}
    
extension CeldaColeccionDeColecciones: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if UIDevice().userInterfaceIdiom == .phone {
            return CGSize(width: (safeAreaLayoutGuide.layoutFrame.width/3.5), height: (safeAreaLayoutGuide.layoutFrame.width/2.8))
        }else{
            return CGSize(width: 120, height: 220)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        return UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
}
