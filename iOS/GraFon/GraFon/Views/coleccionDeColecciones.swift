//
//  coleccionDeColecciones.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-09.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaColeccionDeColecciones: UICollectionViewCell {
    
    lazy var texto: String = ""
    var indice: Int?
    weak var delegate:SeleccionarTarjetaDelegate?
    var selectedIndexPath: IndexPath!
    var puertaSeleccionada: Int = 0
    
    let coleccionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let coleccion = UICollectionView(frame: .zero, collectionViewLayout: layout)
        coleccion.translatesAutoresizingMaskIntoConstraints = false
        return coleccion
    }()
    
    func configurarConstraints(){
        addSubview(coleccionView)
        translatesAutoresizingMaskIntoConstraints = false
        contentMode = .scaleAspectFit
        addSubview(coleccionView)
        
        NSLayoutConstraint.activate([
            coleccionView.topAnchor.constraint(equalTo: topAnchor),
            coleccionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            coleccionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            coleccionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        coleccionView.delegate = self
        coleccionView.dataSource = self
        coleccionView.register(CeldaPalabras.self, forCellWithReuseIdentifier: "Tarjeta")
        coleccionView.isScrollEnabled = true
        if puertaSeleccionada == 0{
            coleccionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca        }
        if puertaSeleccionada == 2{
            coleccionView.backgroundColor = .colorFondoTarjetasGrupoDePalabras
        }
        
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se reclama Celda de tarjeta")
    }
}
