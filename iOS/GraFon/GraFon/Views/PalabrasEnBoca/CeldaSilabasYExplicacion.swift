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
    
    var delegate:MostrarExcepcionesDelegate?
    
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
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let previstaSilaba: (Silaba) -> (UIStackView) = { silaba in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabelPersonalizado()
        let labelDer:UILabel = UILabel()
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
    
    private var posicionLetraLabel: UILabel = {
        let etiqueta = UILabel()
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
        let etiqueta = UILabel()
        etiqueta.text = texto
        etiqueta.font = .Roboto(.bold, size: Tamanio.letraFonema)
        etiqueta.textColor = .colorLetraRosa
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
    
    private let imagenVuelta: UIButton = {
        let boton = UIButton(type: .custom)
        boton.isUserInteractionEnabled = true
        boton.setImage(UIImage(named: "ico_ir-vuelta_n2"), for: .normal)
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    func esTarjetaInicio(){
        fondo.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func esTarjetaFinal(){
        adornito.isHidden = true
        fondo.topAnchor.constraint(equalTo: topAnchor).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
        
        imagenVuelta.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            imagenVuelta.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            imagenVuelta.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            imagenVuelta.heightAnchor.constraint(equalToConstant: 40),
            imagenVuelta.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func esTarjetaNormal(){
        fondo.topAnchor.constraint(equalTo: topAnchor).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func esTarjetaUnica(){
        adornito.isHidden = true
        fondo.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
        
        imagenVuelta.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            imagenVuelta.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            imagenVuelta.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            imagenVuelta.heightAnchor.constraint(equalToConstant: 40),
            imagenVuelta.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func configurarConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
        imagenVuelta.addTarget(self, action: #selector(voltear), for: .touchUpInside)
        
        addSubview(fondo)
        addSubview(pilaViews)
        fondo.addSubview(adornito)
        addSubview(imagenVuelta)
        
        NSLayoutConstraint.activate([
            fondo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fondo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            pilaViews.topAnchor.constraint(equalTo: fondo.topAnchor),
            pilaViews.leadingAnchor.constraint(equalTo: fondo.leadingAnchor),
            pilaViews.trailingAnchor.constraint(equalTo: fondo.trailingAnchor),
            pilaViews.bottomAnchor.constraint(equalTo: adornito.topAnchor),
            
            adornito.leadingAnchor.constraint(equalTo: fondo.leadingAnchor),
            adornito.trailingAnchor.constraint(equalTo: fondo.trailingAnchor),
            adornito.bottomAnchor.constraint(equalTo: fondo.bottomAnchor),
            adornito.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}

extension CeldaSilabasYExplicacion{
    @objc func voltear(){
        delegate?.mostrarExcepciones()
    }
}
