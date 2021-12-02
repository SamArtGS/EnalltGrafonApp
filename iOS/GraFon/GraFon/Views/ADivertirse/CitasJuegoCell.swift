//
//  CitasJuegoCell.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 11/29/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CitaCell: UICollectionViewCell{
    
    weak var delegate: juegoCitasDelegate?
    
    
    var cita: Cita?{
        didSet{
            guard let cita = cita else { return }
            
            tituloLabel.text = "Si lees en voz alta, \n ¿cuántos sonidos como este encuentras?"
            letraLabel.text = cita.simbolo
            citaLabel.text = cita.texto
            libroLabel.text = cita.obra
            autorLabel.text = cita.autor
        }
    }
    
    private let pilaVertical: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .equalSpacing
        elementosApilados.alignment = .center
        elementosApilados.spacing = 10
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
        label.font = .Roboto(.bold, size: 14)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let letraLabel: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 17)
        label.textColor = .colorLetraRosa
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let citaLabel: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.italic, size: 14)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()
    
    let libroLabel: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.bold, size: 12)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let autorLabel: UILabelPersonalizado = {
        let label = UILabelPersonalizado()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .Roboto(.boldItalic, size: 12)
        label.textColor = .black
        label.lineBreakMode = .byWordWrapping
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.textAlignment = .right
        return label
    }()
    
    let imagenBrujula: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "vineta_juego6")
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
    
    let conjuntoBotones: [UIButton] = {
        var botones = [UIButton]()
        for i in 0...5{
            let boton = UIButton()
            boton.setBackgroundColor(.colorBotonJuegosTurbobonNormal, for: .normal)
            boton.setBackgroundColor(.colorBotonJuegosTurbobonSelected, for: .selected)
            boton.translatesAutoresizingMaskIntoConstraints = false
            boton.setTitle("\(i)", for: .normal)
            boton.setTitle("\(i)", for: .selected)
            boton.setTitleColor(.black, for: .normal)
            boton.setTitleColor(.black, for: .selected)
            boton.layer.cornerRadius = 15
            boton.layer.borderWidth = 2
            boton.isUserInteractionEnabled = true
            boton.clipsToBounds = true
            boton.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
            boton.contentMode = .scaleAspectFit
            
            botones.append(boton)
        }
        return botones.shuffled()
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
        
        
        let pilaHorizontal1 = pilaHorizontal()
        pilaHorizontal1.alignment = .bottom
        let pilaHorizontal2 = pilaHorizontal()
        
        pilaVertical.addArrangedSubview(pilaHorizontal0)
        pilaVertical.addArrangedSubview(letraLabel)
        pilaVertical.addArrangedSubview(citaLabel)
        pilaVertical.addArrangedSubview(libroLabel)
        pilaVertical.addArrangedSubview(autorLabel)
        pilaVertical.addArrangedSubview(pilaHorizontal1)
        pilaVertical.addArrangedSubview(pilaHorizontal2)
        libroLabel.sizeToFit()
        autorLabel.sizeToFit()
        
        
        pilaHorizontal1.addArrangedSubview(conjuntoBotones[0])
        pilaHorizontal1.addArrangedSubview(conjuntoBotones[1])
        pilaHorizontal1.addArrangedSubview(conjuntoBotones[2])
        pilaHorizontal2.addArrangedSubview(conjuntoBotones[3])
        pilaHorizontal2.addArrangedSubview(conjuntoBotones[4])
        pilaHorizontal2.addArrangedSubview(conjuntoBotones[5])
        
        for boton in conjuntoBotones{
            boton.addTarget(self, action: #selector(tocarBoton(sender:)), for: .touchUpInside)
            NSLayoutConstraint.activate([
                boton.widthAnchor.constraint(equalTo: cuadritoBlanco.widthAnchor, multiplier: 0.2),
                boton.heightAnchor.constraint(equalTo: boton.widthAnchor, multiplier: 0.5),
            ])
            
        }
        
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
            
            
            letraLabel.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            letraLabel.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            
            citaLabel.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            citaLabel.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            
            libroLabel.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            libroLabel.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            
            autorLabel.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            autorLabel.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            
            
           
        ])
        
        
    }
    
    func apagarbotones(){
        conjuntoBotones.forEach { boton in
            boton.isUserInteractionEnabled = false
        }
    }
    
    func encenderBotones(){
        
        conjuntoBotones.forEach { boton in
            boton.isSelected = false
            boton.isUserInteractionEnabled = true
        }
    }
    
    @objc func tocarBoton(sender: UIButton){
        sender.isSelected = true
        apagarbotones()
        
        if "\(cita!.cantidadSonidos)" == sender.titleLabel?.text{
            print("bien")
            self.delegate?.sonarPoint(bool: true)
            sender.layer.borderColor = UIColor.systemGreen.cgColor
        }else{
            self.delegate?.sonarPoint(bool: false)
            sender.layer.borderColor = UIColor.systemRed.cgColor
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            if "\(self.cita!.cantidadSonidos)" == sender.titleLabel?.text{
                print("bien")
                self.delegate?.recolectarPuntaje(correcto: true)
            }else{
                self.delegate?.recolectarPuntaje(correcto: false)
            }
            sender.layer.borderColor = UIColor.colorBotonJuegosTurbobonSelected.cgColor
            self.encenderBotones()
        }
        
    }
}
