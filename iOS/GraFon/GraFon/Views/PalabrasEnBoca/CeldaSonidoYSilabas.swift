//
//  CeldaSonidoYSilabas.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-12.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaSonidoYSilabas: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se reclamado la sílaba de la primera posición")
    }
    
    var tarjetaSeleccionada: Tarjeta? {
        didSet {
            guard let destapado = tarjetaSeleccionada else { return }
            var contadorPalabras = 0
            for cuenta in 0...destapado.silabas.count - 1{
                let bloqueSilaba = previstaSilaba(destapado.silabas[cuenta], UIColor.fondosSilabaPalabrasEnBoca[cuenta])
                pilaViews.addArrangedSubview(bloqueSilaba)
                contadorPalabras += destapado.silabas[cuenta].palabras.count
                NSLayoutConstraint.activate([
                    
                    bloqueSilaba.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 15),
                    bloqueSilaba.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -15)
                ])
            }
            pilaViews.heightAnchor.constraint(equalToConstant: CGFloat(contadorPalabras*30)).isActive = true
        }
        
        willSet{
            pilaViews.subviews.forEach { (view) in
                view.removeFromSuperview()
            }
        }
    }
    
    private let botonSonido: UIButton = {
        let boton = UIButton(type: .custom)
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.setImage(UIImage(named: "jgo_playing_n2"), for: .normal)
        boton.setImage(UIImage(named: "jgo_play_n2"), for: .highlighted)
        boton.contentMode = .scaleAspectFit
        boton.isUserInteractionEnabled = true
        return boton
    }()
    
    private let imagenFondo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "tarjeta_largo-04_n2")
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    private let pilaViews: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let previstaSilaba: (Silaba,UIColor) -> (UIStackView) = { silaba,color in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabel()
        let labelDer:UILabel = UILabel()
        
        labelIzq.font = .Lato(.bold, size: 16)
        labelIzq.translatesAutoresizingMaskIntoConstraints = false
        labelIzq.textAlignment = .right
        labelIzq.contentMode = .scaleAspectFill
        
        labelDer.font = .Lato(.bold, size: 16)
        labelDer.translatesAutoresizingMaskIntoConstraints = false
        labelDer.textAlignment = .left
        labelDer.textColor = .systemPink
        labelDer.contentMode = .scaleAspectFill
        
        vista.translatesAutoresizingMaskIntoConstraints = false
        vista.axis = .horizontal
        vista.distribution = .fillEqually
        vista.alignment = .center
        vista.spacing = 10
        
        vista.colorFondo(color: color)
        
        vista.addArrangedSubview(labelIzq)
        vista.addArrangedSubview(labelDer)
        
        var textoIzquierdo:String = ""
        var textoDerecho:String = ""
        
        for palabra in silaba.palabras{
            textoIzquierdo.append(palabra.palabra)
            textoDerecho.append(palabra.enGriego)
            textoIzquierdo.append("\n")
            textoDerecho.append("\n")
            labelIzq.numberOfLines+=1
            labelDer.numberOfLines+=1
        }
        textoIzquierdo.removeLast()
        textoDerecho.removeLast()
        
        labelIzq.text = textoIzquierdo
        labelDer.text = textoDerecho
        
        return vista
    }

    func configurarConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(imagenFondo)
        imagenFondo.addSubview(botonSonido)
        imagenFondo.addSubview(pilaViews)
        
        NSLayoutConstraint.activate([
            imagenFondo.topAnchor.constraint(equalTo:  safeAreaLayoutGuide.topAnchor, constant: 10),
            imagenFondo.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenFondo.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagenFondo.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            botonSonido.topAnchor.constraint(equalTo: imagenFondo.topAnchor),
            botonSonido.centerXAnchor.constraint(equalTo: imagenFondo.centerXAnchor),
            botonSonido.heightAnchor.constraint(equalToConstant: 100),
            botonSonido.widthAnchor.constraint(equalToConstant: 100),
            
            pilaViews.topAnchor.constraint(equalTo: botonSonido.bottomAnchor, constant: 30),
            pilaViews.leadingAnchor.constraint(equalTo: imagenFondo.leadingAnchor),
            pilaViews.trailingAnchor.constraint(equalTo: imagenFondo.trailingAnchor),
        ])
    }
}
