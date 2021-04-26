//
//  TabBarSimbolosySonidos.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class TabBarSimbolosySonidos: UITabBarController{
    
    var puerta: Int = 0
    
    init(puertaSeleccionada: Int) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
        view.contentMode = .scaleAspectFit
        print(puertaSeleccionada)
        self.puerta = puertaSeleccionada
        print(puerta)
        
        let scrollLayout = UICollectionViewFlowLayout()
        scrollLayout.scrollDirection = .vertical
        
        switch puerta {
        case 0:
            break
        case 1:
            self.title = "A divertirse"
            break
        case 2:
            self.title = "Palabras en boca"
            let teoria = self.crearNavegacion(titulo: "Palabras en la boca", imagenIcono: "icon-study", controller: MenuMoldeVC(collectionViewLayout: scrollLayout, puertaSeleccionada: 2))
            let practica = self.crearNavegacion(titulo: "Juegos", imagenIcono: "icon-play", controller: PresentacionJuegoSyS())
            viewControllers = [teoria,practica]
            break
        case 3:
            let teoría = self.crearNavegacion(titulo: "Símbolos y Sonidos", imagenIcono: "icon-study", controller: MenuMoldeVC(collectionViewLayout: scrollLayout, puertaSeleccionada: 3))
            let practica = self.crearNavegacion(titulo: "Juegos", imagenIcono: "icon-play", controller: PresentacionJuegoSyS())
            viewControllers = [teoría,practica]
            
            if #available(iOS 13.0, *) {
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = .colorTabBarSonidoSimbolo
                let item = UITabBarItemAppearance()
                item.normal.iconColor = .colorNoSeleccionadoTabBarSonidoSimbolo
                item.selected.iconColor = .colorSeleccionadoTabBarSonidoSimbolo
                item.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.colorNoSeleccionadoTabBarSonidoSimbolo]
                item.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.colorSeleccionadoTabBarSonidoSimbolo]
                appearance.stackedLayoutAppearance = item
                appearance.inlineLayoutAppearance = item
                appearance.compactInlineLayoutAppearance = item
                tabBar.standardAppearance = appearance
            } else {
                tabBar.barTintColor = .colorTabBarSonidoSimbolo
                tabBar.unselectedItemTintColor = .colorNoSeleccionadoTabBarSonidoSimbolo
                tabBar.tintColor = .colorSeleccionadoTabBarSonidoSimbolo
                tabBar.isTranslucent = false
            }
            
            if viewControllers?[0] == practica{
                self.title = "Juegos"
            }else{
                self.title = "Sonidos y Símbolos"
            }
            break
        default:
            break
        
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        configurarEntorno()
        
    }
    
    func configurarEntorno() {
        navigationController?.delegate = self
        navigationController?.navigationBar.setBackgroundImage(
            UIColor.colorBarraSuperiorSyS
                .as1ptImage(),
            for: .default
        )
        navigationController?
            .navigationBar
            .shadowImage = UIColor.colorLineaBarraSuperiorSyS.as1ptImage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = true
    }
    
}
