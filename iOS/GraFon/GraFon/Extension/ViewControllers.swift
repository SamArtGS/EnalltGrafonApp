//
//  ViewControllers.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

extension UIViewController{
    func presentacionModal(viewController: UIViewController, halfTransition: inout HalfModalTransitioningDelegate?){
        if #available(iOS 13, *) {
            let olvidoVC = viewController
            olvidoVC.modalPresentationStyle = .automatic
            present(olvidoVC, animated: true)
        }else{
            let vc = viewController
            halfTransition = HalfModalTransitioningDelegate(viewController: self, presentingViewController: vc)
            vc.view.layer.cornerRadius  = 20
            vc.view.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
            vc.view.clipsToBounds = true
            vc.view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)
            vc.modalPresentationStyle = .custom
            self.transitioningDelegate = halfTransition
            present(vc,animated: true)
        }
    }
    
    func colocarFondo(imagen: String){
        let imageView: UIImageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        imageView.image = UIImage(named: imagen)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        view.sendSubviewToBack(imageView)
    }
    
    func colocarFondoEstirado(imagen: String){
        let imageView: UIImageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        imageView.image = UIImage(named: imagen)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        view.sendSubviewToBack(imageView)
    }
}
