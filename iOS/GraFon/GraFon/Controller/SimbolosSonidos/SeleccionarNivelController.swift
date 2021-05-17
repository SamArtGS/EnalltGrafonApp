//
//  SeleccionarNivelController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-25.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class SeleccionarNivelController: UICollectionViewController, UINavigationControllerDelegate{
    
    private let reuseIdentifier:String = "Cell"
    
    let nombreImagenesNiveles:[String] = ["n1_jgo1_01_mdpi","n1_jgo2_01_mdpi","n1_jgo3_01_mdpi","n1_jgo4_01_mdpi","n1_jgo5_01_mdpi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self
        self.collectionView!.register(CeldaMolde.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.backgroundColor = .white
        collectionView.clipsToBounds = true
        collectionView.backgroundColor = .clear
        colocarFondo(imagen: "bck_n1_juegos_v2")

    }
    
    deinit {
        print("Se reclama memoria de collection view de seleccionar nivel")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
}
extension SeleccionarNivelController{
    
    /// MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nombreImagenesNiveles.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CeldaMolde
        cell.nivel = nombreImagenesNiveles[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .horizontal
        
        let vcs = SySJuego1VC(collectionViewLayout:scrollLayout, nivelSelecionado: indexPath.item + 1)
        self.navigationController?.pushViewController(vcs, animated: true)
    }
    
}

extension SeleccionarNivelController : UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)/1.0,
                             height: (view.safeAreaLayoutGuide.layoutFrame.height)/6.0)
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
