//
//  CeldaSilabasYExplicacion.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-12.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaSilabasYExplicacion: UICollectionViewCell {
    
    private var imagenConsejo: String?
    
    var silaba: Silaba? {
        didSet {
            guard let destapado = silaba else { return }
            let silabaGenerada = previstaSilaba(destapado)
            
            posicionLetraLabel.text = destapado.pronuciacion
            explicacion.text = destapado.explicacion
            
            imagenConsejo = destapado.imagenConsejo
            
            pilaViews.addArrangedSubview(silabaGenerada)
            pilaViews.addArrangedSubview(posicionLetraLabel)
            pilaViews.addArrangedSubview(explicacion)
            
            NSLayoutConstraint.activate([
                explicacion.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 30),
                explicacion.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -30),
                silabaGenerada.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 15),
                silabaGenerada.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -15)
            ])
            
            if destapado.imagenFonema == "ico_sin-sonido_n2"{
                pilaViews.addArrangedSubview(labio(UIImage(named: destapado.imagenFonema)))
            }else{
                pilaViews.addArrangedSubview(pronunciacion(destapado.imagenFonema))
            }
            
            if destapado.textodeAbajo != nil{
                pilaViews.addArrangedSubview(textoDeAbajo(destapado.textodeAbajo))
            }
            
            if let imagenConsejo = destapado.imagenConsejo{
                let imagenPajaroAgregada: UIImageView = imagenPajaro(UIImage(named: imagenConsejo))
                let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(mostrarExplicacion(tapGestureRecognizer:)))
                imagenPajaroAgregada.addGestureRecognizer(tapGestureRecognizer)
                pilaViews.addArrangedSubview(imagenPajaroAgregada)
                
            }
        }
        willSet{
            pilaViews.subviews.forEach { (view) in
                view.removeFromSuperview()
            }
        }
    }
    
    func determinarFondo(color: UIColor){
        fondo.backgroundColor = color
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
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let previstaSilaba: (Silaba) -> (UIStackView) = { silaba in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabel()
        let labelDer:UILabel = UILabel()
        labelIzq.translatesAutoresizingMaskIntoConstraints = false
        labelDer.translatesAutoresizingMaskIntoConstraints = false
        vista.translatesAutoresizingMaskIntoConstraints = false
        
        
        labelIzq.font = .Lato(.bold, size: 16)
        labelIzq.textAlignment = .right
        labelIzq.textColor = .black
        labelIzq.contentMode = .scaleAspectFit
        
        labelDer.font = .Lato(.bold, size: 16)
        labelDer.textColor = .systemPink
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
    
    private var posicionLetraLabel: UILabel = {
        let etiqueta = UILabel()
        etiqueta.font = .Lato(.bold, size: 20)
        etiqueta.textColor = .black
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private var explicacion: UILabel = {
        let etiqueta = UILabel()
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.font = .Lato(.bold, size: 16)
        etiqueta.textColor = .black
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    private var pronunciacion: (String) -> UILabel = { texto in
        let etiqueta = UILabel()
        etiqueta.text = texto
        etiqueta.font = .Lato(.bold, size: 20)
        etiqueta.textColor = .systemPink
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }
    
    private var imagenPajaro: ( UIImage? ) -> UIImageView = { imagen in
        let imageView = UIImageView(image: UIImage(named: "retro_n2"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }
    
    private var textoDeAbajo: ( String? ) -> UILabel = { texto in
        let etiqueta = UILabel()
        etiqueta.lineBreakMode = .byWordWrapping
        etiqueta.numberOfLines = 0
        etiqueta.text = texto
        etiqueta.font = .Lato(.bold, size: 16)
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.textAlignment = .center
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }
    
    private var labio: (UIImage?) -> UIImageView = {imagen in
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = imagen
        return imageView
    }
    
    private var adornito: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "barra_n2_n2")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    @objc func mostrarExplicacion(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        print("Si se hizo xd")
        
        guard let destapado = imagenConsejo else { return }
        tappedImage.image = UIImage(named: destapado)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            tappedImage.image = UIImage(named: "retro_n2")
        })
    }
    
    
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
    
    func esTarjetaInicio(){
        fondo.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    func esTarjetaFinal(){
        fondo.topAnchor.constraint(equalTo: topAnchor).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
    func esTarjetaNormal(){
        fondo.topAnchor.constraint(equalTo: topAnchor).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func configurarConstraints(){
        
        
        
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(fondo)
        addSubview(pilaViews)
        fondo.addSubview(adornito)
        
        NSLayoutConstraint.activate([
            fondo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fondo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            pilaViews.topAnchor.constraint(equalTo: fondo.topAnchor),
            pilaViews.leadingAnchor.constraint(equalTo: leadingAnchor),
            pilaViews.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilaViews.bottomAnchor.constraint(equalTo: adornito.topAnchor),
            
            adornito.leadingAnchor.constraint(equalTo: fondo.leadingAnchor),
            adornito.trailingAnchor.constraint(equalTo: fondo.trailingAnchor),
            adornito.bottomAnchor.constraint(equalTo: bottomAnchor),
            adornito.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}
