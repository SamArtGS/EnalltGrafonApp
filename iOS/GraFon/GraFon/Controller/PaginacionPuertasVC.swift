//
//  ViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PagePuertasCV: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    var halfModalTransitioningDelegate: HalfModalTransitioningDelegate?
    
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
        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width), height: (view.safeAreaLayoutGuide.layoutFrame.height))
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
                        
                        let viewTable = TabBarTeoriaJuegos(puertaSeleccionada: 3)
                        self.navigationController?.pushViewController(viewTable, animated: true)
                        
                        break
                    case 1:
                        let viewTable = TabBarTeoriaJuegos(puertaSeleccionada: 2)
                        self.navigationController?.pushViewController(viewTable, animated: true)
                        break
    //                    let viewTable = TabBarSimbolosySonidos(puertaSeleccionada: 1)
    //                    self.navigationController?.pushViewController(viewTable, animated: true)
                    case 2:
                        let viewTable = TabBarTeoriaJuegos(puertaSeleccionada: 0)
                        self.navigationController?.pushViewController(viewTable, animated: true)
                        break
                    case 3:
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
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {

        if let layout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            //layout.itemSize = CGSize(width:size.width, height:size.height)
            self.collectionView.frame.size = size
            layout.invalidateLayout()
        }
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
        let boton: UIButton = menuBotonExtras(self, action: #selector(mostrarExtras), imageName: "icons8-query")
        view.addSubview(boton)
        NSLayoutConstraint.activate([
            boton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            boton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            boton.widthAnchor.constraint(equalToConstant: 30),
            boton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    
    @objc func mostrarExtras(){
        presentacionModal(viewController: PresentacionJuegoSyS(), halfTransition: &halfModalTransitioningDelegate)
    }
    
}

