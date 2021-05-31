//
//  SimbolosSonidosVC.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class MenuMoldeVC: UICollectionViewController{
    
    private let reuseIdentifier:String = "Cell"
    
    
    private var puertaInt: Int?
    
    deinit {
        print("Se reclama la memoria del molde de pajaros")
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, puertaSeleccionada: Int) {
        super.init(collectionViewLayout: layout)
        puertaInt = puertaSeleccionada
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        self.collectionView!.register(CeldaMolde.self,forCellWithReuseIdentifier: reuseIdentifier)
        configurarEntorno()
    }

    
}

///
/// Funciones de los elementos del Delegate y DataSource
///

extension MenuMoldeVC{
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
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
    
    override func collectionView(_ collectionView: UICollectionView,
                                 didSelectItemAt indexPath: IndexPath) {
        let scrollLayout = UICollectionViewFlowLayout()
       
        switch puertaInt {
            case 0:
                print("Hola")
            case 1:
                print("Hola")
            case 2:
                if  Data.letras[indexPath.item].identificador != 0{
                     scrollLayout.scrollDirection = .horizontal
                    //mostrarAlerta(title: "En proceso", message: "Sección en proceso de desarrollo, 🤠")
                    let vcs = PalabrasEnBocaVC(collectionViewLayout:scrollLayout, indiceSeleccionado: Data.letras[indexPath.item].identificador)
                    self.navigationController?.pushViewController(vcs, animated: true)
                }
            case 3:
                if  Data.fonemas[indexPath.item].identificador != 0{
                    scrollLayout.scrollDirection = .horizontal
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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,
                                                      for: indexPath) as! CeldaMolde
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
        switch puertaInt {
            case 0:
                print("Hola")
            case 1:
                print("Hola")
            case 2:
                colocarFondo(imagen: "bck_n2_v2")
            case 3:
                colocarFondo(imagen: "bck_n1_v2")
                
            default:
                print("Nada de nada")
        }
    }
}





extension MenuMoldeVC : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)/6.0,
                      height: (view.safeAreaLayoutGuide.layoutFrame.width)/6.0)
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
            if UIDevice().userInterfaceIdiom == .pad{
                switch UIScreen.main.nativeBounds.height {
                    case 1136: //Mini
                        return view.frame.size.height/70
                    case 1334: //Normal
                        return view.frame.size.height/60
                    case 1920, 2208://Pro 10.5
                        return view.frame.size.height/55
                    case 2436: //air 10.9
                        return view.frame.size.height/30
                    case 2688: //Pro 11
                       return view.frame.size.height/28
                    case 1792: //Pro 12.9
                        return view.frame.size.height/28
                    default:
                        return view.frame.size.height/130
                    }
            }
        }
        return 100
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }

}


