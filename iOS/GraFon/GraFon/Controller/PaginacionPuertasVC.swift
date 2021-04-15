//
//  ViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PagePuertasCV: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return Data.puertas.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid",
                                                      for: indexPath) as! PuertaCell
        cell.puerta = Data.puertas[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    /**
            Para realizar la
     */
    override func collectionView(_ collectionView: UICollectionView,
                                 didSelectItemAt indexPath: IndexPath) {
        
        let celda = collectionView.cellForItem(at: indexPath) as! PuertaCell
        celda.iniciarAnimacion()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
            let scrollLayout = UICollectionViewFlowLayout()
            scrollLayout.scrollDirection = .vertical
            switch indexPath.item {
                case 0:
                    break
                case 1:
                    break
                case 2:
                    let viewTable = SimbolosSonidosVC(collectionViewLayout: scrollLayout, puertaSeleccionada: 2)
                    
                    self.navigationController?.pushViewController(viewTable, animated: true)
                    break
                case 3:
                    let viewTable = SimbolosSonidosVC(collectionViewLayout: scrollLayout,puertaSeleccionada: 3)
                    self.navigationController?.pushViewController(viewTable, animated: true)
                    break
                default:
                    break
            }
            
        })
        
    }
    
    
    //** Funciones del ciclo de vida del VC
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = .white
        collectionView?.backgroundColor = .white
        collectionView?.isPagingEnabled = true
        collectionView?.register(PuertaCell.self,
                                 forCellWithReuseIdentifier: "cellid")
    }
}

