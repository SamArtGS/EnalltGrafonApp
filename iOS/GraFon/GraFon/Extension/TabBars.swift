//
//  TabBars.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

extension UITabBarController: UINavigationControllerDelegate {
    func crearNavegacion(titulo: String, imagenIcono: String, controller: UIViewController) -> UIViewController{
        controller.title = titulo
        controller.navigationController?.title = titulo
        controller.tabBarItem.image = UIImage(named: imagenIcono)
        controller.view.backgroundColor = .white
        return controller
    }
    func crearNavegacionBoton(titulo: String, imagenIcono: String, controller: UIViewController) -> UIViewController{
        controller.title = titulo
        controller.navigationController?.title = titulo
        controller.tabBarItem.image = UIImage(named: imagenIcono)
        controller.view.backgroundColor = .white
        
        return controller
    }
}

///
/// Funciones genericas de personalinzación para las ventanas de Tab Bar + Navigation Bar
///

extension UITabBarController: UINavigationBarDelegate{
    
    func colorearTabBar(colorFondo: UIColor, colorSeleccionado: UIColor, colorNoSeleccionado: UIColor){
        
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = colorFondo
            appearance.configureWithOpaqueBackground()
            let item = UITabBarItemAppearance()
            item.normal.iconColor = colorNoSeleccionado
            item.selected.iconColor = colorSeleccionado
            item.normal.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor: colorNoSeleccionado,
                NSAttributedString.Key.font: UIFont.Lato(.regular, size: 10)
            ]
            item.selected.titleTextAttributes = [NSAttributedString.Key
                                                .foregroundColor: colorSeleccionado]
            appearance.stackedLayoutAppearance = item
            appearance.inlineLayoutAppearance = item
            appearance.compactInlineLayoutAppearance = item
            tabBar.standardAppearance = appearance
            //tabBar.scrollEdgeAppearance = appearance
        }else if #available(iOS 13.0, *) {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = colorFondo
            
            let item = UITabBarItemAppearance()
            item.normal.iconColor = colorNoSeleccionado
            item.selected.iconColor = colorSeleccionado
            item.normal.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor: colorNoSeleccionado,
                NSAttributedString.Key.font: UIFont.Lato(.regular, size: 10)
            ]
            item.selected.titleTextAttributes = [NSAttributedString.Key
                                                .foregroundColor: colorSeleccionado]
            appearance.stackedLayoutAppearance = item
            appearance.inlineLayoutAppearance = item
            appearance.compactInlineLayoutAppearance = item
            tabBar.standardAppearance = appearance
            
        }else{
            tabBar.barTintColor = colorFondo
            tabBar.unselectedItemTintColor = colorNoSeleccionado
            tabBar.tintColor = colorSeleccionado
            tabBar.isTranslucent = false
        }
    }
    
    func colorearNavigationBar(colorFondo: UIColor, colorLineaAdorno: UIColor, colorLetras: UIColor){
        if #available(iOS 15.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = colorFondo
            navigationController?.delegate = self
            navigationController?.navigationBar.delegate = self
            navigationController?.navigationBar.standardAppearance = appearance;
            navigationController?.navigationBar.scrollEdgeAppearance = appearance;
            navigationController?.navigationBar.compactAppearance = appearance;
            
        } else {
            let apariencia = UINavigationBar.appearance()
            apariencia.setBackgroundImage(colorFondo.as1ptImage(), for: .default)
            apariencia.shadowImage = colorLineaAdorno.as1ptImage()
            apariencia.titleTextAttributes = [
                NSAttributedString.Key.foregroundColor: colorLetras,
                NSAttributedString.Key.font: UIFont.Lato(.regular, size: 18)
            ]
            apariencia.tintColor = colorLetras
            navigationController?.delegate = self
            navigationController?.navigationBar.delegate = self
        }
        
        
    }
}

