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
        controller.tabBarItem.image = UIImage(named: imagenIcono)
        controller.view.backgroundColor = .white
        return controller
    }
}

/// Eliminados:

/*
 //        let BarButtonItemDerecho = UIBarButtonItem.menuButton(self,
 //                                                              action: #selector(juegos),
 //                                                              imageName: "iconbar1")
 //        self.navigationItem.rightBarButtonItem = BarButtonItemDerecho
 
 */
