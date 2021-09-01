//
//  GrafiasPocoFrecuentesView.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/30/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class GrafiasPocoFrecuentesView: UICollectionViewCell {
    
    
    var grafiasPocoFrecuentes: Silaba? {
        didSet {
            guard let destapado = grafiasPocoFrecuentes else { return }
            let silabaGenerada = previstaSilaba(destapado)
            configurarConstraints()
            posicionLetraLabel.text = destapado.pronuciacion
            explicacion.text = destapado.explicacion
            
            
            pilaViews.addArrangedSubview(posicionLetraLabel)
            pilaViews.addArrangedSubview(explicacion)
            
            
            if destapado.imagenFonema == "ico_sin-sonido_n2"{
                pilaViews.addArrangedSubview(labio(UIImage(named: destapado.imagenFonema)))
            }else{
                pilaViews.addArrangedSubview(pronunciacion(destapado.imagenFonema))
            }
            
//            NSLayoutConstraint.activate([
//                explicacion.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 10),
//                explicacion.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -10),
//                silabaGenerada.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 10),
//                silabaGenerada.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -10)
//            ])
            
            pilaViews.addArrangedSubview(silabaGenerada)
            
            
        }
        
        willSet{
            pilaViews.subviews.forEach { (view) in
                view.removeFromSuperview()
            }
        }
    }
    
    
    private let pilaViews: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.isUserInteractionEnabled = true
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let fondo: UIView = {
        let view = UIView()
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let previstaSilaba: (Silaba) -> (UIStackView) = { silaba in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabelPersonalizado()
        let labelDer:UILabel = UILabelPersonalizado()
        
        labelIzq.translatesAutoresizingMaskIntoConstraints = false
        labelDer.translatesAutoresizingMaskIntoConstraints = false
        vista.translatesAutoresizingMaskIntoConstraints = false
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBloques)
        labelIzq.textAlignment = .right
        labelIzq.textColor = .colorLetras
        labelIzq.contentMode = .scaleAspectFit
        
        labelDer.font = .Roboto(.regular, size: Tamanio.letrasRosasBloques)
        labelDer.textColor = .colorLetraRosa
        labelDer.textAlignment = .left
        labelDer.contentMode = .scaleAspectFit
        
        vista.axis = .horizontal
        vista.distribution = .fillEqually
        vista.alignment = .center
        vista.spacing = 10
        
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
    
    private var posicionLetraLabel: UILabelPersonalizado = {
        let etiqueta = UILabelPersonalizado()
        etiqueta.font = .Roboto(.bold, size: Tamanio.letraPosicionBloque)
        etiqueta.textColor = .colorBarraSuperiorPalabras
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private var explicacion: UILabelPersonalizado = {
        let etiqueta = UILabelPersonalizado()
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.font = .Roboto(.regular, size: Tamanio.letraExplicacion)
        etiqueta.textColor = .black
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private var pronunciacion: (String) -> UILabel = { texto in
        let etiqueta = UILabelPersonalizado()
        
        etiqueta.font = .Roboto(.bold, size: Tamanio.letraFonema)
        etiqueta.textColor = .colorLetraRosa
        etiqueta.text = texto
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }
    
    private var textoDeAbajo: ( String? ) -> UILabelPersonalizado = { texto in
        let etiqueta = UILabelPersonalizado()
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.font = .Roboto(.regular, size: Tamanio.letraExplicacion)
        etiqueta.textColor = .black
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        etiqueta.text = texto
        return etiqueta
    }
    
    private var labio: (UIImage?) -> UIImageView = {imagen in
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = imagen
        return imageView
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configurarConstraints(){
        
        addSubview(fondo)
        addSubview(pilaViews)
        
        NSLayoutConstraint.activate([
            fondo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fondo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            pilaViews.topAnchor.constraint(equalTo: fondo.topAnchor),
            pilaViews.leadingAnchor.constraint(equalTo: fondo.leadingAnchor),
            pilaViews.trailingAnchor.constraint(equalTo: fondo.trailingAnchor),
            pilaViews.bottomAnchor.constraint(equalTo: fondo.topAnchor),
        ])
    }
    
}
