//
//  TabBarSimbolosySonidos.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class TabBarTeoriaJuegos: UITabBarController{
    
    deinit {
        print("Se ha reciclado la página de tabBar")
    }
    
    /// Constructor: TabBar se comporta como un VC que contiene a los VC cuando se selecciona el tab bar correspondiente
    
    var halfModalTransitioningDelegate: HalfModalTransitioningDelegate?
    var puertaSeleccionada: Int
    init(puertaSeleccionada: Int) {
        self.puertaSeleccionada = puertaSeleccionada
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
        view.contentMode = .scaleAspectFit
        colocarElementosDependiendoPuerta(puerta: puertaSeleccionada)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self  // <- Para delegar las funciones de UITabBarControllerDelegate a mi TabBarController
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        navigationController?.delegate = self
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = true
    }
    
}



extension TabBarTeoriaJuegos{
    
    /// Extensión dedicada a personalizar la Pantalla de TabBar Home dependiendo de la puerta seleccionada
    /// - Parameter puerta: puerta que ha sido seleccionada, basada en su índice desde 0 a 3
    
    func colocarElementosDependiendoPuerta(puerta: Int){
        
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        let scrollJuegos = UICollectionViewFlowLayout()
        scrollJuegos.scrollDirection = .vertical
        
        switch puerta {
            case 0:
                self.title = "Más que una palabra"
                
                let teoria = crearNavegacion(titulo: "Más que una palabra",
                                             imagenIcono: "icon-study",
                                             controller: MenuMoldeVC(collectionViewLayout: scrollLayout,
                                                                     puertaSeleccionada: puerta)
                                             )
                let practica = crearNavegacion(titulo: "Lotofón",
                                               imagenIcono: "icon-play",
                                               controller: SeleccionarNivelController(collectionViewLayout: scrollJuegos, puertaSeleccionada: puerta)
                                             )
                viewControllers = [teoria,practica]
                
                colorearTabBar(colorFondo:          .colorTabBarGruposPalabras,
                               colorSeleccionado:   .colorSeleccionadoTabBarGruposPalabras,
                               colorNoSeleccionado: .colorNoSeleccionadoTabBarGruposPalabras
                )
                colorearNavigationBar(colorFondo: .colorNavigationBarGruposPalabras,
                                      colorLineaAdorno: .colorLineaBarraSuperiorGruposPalabras,
                                      colorLetras: .white
                )
                break
            case 1:
                self.title = "A divertirse"
                break
            case 2:
                self.title = "Palabras en la boca"
                
                let teoria = crearNavegacion(titulo: "Palabras en la boca",
                                             imagenIcono: "icon-study",
                                             controller: MenuMoldeVC(collectionViewLayout: scrollLayout,puertaSeleccionada: puerta)
                                             )
                let practica = crearNavegacion(titulo: "Grafefón",
                                               imagenIcono: "icon-play",
                                               controller: SeleccionarNivelController(collectionViewLayout: scrollJuegos, puertaSeleccionada: puerta)
                                             )
                viewControllers = [teoria,practica]
                
                colorearTabBar(colorFondo:          .colorTabBarPalabrasEnBoca,
                               colorSeleccionado:   .colorSeleccionadoTabBarPalabrasEnBoca,
                               colorNoSeleccionado: .colorNoSeleccionadoTabBarPalabrasEnBoca
                )
                colorearNavigationBar(colorFondo: .colorBarraSuperiorPalabras,
                                      colorLineaAdorno: .colorLineaBarraSuperiorPalabras,
                                      colorLetras: .white
                )
                break
            case 3:
                self.title = "Símbolos y Sonidos"
                
                let teoría = crearNavegacion(titulo: "Símbolos y Sonidos",
                                             imagenIcono: "icon-study",
                                             controller: MenuMoldeVC(collectionViewLayout: scrollLayout,                              puertaSeleccionada: puerta)
                )
                let practica = crearNavegacion(titulo: "Simbolofón",
                                               imagenIcono: "icon-play",
                                               controller: SeleccionarNivelController(collectionViewLayout: scrollJuegos, puertaSeleccionada: puerta)
                )
                
                viewControllers = [teoría,practica]
                
                colorearTabBar(colorFondo:          .colorTabBarSonidoSimbolo,
                               colorSeleccionado:   .colorSeleccionadoTabBarSonidoSimbolo,
                               colorNoSeleccionado: .colorNoSeleccionadoTabBarSonidoSimbolo
                )
                colorearNavigationBar(colorFondo: .colorBarraSuperiorSyS,
                                      colorLineaAdorno: .colorLineaBarraSuperiorSyS,
                                      colorLetras: .white
                )
                break
            default:
                break
        }
    }
}


extension TabBarTeoriaJuegos: UITabBarControllerDelegate{
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let selectedIndex = tabBarController.viewControllers?.firstIndex(of: viewController)!
        if selectedIndex == 0 {
            self.title = viewController.title
            self.navigationItem.rightBarButtonItem = nil
        }
        if selectedIndex == 1{
            switch puertaSeleccionada {
            case 0:
                self.title = viewController.title
                let BarButtonItemDerecho = menuButton(self,
                action: #selector(instrucciones),
                imageName: "icons8-query")
                self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
            case 2:
                self.title = viewController.title
            default:
                self.title = viewController.title
                let BarButtonItemDerecho = menuButton(self,
                action: #selector(instrucciones),
                imageName: "icons8-query")
                self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
            }
            
            
        }
    }
    @objc func instrucciones(){
        presentacionModal(viewController: PresentacionJuegoSyS(), halfTransition: &halfModalTransitioningDelegate)
    }
}
