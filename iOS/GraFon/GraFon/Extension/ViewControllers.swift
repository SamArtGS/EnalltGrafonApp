//
//  ViewControllers.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit


extension UIViewController{
    @objc func salir(){
        let alert = UIAlertController(title: "SALIR", message: "¿Abandonar el juego?", preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: {[weak self]_ in
            guard let viewController = self?.navigationController?.viewControllers else { return }
            self?.navigationController?.popToViewController(viewController[viewController.count - 3], animated: true)
            self?.navigationController?.setToolbarHidden(true, animated: false)
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default))
        

        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func salir2(){
        let alert = UIAlertController(title: "SALIR", message: "¿Abandonar el juego?", preferredStyle: .alert)
        
        
        alert.addAction(UIAlertAction(title: "Sí", style: .default, handler: {[weak self]_ in
            //guard let viewController = self?.navigationController?.viewControllers else { return }
            self?.navigationController?.popViewController(animated: true)
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default))
        

        self.present(alert, animated: true, completion: nil)
    }
    
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
    
    func colocarFondoCompleto(imagen: String){
        let imageView: UIImageView = UIImageView(frame: view.bounds)
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        imageView.image = UIImage(named: imagen)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
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
extension UIStackView {

    func colorFondo(color: UIColor) {
        let subview = UIView(frame: bounds)
        subview.backgroundColor = color
        subview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subview, at: 0)
    }

}

extension UINavigationController {
   open override var preferredStatusBarStyle: UIStatusBarStyle {
      return topViewController?.preferredStatusBarStyle ?? .default
   }
}

extension UIButton {
    private func imageWithColor(color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        context?.setFillColor(color.cgColor)
        context?.fill(rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }

    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        self.setBackgroundImage(imageWithColor(color: color), for: state)
    }
}
