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
    
    private let pilaGrupoPalabrasVertical: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.isUserInteractionEnabled = true
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let pilaGrupoPalabrasHorizontal: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .horizontal
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.isUserInteractionEnabled = true
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    
    init(collectionViewLayout layout: UICollectionViewLayout, puertaSeleccionada: Int) {
        super.init(collectionViewLayout: layout)
        puertaInt = puertaSeleccionada
        
        if puertaInt == 0{
            dibujarStackGrupoPalabras()
        }
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
                    let vcs = MenuTarjetas(collectionViewLayout:scrollLayout,puertaSeleccionada: 2,
                                           indiceSeleccionado: Data.letras[indexPath.item].identificador)
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
                break
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
        collectionView.isScrollEnabled = false
        collectionView.isPagingEnabled = false
        switch puertaInt {
            case 0:
                colocarFondo(imagen: "Back-menu_ipad_N3")
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
        if UIDevice().userInterfaceIdiom == .phone {
            return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)/6.0,
                      height: (view.safeAreaLayoutGuide.layoutFrame.width)/6.0)
            
        }else{
            return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)/6.0,
                      height: (view.safeAreaLayoutGuide.layoutFrame.width)/6.5)
        }
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


extension MenuMoldeVC{
    func dibujarStackGrupoPalabras(){
        
        let imagen1 = UIImageView(image: UIImage(named: Data.grupoPalabras[0].imagenGrupo))
        let imagen2 = UIImageView(image: UIImage(named: Data.grupoPalabras[1].imagenGrupo))
        let imagen3 = UIImageView(image: UIImage(named: Data.grupoPalabras[2].imagenGrupo))
        
        imagen1.contentMode = .scaleAspectFit
        imagen2.contentMode = .scaleAspectFit
        imagen3.contentMode = .scaleAspectFit
        
        imagen1.isUserInteractionEnabled = true
        imagen2.isUserInteractionEnabled = true
        imagen3.isUserInteractionEnabled = true
        
        imagen1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(irTarjeta1)))
        imagen2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(irTarjeta2)))
        imagen3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(irTarjeta3)))
        
        
        view.addSubview(pilaGrupoPalabrasVertical)
        pilaGrupoPalabrasHorizontal.addArrangedSubview(imagen2)
        pilaGrupoPalabrasHorizontal.addArrangedSubview(imagen3)
        pilaGrupoPalabrasVertical.addArrangedSubview(imagen1)
        pilaGrupoPalabrasVertical.addArrangedSubview(pilaGrupoPalabrasHorizontal)
        
        
        NSLayoutConstraint.activate([
            pilaGrupoPalabrasVertical.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pilaGrupoPalabrasVertical.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pilaGrupoPalabrasVertical.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pilaGrupoPalabrasVertical.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            
        ])
    }
    
    @objc func irTarjeta1(){
        let scrollLayout = UICollectionViewFlowLayout()
       scrollLayout.scrollDirection = .horizontal
       let vcs = MenuTarjetas(collectionViewLayout:scrollLayout,puertaSeleccionada: 0, indiceSeleccionado: 1)
       self.navigationController?.pushViewController(vcs, animated: true)
    }
    
    @objc func irTarjeta2(){
        let scrollLayout = UICollectionViewFlowLayout()
       scrollLayout.scrollDirection = .horizontal
       let vcs = MenuTarjetas(collectionViewLayout:scrollLayout,puertaSeleccionada: 0, indiceSeleccionado: 2)
       self.navigationController?.pushViewController(vcs, animated: true)
    }
    @objc func irTarjeta3(){
        let scrollLayout = UICollectionViewFlowLayout()
       scrollLayout.scrollDirection = .horizontal
       let vcs = MenuTarjetas(collectionViewLayout:scrollLayout,puertaSeleccionada: 0, indiceSeleccionado: 3)
       self.navigationController?.pushViewController(vcs, animated: true)
    }
    
}
