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
        super.viewDidLoad()
        configurar()
        constraintsDobleBarra()
        self.collectionView!.register(JuegoSySCelda.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
    }
    
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.Juego1SyS.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! JuegoSySCelda
        cell.ejercicio = Data.Juego1SyS[indexPath.item]
        puntaje.title = "\(indexPath.item + 1) | \(Data.Juego1SyS.count)"
        barraProgreso.progress = Float(indexPath.item)/Float(Data.Juego1SyS.count)
        cell.contentView.isUserInteractionEnabled = false
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    // MARK: Barra adicional
    
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
    
    private let textoSimbolos: UILabel = {
        let texto = UILabel()
        texto.translatesAutoresizingMaskIntoConstraints = false
        texto.text = "Juego 1"
        texto.textColor = .colorBarraSuperiorSyS
        texto.contentMode = .scaleAspectFit
        texto.adjustsFontForContentSizeCategory = true
        return texto
    }()
    
    private let imagenPajaroBarraAdicional:UIButton = {
        let boton = UIButton(type: .custom)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setImage(UIImage(named: "iconbar1"), for: .normal)
        boton.contentMode = .scaleAspectFit
        boton.target(forAction: #selector(selector), withSender: .none)
        return boton
    }()
    
    @objc func selector(){
        print("sss")
    }
    
    func constraintsDobleBarra(){
        let barra = UIView()
        barra.translatesAutoresizingMaskIntoConstraints = false
        barra.contentMode = .scaleAspectFit
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(barra)
        barra.addSubview(textoSimbolos)
        barra.addSubview(imagenPajaroBarraAdicional)
        barra.backgroundColor = .colorToolBarSyS
        barraProgreso.widthAnchor.constraint(equalToConstant: view.frame.width - 100).isActive = true
        
        NSLayoutConstraint.activate([
            barra.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            barra.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            barra.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            barra.widthAnchor.constraint(equalTo: view.widthAnchor),
            barra.heightAnchor.constraint(equalToConstant: 50),
            textoSimbolos.topAnchor.constraint(equalTo: barra.topAnchor),
            textoSimbolos.bottomAnchor.constraint(equalTo: barra.bottomAnchor),
            textoSimbolos.leadingAnchor.constraint(equalTo: barra.leadingAnchor,
                                                        constant: 20),
            imagenPajaroBarraAdicional.topAnchor.constraint(equalTo: barra.topAnchor,
                                                        constant: 10),
            imagenPajaroBarraAdicional.bottomAnchor.constraint(equalTo: barra.bottomAnchor,
                                                        constant: -10),
            imagenPajaroBarraAdicional.trailingAnchor.constraint(equalTo: barra.trailingAnchor,
                                                        constant: -20),
            imagenPajaroBarraAdicional.widthAnchor.constraint(equalToConstant: 35),
            
            collectionView.topAnchor.constraint(equalTo: barra.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}
extension SySJuego1VC{
    func configurar(){
        constraintsDobleBarra()
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
