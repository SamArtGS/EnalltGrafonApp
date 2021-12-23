//
//  SiNoCell.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 12/23/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

protocol juegoSiNoDelegate: AnyObject{
    func recolectarPuntaje(correcto: Bool)
    func sonarPoint(bool: Bool)
}

class SiNoCell: UICollectionViewCell{
    
    weak var delegate: juegoSiNoDelegate?
    
    var sino: SiNo?{
        didSet{
            guard let sino = sino else { return }
            
            tituloLabel.text = "Si lees esto en voz alta, \n ¿lo que está en negrita se oye?"
            palabraLabel.text = sino.palabra
            
        }
    }
    
    private let pilaVertical: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .equalCentering
        elementosApilados.alignment = .center
        elementosApilados.spacing = 7
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        distribucionConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let tituloLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        if UIDevice().userInterfaceIdiom == .pad{
            label.font = .Roboto(.regular, size: 24)
        }else{
            switch UIDevice().type{
                case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                    label.font =  .Roboto(.regular, size: 14)
                default:
                    label.font = .Roboto(.regular, size: 14)
            }
        }
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let palabraLabel: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        if UIDevice().userInterfaceIdiom == .pad{
            label.font = .Roboto(.regular, size: 30)
        }else{
            switch UIDevice().type{
                case .iPhoneSE, .iPhone5, .iPhone5S, .iPhone12Mini, .iPhone13Mini:
                    label.font =  .Roboto(.regular, size: 20)
                default:
                    label.font = .Roboto(.regular, size: 20)
            }
        }
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()

    
    let imagenBrujula: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "vineta_juego1")
        return imageView
    }()
    
    let cuadritoBlanco: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.colorBarraNavigationBarADivertirse.cgColor
        return view
    }()
    
    let botonArriba: UIButton = {
        let boton = UIButton()
        boton.setBackgroundColor(.colorBotonJuegosTurbobonNormal, for: .normal)
        boton.setBackgroundColor(.colorBotonJuegosTurbobonSelected, for: .selected)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setTitleColor(.black, for: .normal)
        boton.setTitle("sí", for: .normal)
        boton.setTitle("sí", for: .selected)
        boton.setTitleColor(.black, for: .selected)
        boton.layer.cornerRadius = 15
        boton.layer.borderWidth = 2
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    let botonAbajo: UIButton = {
        let boton = UIButton()
        boton.setBackgroundColor(.colorBotonJuegosTurbobonNormal, for: .normal)
        boton.setBackgroundColor(.colorBotonJuegosTurbobonSelected, for: .selected)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setTitleColor(.black, for: .normal)
        boton.setTitleColor(.black, for: .selected)
        boton.setTitle("no", for: .normal)
        boton.setTitle("no", for: .selected)
        boton.layer.cornerRadius = 15
        boton.layer.borderWidth = 2
        boton.isUserInteractionEnabled = true
        boton.clipsToBounds = true
        boton.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    
    private let pilaHorizontal: () -> UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .horizontal
        elementosApilados.distribution = .fill
        elementosApilados.alignment = .top
        elementosApilados.spacing = 10
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }
    
    
    
    func distribucionConstraints(){
        addSubview(cuadritoBlanco)
        addSubview(pilaVertical)
        
        let pilaHorizontal0 = pilaHorizontal()
        pilaHorizontal0.addArrangedSubview(imagenBrujula)
        pilaHorizontal0.addArrangedSubview(tituloLabel)
        
        pilaHorizontal0.alignment = .leading
        pilaHorizontal0.distribution = .fillProportionally
        pilaVertical.addArrangedSubview(pilaHorizontal0)
        
        pilaVertical.addArrangedSubview(palabraLabel)
        pilaVertical.addArrangedSubview(botonArriba)
        pilaVertical.addArrangedSubview(botonAbajo)
        
        botonArriba.addTarget(self, action: #selector(tocarBoton(sender:)), for: .touchUpInside)
        
        botonAbajo.addTarget(self, action: #selector(tocarBoton(sender:)), for: .touchUpInside)
    
        
        NSLayoutConstraint.activate([
            cuadritoBlanco.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            cuadritoBlanco.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            cuadritoBlanco.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            cuadritoBlanco.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            pilaVertical.topAnchor.constraint(equalTo: cuadritoBlanco.topAnchor, constant: 10),
            pilaVertical.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            pilaVertical.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            pilaVertical.bottomAnchor.constraint(equalTo: cuadritoBlanco.bottomAnchor, constant: -10),
            imagenBrujula.topAnchor.constraint(equalTo: cuadritoBlanco.topAnchor, constant: 10),
            imagenBrujula.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            imagenBrujula.widthAnchor.constraint(equalTo: cuadritoBlanco.widthAnchor, multiplier: 0.1),
            imagenBrujula.heightAnchor.constraint(equalTo: imagenBrujula.widthAnchor),
            
            botonArriba.widthAnchor.constraint(equalTo: cuadritoBlanco.widthAnchor, multiplier: 0.8),
            botonArriba.heightAnchor.constraint(equalTo: botonArriba.widthAnchor, multiplier: 0.1379310345),
            
            botonAbajo.widthAnchor.constraint(equalTo: cuadritoBlanco.widthAnchor, multiplier: 0.8),
            botonAbajo.heightAnchor.constraint(equalTo: botonAbajo.widthAnchor, multiplier: 0.1379310345),
            
        ])
        
        
    }
    
    func apagarbotones(){
        botonAbajo.isUserInteractionEnabled = false
        botonArriba.isUserInteractionEnabled = false
    }
    
    func encenderBotones(){
        botonAbajo.isSelected = false
        botonArriba.isSelected = false
        botonAbajo.isUserInteractionEnabled = true
        botonArriba.isUserInteractionEnabled = true
    }
    
    
    @objc func tocarBoton(sender: UIButton){
        sender.isSelected = true
        apagarbotones()
        guard let sino = sino else { return }
        var boolean: Bool = false
        if sender.isEqual(botonArriba){
            if sino.respuesta{
                print("bien")
                boolean = true
                self.delegate?.sonarPoint(bool: true)
                botonArriba.layer.borderColor = UIColor.systemGreen.cgColor
            }else{
                self.delegate?.sonarPoint(bool: false)
                botonArriba.layer.borderColor = UIColor.systemRed.cgColor
            }
        }
        
        if sender.isEqual(botonAbajo){
            if !sino.respuesta{
                print("bien")
                boolean = true
                self.delegate?.sonarPoint(bool: true)
                botonAbajo.layer.borderColor = UIColor.systemGreen.cgColor
            }else{
                self.delegate?.sonarPoint(bool: false)
                botonAbajo.layer.borderColor = UIColor.systemRed.cgColor
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            if boolean{
                print("bien")
                self.delegate?.recolectarPuntaje(correcto: true)
            }else{
                self.delegate?.recolectarPuntaje(correcto: false)
            }
            self.botonAbajo.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
            self.botonArriba.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
            self.encenderBotones()
        }
        
    }
}
