//
//  SeleccionarNivelController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-25.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class SeleccionarNivelController: UICollectionViewController, UITabBarControllerDelegate{
    
    private let reuseIdentifier:String = "Cell"
    private var puertaInt: Int?
    
    let nombreImagenesNiveles1:[String] = ["n1_jgo1_01_mdpi","n1_jgo2_01_mdpi",
                                           "n1_jgo3_01_mdpi","n1_jgo4_01_mdpi",
                                           "n1_jgo5_01_mdpi"]
    let nombreImagenesNiveles2:[String] = [
                                           "n2_jgo_btn_memo01_mdpi",
                                           "n2_jgo_btn_memo02_mdpi",
                                           "n2_jgo_btn_intr_mdpi",
                                           "n2_jgo_btn_triv_mdpi"]
    
    let nombreImagenesNiveles3:[String] = [
                                            "btn_jgo_loto01mdpi",
                                            "btn_jgo_loto02mdpi"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.delegate = self
        self.collectionView!.register(CeldaMolde.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.backgroundColor = .white
        tabBarController?.delegate = self
        collectionView.clipsToBounds = true
        collectionView.backgroundColor = .clear
        
        switch puertaInt {
        case 0: // Grupo de palabras
            colocarFondo(imagen: "fondo_menu_lotomdpi")
            break
        case 1: // Puerta amarilla
            colocarFondo(imagen: "bck_n1_juegos_v2")
            break
        case 2: //Puerta palabras
            collectionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
            break
        case 3: // sonidos y simbolos
            colocarFondo(imagen: "bck_n1_juegos_v2")
            break
        default:
            break
        }
        

    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, puertaSeleccionada: Int) {
        super.init(collectionViewLayout: layout)
        puertaInt = puertaSeleccionada
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setToolbarHidden(true, animated: true)
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
        switch puertaInt {
        case 0:
            return nombreImagenesNiveles3.count
        case 1:
            return nombreImagenesNiveles1.count
        case 2:
            return nombreImagenesNiveles2.count
        case 3:
            return nombreImagenesNiveles1.count
        default:
            return nombreImagenesNiveles1.count
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CeldaMolde
        switch puertaInt {
            case 0:
                cell.nivel = nombreImagenesNiveles3[indexPath.item]
                break
            case 1:
                cell.nivel = nombreImagenesNiveles2[indexPath.item]
                break
            case 2:
                cell.nivel = nombreImagenesNiveles2[indexPath.item]
                break
            case 3:
                cell.nivel = nombreImagenesNiveles1[indexPath.item]
                break
            default:
                cell.nivel = nombreImagenesNiveles1[indexPath.item]
            }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .horizontal
        
        
        switch puertaInt{
        case 0:
            if indexPath.item == 0{
                let vcs = InstruccionesVC(imagenInstruccion: "tutorial_loto1mdpi", imagenBoton: "btn_loto_jugarmdpi", juegoLanzar: .loteria1)
                self.navigationController?.pushViewController(vcs, animated: true)
            }else{
                let vcs = InstruccionesVC(imagenInstruccion: "tutorial_loto2mdpi", imagenBoton: "btn_loto_jugarmdpi", juegoLanzar: .loteria2)
                self.navigationController?.pushViewController(vcs, animated: true)
            }
            
        case 1:
            print("Hola")
        case 2:
            seleccionarJuegoPalabrasEnBoca(opcion: indexPath.item)
        default:
            let vcs = SySJuego1VC(collectionViewLayout:scrollLayout, nivelSelecionado: indexPath.item + 1)
            self.navigationController?.pushViewController(vcs, animated: true)
        }
        
        
    }
    
    
    func seleccionarJuegoPalabrasEnBoca(opcion: Int){
        
        switch opcion {
        case 0:
            let vcs = InstruccionesVC(imagenInstruccion: "n2_tutorial_memorama-1", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .memoramaPalabras)
            self.navigationController?.pushViewController(vcs, animated: true)
        case 1:
            let vcs = InstruccionesVC(imagenInstruccion: "n2_turorial_memorama-2", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .memoramaFrases)
            self.navigationController?.pushViewController(vcs, animated: true)
        case 2:
            let vcs = InstruccionesVC(imagenInstruccion: "n2_jgo_tutorial_intruso", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .intruso)
            self.navigationController?.pushViewController(vcs, animated: true)
        case 3:
            let vcs = InstruccionesVC(imagenInstruccion: "n2_jgo_tutorial_trivia_mdpi", imagenBoton: "n2_jgo_btn_jugar_mdpi", juegoLanzar: .trivia)
            self.navigationController?.pushViewController(vcs, animated: true)
        default:
            debugPrint("elemento distinto seleccionado")
        }
    }
    
}

extension SeleccionarNivelController : UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if puertaInt == 0{
            return CGSize(width: (view.frame.width)/1.1,
                                 height: (view.safeAreaLayoutGuide.layoutFrame.height)/4.0)
        }else{
            return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)/1.0,
                             height: (view.safeAreaLayoutGuide.layoutFrame.height)/6.0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        var top:CGFloat = 20
        switch puertaInt {
        case 0:
            top = 100
            break
        case 1:
            top = 50
            break
        case 2:
            top = 100
            break
        case 3:
            top = 30
            break
        default:
            top = 30
        }
        return UIEdgeInsets(top: top, left: 10, bottom: 20, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if puertaInt == 0{
            return 15.0
        }else{
            return 0.0
        }
    }

}
