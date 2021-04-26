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
    
    override func collectionView(_ collectionView: UICollectionView,
                                 didSelectItemAt indexPath: IndexPath) {
        if UIApplication.shared.isIgnoringInteractionEvents {
            return //for extra safety
        }
        
        let celda = collectionView.cellForItem(at: indexPath) as! PuertaCell
        
            
            celda.iniciarAnimacion()
            UIApplication.shared.beginIgnoringInteractionEvents()
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                UIApplication.shared.endIgnoringInteractionEvents()
                switch indexPath.item {
                    case 0:
    //                    let viewTable = TabBarSimbolosySonidos(puertaSeleccionada: 0)
    //                    self.navigationController?.pushViewController(viewTable, animated: true)
                        break
                    case 1:
    //                    let viewTable = TabBarSimbolosySonidos(puertaSeleccionada: 1)
    //                    self.navigationController?.pushViewController(viewTable, animated: true)
                        break
                    case 2:
                        let viewTable = TabBarSimbolosySonidos(puertaSeleccionada: 2)
                        self.navigationController?.pushViewController(viewTable, animated: true)
                        break
                    case 3:
                        let viewTable = TabBarSimbolosySonidos(puertaSeleccionada: 3)
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
        collectionView.showsHorizontalScrollIndicator = false
        navigationController?.navigationBar.barTintColor = .white
        collectionView?.backgroundColor = .white
        collectionView?.isPagingEnabled = true
        collectionView?.register(PuertaCell.self,
                                 forCellWithReuseIdentifier: "cellid")
    }
}

