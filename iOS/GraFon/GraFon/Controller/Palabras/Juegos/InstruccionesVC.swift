//
//  InstruccionesVC.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/25/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

enum JuegoLanzarPalabras {
    case memoramaPalabras
    case memoramaFrases
    case intruso
    case trivia
    case loteria1
    case loteria2
    
    func retuTitle() -> String {
        switch self {
        case .intruso:
            return "Intruso"
        case .memoramaPalabras:
            return "Memorama Palabras"
        case .memoramaFrases:
            return "Memorama Frases"
        case .trivia:
            return "Trivia"
        case .loteria1:
            return "Lotofón 1"
        case .loteria2:
            return "Lotofón 2"
            
        }
    }
}

class InstruccionesVC: UIViewController {
    
    private var juegoLanzar:JuegoLanzarPalabras
    
    init(imagenInstruccion: String, imagenBoton: String, juegoLanzar: JuegoLanzarPalabras, modal: Bool = false){
        self.juegoLanzar = juegoLanzar
        super.init(nibName: nil, bundle: nil)
        
        
        imagenPresentacion.image = UIImage(named: imagenInstruccion)
        
        switch juegoLanzar {
        case .intruso,.memoramaFrases,.memoramaPalabras,.trivia:
            view.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
        case .loteria1, .loteria2:
            view.backgroundColor = .colorVerdeFondoLoteria
        }
        
        
        if modal{
            botonInicioJuego.setImage(UIImage(named: imagenBoton), for: .normal)
            botonInicioJuego.addTarget(self, action: #selector(dismissA), for: .touchUpInside)
        }else{
            botonInicioJuego.setImage(UIImage(named: imagenBoton), for: .normal)
            botonInicioJuego.addTarget(self, action: #selector(iniciar), for: .touchUpInside)
        }
    }
    @objc func dismissA(){
        self.dismiss(animated: true)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imagenPresentacion:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.enableZoom()
        return imageView
    }()
    
    private let pilaElementos: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    let botonInicioJuego:UIButton = {
        let botonInicio = UIButton(type: .custom)
        botonInicio.translatesAutoresizingMaskIntoConstraints = false
        botonInicio.contentMode = .scaleAspectFit
        
        return botonInicio
    }()
    
    @objc
    private func iniciar(){
        
        switch juegoLanzar {
        case .memoramaFrases:
            let collect = UICollectionViewFlowLayout()
            collect.scrollDirection = .vertical
            let viewz = MemoramaViewController(collectionFlow: collect, tipoMemorama: .memoramaFrases)
            viewz.title = juegoLanzar.retuTitle()
            navigationController?.pushViewController(viewz, animated: true)
            
        case .memoramaPalabras:
            let collect = UICollectionViewFlowLayout()
            collect.scrollDirection = .vertical
            let viewz = MemoramaViewController(collectionFlow: collect, tipoMemorama: .memoramaPalabras)
            viewz.title = juegoLanzar.retuTitle()
            navigationController?.pushViewController(viewz, animated: true)
        case .intruso:
            let viewz = EncuentraIntrusoViewController()
            viewz.title = juegoLanzar.retuTitle()
            navigationController?.pushViewController(EncuentraIntrusoViewController(), animated: true)
        case .trivia:
            let collect = UICollectionViewFlowLayout()
            collect.scrollDirection = .horizontal
            let viewz = TriviaViewController(collection: collect)
            viewz.title = juegoLanzar.retuTitle()
            navigationController?.pushViewController(TriviaViewController(collection: collect), animated: true)
        case .loteria1:
            let loteria = LoteriaViewController()
            loteria.loteria = Data.loteria1
            loteria.title = juegoLanzar.retuTitle()
            navigationController?.pushViewController(loteria, animated: true)
        case .loteria2:
            let loteria = LoteriaViewController()
            loteria.loteria = Data.loteria2
            loteria.title = juegoLanzar.retuTitle()
            navigationController?.pushViewController(loteria, animated: true)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func setUpConstraints(){
        view.addSubview(pilaElementos)
        pilaElementos.addArrangedSubview(imagenPresentacion)
        pilaElementos.addArrangedSubview(botonInicioJuego)
        NSLayoutConstraint.activate([
            pilaElementos.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            pilaElementos.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pilaElementos.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            pilaElementos.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pilaElementos.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            botonInicioJuego.heightAnchor.constraint(equalToConstant: 70)
        ])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpConstraints()
        self.title = juegoLanzar.retuTitle()
    }
    

}
