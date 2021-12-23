//
//  PresentacionJuegoSyS.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-04-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class Carcasa: UIViewController{
    
    func configure(vista:UIView){
        
        vista.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vista)
        view.backgroundColor = .white
        vista.contentMode = .scaleAspectFit
        vista.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            vista.topAnchor.constraint(equalTo: view.topAnchor),
            vista.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vista.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vista.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}


class PresentacionCreditos: UIViewController {
    
    let texto = [
        
        NSMutableAttributedString(string: "Trabajo realizado con el apoyo del programa\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "UNAM-DGAPA-PAPIME PE401220\n\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        
        NSMutableAttributedString(string: "Responsable del proyecto\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Béatrice Florence Blin\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Corresponsable del proyecto\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "María Antonieta Rodríguez Rivera \n\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Créditos de contenido\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 18),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Departamento de Linguística Aplicada de la ENALLT-UNAM\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Béatrice Florence Blin\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Departamento de francés de la ENALLT-UNAM\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Jessou Denise Jandette Torres\n María Eugenia Quezada Salazar \n Mónica Rizo Marechal\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Universidad de Jyväskylä  (Finlandia)\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Jean-Michel Kalmbach \n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Alumnos de la Licenciatura en Linguística aplicada de la ENALLT-UNAM\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Celestino Velázquez Martínez \n Edwin Monreal Alemán\n Braulio Nieto Cercano ",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "(oct. - dic. 21) \n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.regular, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Missaeel Aladar Portilla Martínez ",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "(nov. - dic. 21) \n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.regular, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        
        NSMutableAttributedString(string: "Alumnas de la Licenciatura en Traducción de la ENALLT-UNAM\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Ilse Ameyalli Sánchez Pacheco \n Nadia Ketzalli Sánchez Pacheco\n\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Créditos de desarrollo\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 18),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Coordinación de Educación a Distancia\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 16),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Diseño de interfaz gráfica e ilustraciones\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "María Teresa Cesáreo Castillo \n María Antonieta Rodríguez Rivera \n\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Desarrollo en Android\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Alejandro Ortiz Berrocal \n Alejandro Rodríguez Allende\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Desarrollo en iOS\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.italic, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
        NSMutableAttributedString(string: "Samuel Arturo Garrido Sánchez\n\n\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
       
        NSMutableAttributedString(string: "https://ced.enallt.unam.mx/grafon/ \n\n\n",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 14),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        
    ]
    
    // MARK: Elementos de UI
    
    private let logoApp: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "1024")
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    private let enaltLogo: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "enalt")
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    private let pilaVertical: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fill
        elementosApilados.alignment = .center
        elementosApilados.spacing = 5
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let textoCreditos: UILabelPersonalizado = {
        let creditosEscritos = UILabelPersonalizado()
        creditosEscritos.translatesAutoresizingMaskIntoConstraints = false
        creditosEscritos.contentMode = .scaleAspectFit
        creditosEscritos.lineBreakMode = .byWordWrapping
        creditosEscritos.numberOfLines = 0
        creditosEscritos.textAlignment = .center
        return creditosEscritos
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        distribucionConstrains()
    }
    deinit {
        print("\n\nSe reclama controller instrucciones\n\n")
    }
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.isScrollEnabled = true
        scroll.isPagingEnabled = false
        scroll.backgroundColor = .white
        scroll.isUserInteractionEnabled = true
        return scroll
    }()
    
    func distribucionConstrains(){
        let combination = NSMutableAttributedString()
        
        for stri in texto{
            combination.append(stri)
        }
        textoCreditos.attributedText = combination
        
        view.addSubview(scrollView)
        scrollView.isPagingEnabled = false
        scrollView.addSubview(pilaVertical)
        pilaVertical.addArrangedSubview(logoApp)
        pilaVertical.addArrangedSubview(textoCreditos)
        pilaVertical.addArrangedSubview(enaltLogo)
        
        NSLayoutConstraint.activate([
            
            logoApp.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            logoApp.heightAnchor.constraint(equalTo: logoApp.widthAnchor, multiplier: 0.8),
            
            enaltLogo.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            enaltLogo.heightAnchor.constraint(equalTo: enaltLogo.widthAnchor, multiplier: 0.3683),
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            pilaVertical.topAnchor.constraint(equalTo: scrollView.topAnchor),
            pilaVertical.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            pilaVertical.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            pilaVertical.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -30),
            
            textoCreditos.widthAnchor.constraint(equalTo: view.widthAnchor),
            
        ])
    }
}

class PresentacionJuegoSyS: Carcasa {
    lazy var pantalla = PantallaJuegoSyS()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        colocarFondoCompleto(imagen: "bck_n1_juegos_v2")
        configure(vista: pantalla)
        pantalla.delegate = self
    }
    deinit {
        print("\n\nSe reclama controller instrucciones\n\n")
    }
}

extension PresentacionJuegoSyS: pantallaInstruccionesDelegate{
    func continuarJuego() {
        dismiss(animated: true, completion: nil)
    }
}

class PuntuacionJuegoSyS: Carcasa {
    
    init(puntaje:Int) {
        pantalla.puntaje = puntaje
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("\n\nSe reclama controller de puntuación\n\n")
    }
    
    var pantalla = PantallaResultados()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure(vista: pantalla)
        view.backgroundColor = .clear
        colocarFondoCompleto(imagen: "bck_n1_juegos_v2")
    }
    override func viewWillLayoutSubviews() {
       super.viewWillLayoutSubviews()
    }
}
