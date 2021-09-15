//
//  PalabrasEnBocaVC.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-14.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

protocol SeleccionarTarjetaDelegate: AnyObject {
    func mostrarTarjeta(seleccionado:Int)
}

class MenuTarjetas: UICollectionViewController, UIToolbarDelegate{
    
    private let reuseIdentifier = "Cell"
    private var indice: Int?
    private let zoom = ZoomTransitioningDelegate()
    private var puertaSeleccionada: Int = 0
    
    private let items = [UIBarButtonItem(title: "", style: .plain, target: self, action: nil),
                         UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
                         UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = zoom
        collectionView.backgroundColor = .white
        collectionView.isPagingEnabled = true
        
        self.collectionView!.register(CeldaColeccionDeColecciones.self, forCellWithReuseIdentifier: reuseIdentifier)
        configuracionToolBar()
    }
    
    func configuracionToolBar(){
        if puertaSeleccionada == 0{
            self.title = "Más que una palabra"
            self.navigationController?.toolbar.isTranslucent = false
            self.navigationController?.toolbar.barTintColor = .colorTabBarGruposPalabras
            self.navigationController?.toolbar.tintColor = .white
            
        }
        if puertaSeleccionada == 2{
            self.title = "Palabras en la boca"
            self.navigationController?.toolbar.isTranslucent = false
            self.navigationController?.toolbar.barTintColor = .colorTabBarPalabrasEnBoca
            self.navigationController?.toolbar.tintColor = .white
        }
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, puertaSeleccionada: Int,indiceSeleccionado: Int) {
        super.init(collectionViewLayout: layout)
        indice = indiceSeleccionado
        self.puertaSeleccionada = puertaSeleccionada
        self.toolbarItems = items
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
        let dicindice = indice ?? 1
        DispatchQueue.main.async {
            self.collectionView.scrollToItem(at: IndexPath(item: dicindice - 1, section: 0), at: .centeredHorizontally, animated: false)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)

    }
}


extension MenuTarjetas: SeleccionarTarjetaDelegate{
    
    func mostrarTarjeta(seleccionado: Int) {
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        //var tarjetaSeleccionada: Tarjeta?
        
        switch puertaSeleccionada {
            case 0:
                
                if Data.grupoPalabras.filter({letra in
                                                letra.identificador != 0})[(indice ?? 0)-1].tarjetas?.count ?? 0 <= seleccionado &&
                    (Data.grupoPalabras.filter({letra in
                                                letra.identificador == indice}).first?.otrosCasos != nil ||
                        Data.grupoPalabras.filter({letra in letra.identificador == indice}).first?.otrosGrupos != nil){
                    
                    
                    if seleccionado ==  Data.grupoPalabras.filter({letra in
                                                                    letra.identificador != 0})[(indice ?? 0)-1].tarjetas!.count {
                        let vcs = TarjetaSeleccionadaController(collectionViewLayout: scrollLayout, silabas: Data.grupoPalabras.filter({letra in
                            letra.identificador == indice}).first?.otrosCasos, puerta: puertaSeleccionada)
                        vcs.letraTitulo = "Más que una palabra"
                        
                        self.navigationController?.pushViewController(vcs, animated: true)
                        
                    }
                    
                    if seleccionado ==  Data.grupoPalabras.filter({letra in
                                                                    letra.identificador != 0})[(indice ?? 0)-1].tarjetas!.count + 1{
                        
                    let vcss = ExcepcionesController(excepciones: Data.grupoPalabras.filter({grupo in
                            grupo.identificador == indice}).first?.otrosGrupos, titulo: "Más que una palabra", puerta: 0)
                        vcss.explicacion.text = "Otros grupos"
                        self.navigationController?.pushViewController(vcss, animated: true)
                    }
                }else{
                    let tarjetaSeleccionada = Data.grupoPalabras.filter{letra in
                        letra.identificador != 0}[(indice ?? 0)-1].tarjetas?[seleccionado]
                        
                    let vcs = TarjetaSeleccionadaController(collectionViewLayout:scrollLayout,
                                                                tarjeta: tarjetaSeleccionada, puerta: puertaSeleccionada)
                        vcs.letraTitulo = items[0].title
                        self.navigationController?.pushViewController(vcs, animated: true)
                }
                
            case 2:
                
                if Data.letras.filter({letra in
                    letra.identificador != 0})[(indice ?? 0)-1].tarjetas?.count == seleccionado &&
                    Data.letras.filter({letra in
                                            letra.identificador == indice}).first?.grafiasPocoFrecuentes != nil
                    {
                    let vcs = TarjetaSeleccionadaController(collectionViewLayout: scrollLayout, silabas: Data.letras.filter({letra in
                                                                                                                                letra.identificador == indice}).first?.grafiasPocoFrecuentes, puerta: puertaSeleccionada)
                        vcs.letraTitulo = "Palabras en la boca"
                        self.navigationController?.pushViewController(vcs, animated: true)
                    
                    
                }else{
                    let tarjetaSeleccionada = Data.letras.filter{letra in
                        letra.identificador != 0}[(indice ?? 0)-1].tarjetas?[seleccionado]
                    let vcs = TarjetaSeleccionadaController(collectionViewLayout:scrollLayout,
                                                            tarjeta: tarjetaSeleccionada, puerta: puertaSeleccionada)
                    vcs.letraTitulo = items[0].title
                    self.navigationController?.pushViewController(vcs, animated: true)
                }
                
                
            default:
                let tarjetaSeleccionada = Data.letras.filter{letra in
                    letra.identificador != 0}[(indice ?? 0)-1].tarjetas?[seleccionado]
                let vcs = TarjetaSeleccionadaController(collectionViewLayout:scrollLayout,
                                                        tarjeta: tarjetaSeleccionada, puerta: puertaSeleccionada)
                vcs.letraTitulo = items[0].title
                self.navigationController?.pushViewController(vcs, animated: true)
        }
      
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if puertaSeleccionada == 0{
            return Data.grupoPalabras.filter{letra in letra.identificador != 0}.count
        }
        else{
            return Data.letras.filter{letra in letra.identificador != 0}.count
        }
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CeldaColeccionDeColecciones
        cell.delegate = self
        cell.indice = indexPath.item + 1
        cell.coleccionView.reloadData()
        cell.puertaSeleccionada = puertaSeleccionada
        return cell
    }
    
    override func viewDidLayoutSubviews() {
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        
        if puertaSeleccionada == 0{
            let filtrado = Data.grupoPalabras.filter{letra in letra.identificador != 0}
            indice = filtrado[indexPath.item].identificador
            items[0].title = "\(filtrado[indexPath.item].letra)"
            items[2].title = "\(filtrado[indexPath.item].identificador) / \(filtrado.count)"
        }
        if puertaSeleccionada == 2{
            let filtrado = Data.letras.filter{letra in letra.identificador != 0}
            indice = filtrado[indexPath.item].identificador
            items[0].title = "\(filtrado[indexPath.item].letra)"
            items[2].title = "\(filtrado[indexPath.item].identificador) / \(filtrado.count)"
        }
        
        
    }
}




extension CeldaColeccionDeColecciones: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if puertaSeleccionada == 0{
            
            if Data.grupoPalabras.filter({letra in
                                    letra.identificador == indice}).first?.otrosCasos != nil{
                if Data.grupoPalabras.filter({letra in
                                                letra.identificador == indice}).first?.otrosGrupos != nil{
                    return (Data.grupoPalabras.filter{letra in
                        letra.identificador == indice}
                        .first?.tarjetas?.count ?? 0) + 2
                }else{
                    return (Data.grupoPalabras.filter{letra in
                        letra.identificador == indice}
                        .first?.tarjetas?.count ?? 0) + 1
                    
                }
                
            }else{
                return Data.grupoPalabras.filter{letra in
                    letra.identificador == indice}
                    .first?.tarjetas?.count ?? 0
            }
        }
        if puertaSeleccionada == 2{
            
            if Data.letras.filter({letra in
                                    letra.identificador == indice}).first?.grafiasPocoFrecuentes != nil{
                print("Si tiene grafía poco frecuente", (Data.letras.filter{letra in
                        letra.identificador == indice}
                        .first?.tarjetas?.count ?? 0) + 1)
                return (Data.letras.filter{letra in
                    letra.identificador == indice}
                    .first?.tarjetas?.count ?? 0) + 1
                
            }else{
                return Data.letras.filter{letra in
                    letra.identificador == indice}
                    .first?.tarjetas?.count ?? 0
            }
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coleccionView.dequeueReusableCell(withReuseIdentifier: "Tarjeta", for: indexPath) as! CeldaPalabras
        
        
        if puertaSeleccionada == 0{
            
            
            if indexPath.item < (Data.grupoPalabras.filter({letra in
                                                    letra.identificador == indice})
                                    .first?.tarjetas?.count ?? 0) {
                
                cell.palabrasEnTarjeta = Data.grupoPalabras.filter{letra
                    in letra.identificador == indice}
                    .first?.tarjetas?[indexPath.item]
                cell.palabrerio.textColor = .colorLetrasGrupoPalabras
            }else{
                if Data.grupoPalabras.filter({letra in
                                        letra.identificador == indice})
                    .first?.otrosCasos != nil
                    && indexPath.item  == (Data.grupoPalabras.filter({letra in
                    letra.identificador == indice})
                    .first?.tarjetas?.count ?? 0)  {
                    cell.palabrerio.textColor = .colorLetraVerde
                    cell.palabrerio.text = "Otros casos"
    
                }
                if Data.grupoPalabras.filter({letra in
                                        letra.identificador == indice})
                    .first?.otrosGrupos != nil
                    && indexPath.item - 1 == (Data.grupoPalabras.filter({letra in
                    letra.identificador == indice})
                    .first?.tarjetas?.count ?? 0)  {
                    cell.palabrerio.textColor = .colorLetraVerde
                    cell.palabrerio.text = "Otros grupos"
                    
                }
            }
        }
        if puertaSeleccionada == 2{
            
            if indexPath.item < (Data.letras.filter({letra in
                                                    letra.identificador == indice})
                                    .first?.tarjetas?.count ?? 0) {
                
                cell.palabrasEnTarjeta = Data.letras.filter{letra
                    in letra.identificador == indice}
                    .first?.tarjetas?[indexPath.item]
            }else{
                if Data.letras.filter({letra in
                                        letra.identificador == indice})
                    .first?.grafiasPocoFrecuentes != nil
                    && indexPath.item == (Data.letras.filter({letra in
                    letra.identificador == indice})
                    .first?.tarjetas?.count ?? 0)  {
                    
                    cell.palabrerio.text = "Grafías \npoco \nfrecuentes"
                    
                }
            }

            
            
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.mostrarTarjeta(seleccionado: indexPath.item)
    }
}



extension MenuTarjetas: UICollectionViewDelegateFlowLayout{
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width),
                      height: (view.safeAreaLayoutGuide.layoutFrame.height))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        collectionView.reloadData()
    }
}
    
extension CeldaColeccionDeColecciones: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if UIDevice().userInterfaceIdiom == .phone {
            return CGSize(width: (safeAreaLayoutGuide.layoutFrame.width/3.2),
                          height: (safeAreaLayoutGuide.layoutFrame.width/2.5))
        }else{
            return CGSize(width: 150, height: 200)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        //top, left, bottom, right
        
        if UIDevice().userInterfaceIdiom == .phone {
            return UIEdgeInsets(top: 10, left: 5, bottom: 20, right: 5)
        }else{
            return UIEdgeInsets(top: 20, left: 15, bottom: 20, right: 15)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice().userInterfaceIdiom == .phone {
            return 5
        }else{
            return 10
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if UIDevice().userInterfaceIdiom == .phone {
            return 10
        }else{
            return 10
        }
    }
}
