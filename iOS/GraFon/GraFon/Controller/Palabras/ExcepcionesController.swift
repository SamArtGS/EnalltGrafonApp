//
//  ExcepcionesController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-06-16.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class ExcepcionesController: UIViewController {
    
    lazy var pantalla = PantallaExcepciones()
    var excepciones: [Palabra]?
    
    init(excepciones: [Palabra]?) {
        
        super.init(nibName: nil, bundle: nil)
        
        pilaVerticalExcepciones.addArrangedSubview(explicacion)
        
        guard let destapado = excepciones else { return }
        
        for palabra in destapado{
            let silabaGenerada = previstaPar(palabra)
            pilaVerticalExcepciones.addArrangedSubview(silabaGenerada)
            NSLayoutConstraint.activate([
                silabaGenerada.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 15),
                silabaGenerada.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor, constant: -15)
            ])
        }
    }
    
    private let cuadritoBlanco: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let explicacion: UILabel = {
       let etiqueta = UILabel()
       etiqueta.numberOfLines = 10
       etiqueta.font = .Roboto(.regular, size: 20)
        etiqueta.textColor = .black
       etiqueta.text = "   Excepciones más frecuentes"
       etiqueta.translatesAutoresizingMaskIntoConstraints = false
       etiqueta.textAlignment = .left
       etiqueta.contentMode = .scaleAspectFit
       return etiqueta
   }()
    
    private let pilaVerticalExcepciones: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.backgroundColor = .none
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillEqually
        elementosApilados.alignment = .leading
        elementosApilados.spacing = 14
        elementosApilados.translatesAutoresizingMaskIntoConstraints = false
        return elementosApilados
    }()
    
    private let previstaPar: (Palabra) -> (UIStackView) = { palabra in
        let vista = UIStackView()
        let labelIzq:UILabel = UILabelPersonalizado()
        let labelDer:UILabel = UILabelPersonalizado()
        
        labelIzq.translatesAutoresizingMaskIntoConstraints = false
        labelDer.translatesAutoresizingMaskIntoConstraints = false
        vista.translatesAutoresizingMaskIntoConstraints = false
        
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBloques)
        labelIzq.textAlignment = .left
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
        labelIzq.text = palabra.palabra
        labelDer.text = palabra.enGriego
        vista.addArrangedSubview(labelIzq)
        vista.addArrangedSubview(labelDer)
        return vista
    }
    
    private let imagenVuelta: UIButton = {
        let boton = UIButton(type: .custom)
        boton.isUserInteractionEnabled = true
        boton.setImage(UIImage(named: "ico_ir-vuelta_n2"), for: .normal)
        boton.contentMode = .scaleAspectFit
        boton.translatesAutoresizingMaskIntoConstraints = false
        return boton
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: #selector(self.any))
        configurarConstraints()
        imagenVuelta.addTarget(self, action: #selector(self.back), for: .touchUpInside)
    }
    @objc func any(){
        
    }
    
    @objc func back(){
        let firstVC = self.navigationController?.viewControllers[(self.navigationController?.viewControllers.count ?? 2) - 2] as? TarjetaSeleccionadaController
        if let firstView = firstVC?.view{
            self.navigationController?.popViewController(animated: false)
            UIView.transition(from: self.view, to: firstView, duration: 0.85, options: [.transitionFlipFromLeft])
            firstVC?.title = title
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func configurarConstraints(){

        cuadritoBlanco.backgroundColor = .white
        
        view.addSubview(cuadritoBlanco)
        cuadritoBlanco.addSubview(pilaVerticalExcepciones)
        cuadritoBlanco.addSubview(imagenVuelta)
        
        NSLayoutConstraint.activate([
            
            cuadritoBlanco.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            cuadritoBlanco.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            cuadritoBlanco.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            cuadritoBlanco.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -15),
            
            pilaVerticalExcepciones.topAnchor.constraint(equalTo: cuadritoBlanco.topAnchor, constant: 30),
            pilaVerticalExcepciones.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            pilaVerticalExcepciones.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            
            imagenVuelta.bottomAnchor.constraint(equalTo: cuadritoBlanco.bottomAnchor,constant: -10),
            imagenVuelta.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor,constant: -10),
            imagenVuelta.heightAnchor.constraint(equalToConstant: 40),
            imagenVuelta.widthAnchor.constraint(equalToConstant: 40)
           
        ])
    }
}
