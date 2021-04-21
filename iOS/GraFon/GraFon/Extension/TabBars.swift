//
//  TabBars.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

extension UITabBarController{
    func crearNavegacion(titulo: String, imagenIcono: String, controller: UIViewController) -> UINavigationController{
        let navController = UINavigationController(rootViewController: controller)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imagenIcono)
        return navController
    }
}
