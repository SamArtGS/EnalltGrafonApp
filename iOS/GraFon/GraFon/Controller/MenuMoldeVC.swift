//
//  SimbolosSonidosVC.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class MenuMoldeVC: UICollectionViewController,UINavigationControllerDelegate{
    
    private let reuseIdentifier = "Cell"
    private var puertaInt: Int?
    
    init(collectionViewLayout layout: UICollectionViewLayout, puertaSeleccionada: Int) {
        super.init(collectionViewLayout: layout)
        puertaInt = puertaSeleccionada
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        navigationController?.delegate = self
        view.backgroundColor = .clear
        super.viewDidLoad()
    self.collectionView!.register(CeldaMolde.self,forCellWithReuseIdentifier: reuseIdentifier)
        configurarEntorno()
    }
    
   
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int {
        switch puertaInt {
        case 0:
            return Data.fonemas.count
        case 1:
            return Data.fonemas.count
        case 2:
            return Data.letras.count
        case 3:
            return Data.fonemas.count
        default:
            return Data.fonemas.count
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView,didSelectItemAt indexPath: IndexPath) {
        switch puertaInt {
        case 0:
            print("Hola")
        case 1:
            print("Hola")
        case 2:
            if  Data.letras[indexPath.item].identificador != 0{
                mostrarAlerta(title: "En proceso", message: "Sección en proceso de desarrollo, 🤠")
//                let scrollLayout = UICollectionViewFlowLayout()
//                scrollLayout.scrollDirection = .horizontal
//                let vcs = PalabrasEnBocaVC(collectionViewLayout:scrollLayout)
//                self.navigationController?.pushViewController(vcs, animated: true)
            }
        case 3:
            let scrollLayout = UICollectionViewFlowLayout()
            scrollLayout.scrollDirection = .horizontal
            
            if  Data.fonemas[indexPath.item].identificador != 0{
                let vcs = SonidoSeleccionado(collectionViewLayout:scrollLayout)
                vcs.indiceSeleccionado = Data.fonemas[indexPath.item].identificador
                self.navigationController?.pushViewController(vcs, animated: true)
            }
        default:
            print("Nada de nada")
        }
            
            
    }

    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath)
                                    -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,for: indexPath) as! CeldaMolde
        switch puertaInt {
            case 0:
                print("Hola")
            case 1:
                print("Hola")
            case 2:
                cell.letra = Data.letras[indexPath.item]
            case 3:
                cell.fonema = Data.fonemas[indexPath.item]
            default:
                print("Nada de nada")
            }
        
        return cell
    }
    
    
    
    func configurarEntorno(){
        collectionView.backgroundColor = .clear
        let imageView: UIImageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true

        
        switch puertaInt {
            case 0:
                print("Hola")
            case 1:
                print("Hola")
            case 2:
                navigationController?
                    .navigationBar.barTintColor = .colorBarraSuperiorPalabras
                navigationController?.navigationBar.setBackgroundImage(
                    UIColor.colorBarraSuperiorPalabras
                        .as1ptImage(),
                    for: .default
                )
                navigationController?
                    .navigationBar
                    .shadowImage = UIColor.colorLineaBarraSuperiorPalabras.as1ptImage()
                imageView.image = UIImage(named: "bck_n2_v2")
            case 3:
                navigationController?.title = "Símbolos y sonidos"
                navigationController?.navigationBar.setBackgroundImage(
                    UIColor.colorBarraSuperiorSyS
                        .as1ptImage(),
                    for: .default
                )
                navigationController?
                    .navigationBar
                    .shadowImage = UIColor.colorLineaBarraSuperiorSyS.as1ptImage()
                imageView.image = UIImage(named: "bck_n1_v2")
            default:
                print("Nada de nada")
        }
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        view.sendSubviewToBack(imageView)
              
    }
}


extension MenuMoldeVC : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.width/6.0,
                      height: collectionView.bounds.width/6.0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
                case 1136: //5,5s,SE
                    return view.frame.size.height/70
                case 1334: //6,7,8
                    return view.frame.size.height/60
                case 1920, 2208:// 6+,7+,8+
                    return view.frame.size.height/55
                case 2436: // X, Xs, 11Pro
                    return view.frame.size.height/30
                case 2688: // Xs Max, 11 Pro Max
                   return view.frame.size.height/28
                case 1792: // Xr, 11
                    return view.frame.size.height/28
                default:
                    return view.frame.size.height/17.5
                }
        }else{
            return view.frame.size.height/30
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }

}


