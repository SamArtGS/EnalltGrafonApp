//
//  ViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PagePuertasCV: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let puertas = [Puerta(
                          nombreImagenPuertaCerrada: "PuertaJuegoPalabras",
                          nombreImagenPuertaMedio: "PuertaJuegoPalabras",
                          nombreImagenPuertaAbierta: "PuertaJuegoPalabras",
                          pantallaReferenciada: "PuertaJuegoPalabras"),
                   Puerta(nombreImagenPuertaCerrada: "PuertaJuegos",
                          nombreImagenPuertaMedio: "PuertaJuegos",
                          nombreImagenPuertaAbierta: "PuertaJuegos",
                          pantallaReferenciada: "PuertaJuegos"),
                   Puerta(nombreImagenPuertaCerrada: "PuertaPalabrasCerrada",
                          nombreImagenPuertaMedio: "PuertaPalabrasMedio",
                          nombreImagenPuertaAbierta: "PuertaPalabrasAbierta",
                          pantallaReferenciada: "PuertaPalabras"),
                   Puerta(
                        nombreImagenPuertaCerrada: "PuertaSonidosSimbolosCerrada",
                          nombreImagenPuertaMedio: "PuertaSonidosSimbolosMedio",
                          nombreImagenPuertaAbierta: "PuertaSonidosSimbolosAbierta",
                          pantallaReferenciada: "PuertaSonidosSimbolos")]
    
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return puertas.count
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid",
                                                      for: indexPath) as! PuertaCell
        cell.puerta = puertas[indexPath.item]
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
        //let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as! PuertaCell
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        let viewTable = SimbolosSonidosVC(collectionViewLayout: scrollLayout)
        self.navigationController?.pushViewController(viewTable, animated: true)
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

