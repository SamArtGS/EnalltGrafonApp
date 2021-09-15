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
    private var imagenConsejoAntes: String?
    var esGrafiasPocoFrecuentes: Bool = false
    
    var colorLetrasRemarcadas: UIColor = .black
    var imageLabio: String = ""
    var imagenVueltaImagen: String = ""
    var adornitoImagen: String = ""
    
    var puerta: Int?{
        didSet{
            switch puerta {
            case 0:
                colorLetrasRemarcadas = .colorLetraVerde
                posicionLetraLabel.textColor = .colorLetraVerde
                imagenVueltaImagen = "ico_ir-vuelta_n3"
                adornitoImagen = "barra_n3"
                imagenVuelta.setImage(UIImage(named: imagenVueltaImagen), for: .normal)
                adornito.image = UIImage(named: adornitoImagen)
                imagenVuelta.setImage(UIImage(named: "ico_ir-frente_n3"), for: .normal)
            case 2:
                colorLetrasRemarcadas = .colorLetras
                posicionLetraLabel.textColor = .colorLetras
                imagenVueltaImagen = "ico_ir-frente_n2"
                adornitoImagen = "barra_n2_n2"
                imagenVuelta.setImage(UIImage(named: imagenVueltaImagen), for: .normal)
                adornito.image = UIImage(named: adornitoImagen)
                
                
            default:
                print("No default")
            }
        }
    }
    
    var delegate:MostrarExcepcionesDelegate?
    
    var silaba: Silaba? {
        didSet {
            guard let destapado = silaba else { return }
            let silabaGenerada = self.previstaSilabaMia(destapado, colorLetrasRemarcadas)
            
            posicionLetraLabel.text = destapado.pronuciacion
            
            switch puerta {
            case 0:
                posicionLetraLabel.textColor = .colorLetraVerde
            case 2:
                posicionLetraLabel.textColor = .colorLetras
            default:
                break
            }
            
            explicacion.text = destapado.explicacion
            
            imagenConsejo = destapado.imagenConsejo
            
            pilaViews.addArrangedSubview(silabaGenerada)
            pilaViews.addArrangedSubview(posicionLetraLabel)
            pilaViews.addArrangedSubview(explicacion)
            
            NSLayoutConstraint.activate([
                explicacion.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 10),
                explicacion.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -10),
                silabaGenerada.leadingAnchor.constraint(equalTo: pilaViews.leadingAnchor, constant: 10),
                silabaGenerada.trailingAnchor.constraint(equalTo: pilaViews.trailingAnchor, constant: -10)
            ])
            
            if destapado.imagenFonema == "ico_sin-sonido_n2" ||  destapado.imagenFonema == "ico_sin-sonido_n3"{
                pilaViews.addArrangedSubview(labio(UIImage(named: destapado.imagenFonema)))
            }else{
                pilaViews.addArrangedSubview(pronunciacion(destapado.imagenFonema))
            }
            
            if destapado.textodeAbajo != nil{
                pilaViews.addArrangedSubview(textoDeAbajo(destapado.textodeAbajo))
            }
            
            if let imagenConsejo = destapado.imagenConsejo{
                let imagenPajaroAgregada: UIImageView = imagenPajaro(UIImage(named: imagenConsejo))
                if puerta == 0{
                    imagenPajaroAgregada.image = UIImage(named: "retro_gruposPalabras_n3")
                }else{
                    imagenPajaroAgregada.image = UIImage(named: "retro_n2")
                }
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
    
    private let previstaSilabaMia: (Silaba, UIColor) -> (UIStackView) = { silaba, color in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabelPersonalizado()
        let labelDer:UILabel = UILabelPersonalizado()
        
        
        labelIzq.translatesAutoresizingMaskIntoConstraints = false
        labelDer.translatesAutoresizingMaskIntoConstraints = false
        vista.translatesAutoresizingMaskIntoConstraints = false
        
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBloques)
        labelIzq.textAlignment = .right
        labelIzq.textColor = color
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
    
    private var imagenPajaro: ( UIImage? ) -> UIImageView = { imagen in
        let imageView = UIImageView()
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
        imageView.clipsToBounds = true
        return imageView
    }()
    
    @objc func mostrarExplicacion(tapGestureRecognizer: UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        guard let destapado = imagenConsejo else { return }
        tappedImage.image = UIImage(named: destapado)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2), execute: {
            
            switch self.puerta{
            case 0:
                tappedImage.image = UIImage(named: "retro_gruposPalabras_n3")
            case 2:
                tappedImage.image = UIImage(named: "retro_n2")
            case .none:
                break
            case .some(_):
                break
            }
            
        })
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private let imagenVuelta: UIButton = {
        let boton = UIButton(type: .custom)
        boton.isUserInteractionEnabled = true
        boton.contentMode = .scaleAspectFit
        return boton
    }()
    
    func esTarjetaInicio(){
        fondo.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func esTarjetaFinal(hayExcepciones: Bool){
        adornito.isHidden = true
        fondo.topAnchor.constraint(equalTo: topAnchor).isActive = true
        if hayExcepciones{
            imagenVuelta.translatesAutoresizingMaskIntoConstraints = false
            fondo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
            NSLayoutConstraint.activate([
                imagenVuelta.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
                imagenVuelta.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
                imagenVuelta.heightAnchor.constraint(equalToConstant: 40),
                imagenVuelta.widthAnchor.constraint(equalToConstant: 40)
            ])
        }else{
            fondo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        }
        
    }
    
    func esTarjetaNormal(){
        fondo.topAnchor.constraint(equalTo: topAnchor).isActive = true
        fondo.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func esTarjetaUnica(hayExcepciones: Bool){
        adornito.isHidden = true
        if hayExcepciones{
            fondo.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
            fondo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50).isActive = true
            imagenVuelta.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                imagenVuelta.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
                imagenVuelta.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
                imagenVuelta.heightAnchor.constraint(equalToConstant: 40),
                imagenVuelta.widthAnchor.constraint(equalToConstant: 40)
            ])
        }else{
            fondo.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
            fondo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        }
        
        
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
