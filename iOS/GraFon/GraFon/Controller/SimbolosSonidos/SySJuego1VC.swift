//
//  SySJuego1VCCollectionViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-14.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SySJuego1VC: UICollectionViewController, UICollectionViewDelegateFlowLayout{

    override func viewDidLoad() {
        self.title = "Juego 1"
        super.viewDidLoad()
        configurar()
        self.collectionView!.register(JuegoSySCelda.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.Juego1SyS.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! JuegoSySCelda
        cell.ejercicio = Data.Juego1SyS[indexPath.item]
        
        cell.contentView.isUserInteractionEnabled = false
        return cell
    }
    override func viewDidLayoutSubviews() {
        guard let indexPath = collectionView.indexPathsForVisibleItems.first else {
            return
        }
        puntaje.title = "\(indexPath.item + 1) | \(Data.Juego1SyS.count)"
        barraProgreso.progress = Float(indexPath.item)/Float(Data.Juego1SyS.count)
        
    }
    
    private let puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "1 | \(Data.Juego1SyS.count)",style: .plain, target: nil, action: nil)
    }()
    

    private let barraProgreso:UIProgressView = {
        let barraprog = UIProgressView(progressViewStyle: .default)
        barraprog.isUserInteractionEnabled = true
        barraprog.translatesAutoresizingMaskIntoConstraints = false
        barraprog.progressTintColor = .colorLineaBarraSuperiorSyS
        return barraprog
    }()
    
}
extension SySJuego1VC{
    func configurar(){
        barraProgreso.widthAnchor.constraint(equalToConstant: view.frame.width - 100).isActive = true
        let items = [UIBarButtonItem(customView: barraProgreso), puntaje]
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        collectionView.backgroundColor = .white
        collectionView?.isPagingEnabled = true
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
                            return CGSize(width: view.frame.width, height: view.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
