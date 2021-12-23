//
//  ViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit


class NavigationController: UINavigationController {

    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

}




class PagePuertasCV: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    var halfModalTransitioningDelegate: HalfModalTransitioningDelegate?
    
    private var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.tintColor = .white
        pageControl.pageIndicatorTintColor = .colorGris1
        pageControl.currentPageIndicatorTintColor = .colorGris2
        pageControl.isUserInteractionEnabled = false
        return pageControl
    }()
    
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
                    case 2:
                        let viewTable = TabBarTeoriaJuegos(puertaSeleccionada: 0)
                        self.navigationController?.pushViewController(viewTable, animated: true)
                        break
                    case 3:
                        let viewTable = TabBarTeoriaJuegos(puertaSeleccionada: 1)
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
        AppUtility.lockOrientation(.portrait)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppUtility.lockOrientation(.portrait)
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
        
        
        
        configurePageControl()
        
        let boton: UIButton = menuBotonExtras(self, action: #selector(mostrarExtras), imageName: "icons8-view_more")
        boton.tintColor = .colorGris1
        view.addSubview(boton)
        view.addSubview(pageControl)
        
        NSLayoutConstraint.activate([
            boton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            boton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            boton.widthAnchor.constraint(equalToConstant: 30),
            boton.heightAnchor.constraint(equalToConstant: 30),
            
            pageControl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pageControl.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        view.bringSubviewToFront(pageControl)
    }
    
    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        debugPrint(pageNumber)
            pageControl.currentPage = Int(pageNumber)
    }
    
    var currentPage = 0
    
    func configurePageControl() {
         self.pageControl.numberOfPages = 4
         self.pageControl.currentPage = 0
     }
    
    
    @objc func mostrarExtras(){
        presentacionModal(viewController: PresentacionCreditos(), halfTransition: &halfModalTransitioningDelegate)
    }
    
}

