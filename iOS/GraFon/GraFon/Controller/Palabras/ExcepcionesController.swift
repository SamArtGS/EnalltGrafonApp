//
//  ExcepcionesController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-06-16.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class ExcepcionesController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Retour", style: .plain, target: self, action: #selector(self.back))
        // Do any additional setup after loading the view.
    }
    
    @objc func back(){
        let firstVC = self.navigationController?.viewControllers[(self.navigationController?.viewControllers.count ?? 2) - 2] as? TarjetaSeleccionadaController
        if let firstView = firstVC?.view{
            self.navigationController?.popViewController(animated: false)
            UIView.transition(from: self.view, to: firstView, duration: 0.85, options: [.transitionFlipFromLeft])
            firstVC?.title = title
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    

}
