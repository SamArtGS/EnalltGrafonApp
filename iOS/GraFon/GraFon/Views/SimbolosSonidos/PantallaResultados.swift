//
//  PantallaResultados.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-25.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

enum RangoPuntaje {
    case buenIntento
    case muyBien
    case felicidades
}

class PantallaResultados: UIView {
    
    weak var delegate: pantallaResultadosDelegate?
    
    var puntaje: Int? {
        didSet {
            guard let destapado = puntaje else { return }
            resultado.text = "\(destapado) / 20"
            
            switch destapado {
                /// Botón de Regresar a menú de pájaros
            case 0...9:
                retroalimentacion.text = "¡Buen Intento!"
                consolacion.text = "Aún puedes mejorar.\nDate otra vuelta por la sección"
                configurarBotonRegreso(resultado: .buenIntento)
                break
                
                /// Ir al menú de pájaros, al igual que el anterior
            case 10...15:
                retroalimentacion.text = "¡Muy bien!"
                consolacion.text = "Ya reconoces varios símbolos. \n Si tienes dudas, \n regresa a ver la sección"
                configurarBotonRegreso(resultado: .muyBien)
                break
                /// Ir a las puerta, la de palabras en la boca
            case 16...20:
                retroalimentacion.text = "¡Felicidades!"
                consolacion.text = "Reconoces símbolos con destreza.\n ¿Por qué no exploras \n las demás puertas?"
                configurarBotonRegreso(resultado: .felicidades)
                break
            default:
                break
            }
            
        }
    }
    
    func configurarBotonRegreso(resultado: RangoPuntaje) {
        pilaElementos.addArrangedSubview(botonInicioJuego)
        
        NSLayoutConstraint.activate([
            botonInicioJuego.widthAnchor.constraint(equalToConstant: 80),
            botonInicioJuego.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        switch resultado {
        case .buenIntento:
            botonInicioJuego.setImage(UIImage(named: "icono_puerta_s1"), for: .normal)
            botonInicioJuego.addTarget(nil, action: #selector(irPantallaJuegos), for: .touchUpInside)
        case .muyBien:
            botonInicioJuego.setImage(UIImage(named: "icono_puerta_s1"), for: .normal)
            botonInicioJuego.addTarget(nil, action: #selector(irPajaros), for: .touchUpInside)
        case .felicidades:
            botonInicioJuego.setImage(UIImage(named: "icono_puertas_color"), for: .normal)
            botonInicioJuego.addTarget(botonInicioJuego, action: #selector(irPuertas), for: .touchUpInside)
        }
    }
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error al implementar el init")
    }
    
    deinit {
        print("Se reclama la vista de pantalla resultados")
    }
    
    private let imagenPresentacion:UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "retro_n1_jgo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let textoBanner: UILabel = {
        let etiqueta = UILabel()
        etiqueta.text = "Tu puntuación es:"
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.font = UIFont.HelveticaNeue(.bold, size: 20)
        return etiqueta
    }()
    
    private let resultado: UILabel = {
        let etiqueta = UILabel()
        etiqueta.text = "0/20"
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.font = UIFont.HelveticaNeue(.bold, size: 30)
        return etiqueta
    }()
    
    private let retroalimentacion: UILabel = {
        let etiqueta = UILabel()
        etiqueta.text = "Qué descepcionante xd"
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.font = UIFont.HelveticaNeue(.bold, size: 35)
        etiqueta.textColor = .colorBarraSuperiorSyS
        return etiqueta
    }()
    
    private let consolacion: UILabel = {
        let etiqueta = UILabel()
        etiqueta.numberOfLines = 3
        etiqueta.textAlignment = .center
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.text = "Aún puedes mejorar"
        etiqueta.font = UIFont.HelveticaNeue(.bold, size: 14)
        return etiqueta
    }()
    
    private let botonInicioJuego:UIButton = {
        let botonInicio = UIButton(type: .custom)
        botonInicio.translatesAutoresizingMaskIntoConstraints = false
        botonInicio.contentMode = .scaleAspectFit
        return botonInicio
    }()
    
    private let pilaElementos: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillEqually
        elementosApilados.alignment = .center
        elementosApilados.spacing = 0
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    func agregarAcciones(accion: Selector){
        botonInicioJuego.addTarget(self, action: accion, for: .touchUpInside)
    }
    
    func setUpConstraints(){
        addSubview(imagenPresentacion)
        imagenPresentacion.addSubview(pilaElementos)
        pilaElementos.addArrangedSubview(textoBanner)
        pilaElementos.addArrangedSubview(resultado)
        pilaElementos.addArrangedSubview(retroalimentacion)
        pilaElementos.addArrangedSubview(consolacion)
        pilaElementos.addArrangedSubview(botonInicioJuego)
        NSLayoutConstraint.activate([
            imagenPresentacion.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            imagenPresentacion.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagenPresentacion.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            imagenPresentacion.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenPresentacion.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilaElementos.centerXAnchor.constraint(equalTo: imagenPresentacion.centerXAnchor),
            pilaElementos.centerYAnchor.constraint(equalTo: imagenPresentacion.centerYAnchor),
            pilaElementos.heightAnchor.constraint(equalTo: imagenPresentacion.widthAnchor),
            pilaElementos.widthAnchor.constraint(equalTo: imagenPresentacion.widthAnchor)
        ])
        
    }
}

extension PantallaResultados{
    @objc func irPantallaJuegos(){
        print("Si realiza la acción")
        delegate?.irOtroJuego()
    }
    @objc func irPajaros(){
        delegate?.irPantallaPajaros()
    }
    @objc func irPuertas(){
        delegate?.irAPuertas()
    }
}

