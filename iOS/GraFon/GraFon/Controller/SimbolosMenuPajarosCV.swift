//
//  SimbolosSonidosVC.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SimbolosSonidosVC: UICollectionViewController,UICollectionViewDelegateFlowLayout{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.collectionView!.register(PajaroCelda.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        personalizacionNavController()
        
        collectionView.backgroundColor = .clear
        
        let imageView: UIImageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "bck_n1_v2")
        imageView.center = view.center
        view.addSubview(imageView)
        view.sendSubviewToBack(imageView)
        
    }
    
    func personalizacionNavController(){
        self.title = "Símbolos y Sonidos"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.setBackgroundImage(
            UIColor.colorBarraSuperior
                .as1ptImage(), for: .default)
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.barTintColor = .colorBarraSuperior
        navigationController?.navigationBar
            .shadowImage = UIColor.colorLineaBarraSuperior.as1ptImage()
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/6.0, height: collectionView.bounds.width/6.0)
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
                case 1136: //5,5s,SE
                    return view.frame.size.height/28
                case 1334: //6,7,8
                    return view.frame.size.height/28

                case 1920, 2208:    // 6+,7+,8+
                    return view.frame.size.height/28

                case 2436: // X, Xs, 11
                    return view.frame.size.height/17

                case 2688: // Xs Max, 11 Pro Max
                   return view.frame.size.height/17
                
                case 1792: // Xr, 11
                    return view.frame.size.height/17
                
                default:
                    return view.frame.size.height/30
                }
        }else{
            return view.frame.size.height/30
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UICollectionView.fonemas.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard UICollectionView.fonemas[indexPath.row].identificador != 0 else { return }
       let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .horizontal
    self.navigationController?.pushViewController(SonidoSeleccionado(collectionViewLayout: scrollLayout), animated: true)
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PajaroCelda
        cell.pajaroObjeto = UICollectionView.fonemas[indexPath.item]
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    

}
