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
    var titulo: String?
    
    init(excepciones: [Palabra]?, titulo: String) {
        self.titulo = titulo
        
        super.init(nibName: nil, bundle: nil)
        
        pilaVerticalExcepciones.addArrangedSubview(explicacion)
        
        guard let destapado = excepciones else { return }
        self.title = titulo
        
        var bool: Bool = false
        
        for palabra in destapado{
            if palabra.palabra == "alzheim*er*" || palabra.palabra == "monsieur"{
                bool = true
            }
            let silabaGenerada = previstaPar(palabra)
            pilaVerticalExcepciones.addArrangedSubview(silabaGenerada)
            
            ponersubtituloParentesis(palabra: palabra.palabra)
            
            NSLayoutConstraint.activate([
                silabaGenerada.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 15),
                silabaGenerada.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor, constant: -15)
            ])
        }
        
        if bool {
            colocarExcepcionesLargasParler()
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
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.isScrollEnabled = true
        scroll.isPagingEnabled = false
        scroll.isUserInteractionEnabled = true
        return scroll
    }()
    
    private let pilaVerticalExcepciones: UIStackView = {
       let elementosApilados:UIStackView = UIStackView()
        elementosApilados.backgroundColor = .none
        elementosApilados.axis = .vertical
        elementosApilados.distribution = .fillProportionally
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
        
        
        labelIzq.font = .Roboto(.italic, size: Tamanio.letrasCafeBloques - 2 )
        labelIzq.textAlignment = .left
        labelIzq.textColor = .colorLetras
        labelIzq.contentMode = .scaleAspectFit
        
        labelDer.font = .Roboto(.regular, size: Tamanio.letrasRosasBloques - 2)
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
        cuadritoBlanco.addSubview(scrollView)
        scrollView.isPagingEnabled = false
        
        scrollView.addSubview(pilaVerticalExcepciones)
        cuadritoBlanco.addSubview(imagenVuelta)
        
        NSLayoutConstraint.activate([
            
            cuadritoBlanco.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            cuadritoBlanco.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            cuadritoBlanco.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            cuadritoBlanco.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -15),
            
            
            
            scrollView.topAnchor.constraint(equalTo: cuadritoBlanco.topAnchor, constant: 30),
            scrollView.leadingAnchor.constraint(equalTo: cuadritoBlanco.leadingAnchor, constant: 10),
            scrollView.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor, constant: -10),
            scrollView.bottomAnchor.constraint(equalTo: cuadritoBlanco.bottomAnchor, constant: -10),
            
            
            pilaVerticalExcepciones.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            pilaVerticalExcepciones.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            pilaVerticalExcepciones.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            pilaVerticalExcepciones.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            imagenVuelta.bottomAnchor.constraint(equalTo: cuadritoBlanco.bottomAnchor,constant: -10),
            imagenVuelta.trailingAnchor.constraint(equalTo: cuadritoBlanco.trailingAnchor,constant: -10),
            imagenVuelta.heightAnchor.constraint(equalToConstant: 40),
            imagenVuelta.widthAnchor.constraint(equalToConstant: 40)
           
        ])
    }
    
    
    //MARK: NO MANCHES
    
    
    // YA ME CANSÉ DE EXCEPCIONES LARGAS, DE VA DE M@DR4Z0
    
    private let stackHorizontal: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 15
        stack.alignment = .center
        stack.axis = .horizontal
        stack.distribution = .equalCentering
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let stackHorizontal2: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let stackSustantivo: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .trailing
        stack.axis = .vertical
        stack.spacing = 7
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let stackMedio: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.axis = .vertical
        stack.spacing = 7
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let stackVerbo: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .vertical
        stack.spacing = 7
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let labelNegrita: (String) -> UILabelPersonalizado = {text in
       let etiqueta = UILabelPersonalizado()
       etiqueta.numberOfLines = 10
       etiqueta.font = .Roboto(.regular, size: 15)
        etiqueta.textColor = .black
       etiqueta.translatesAutoresizingMaskIntoConstraints = false
       etiqueta.textAlignment = .left
       etiqueta.contentMode = .scaleAspectFit
        etiqueta.text = text
       return etiqueta
    }
    
    private let labelRosa: (String) -> UILabelPersonalizado = {text in
       let etiqueta = UILabelPersonalizado()
       etiqueta.numberOfLines = 1
       etiqueta.font = .Roboto(.regular, size: 15)
       etiqueta.textColor = .colorLetraRosa
       etiqueta.translatesAutoresizingMaskIntoConstraints = false
       etiqueta.textAlignment = .left
       etiqueta.contentMode = .scaleAspectFit
       etiqueta.text = text
       return etiqueta
    }
    
    private let labelMedio: (String) -> UILabelPersonalizado = { text in
       let etiqueta = UILabelPersonalizado()
       etiqueta.numberOfLines = 1

       etiqueta.font = .Roboto(.regular, size: 15)
       etiqueta.textColor = .colorLetras
       etiqueta.translatesAutoresizingMaskIntoConstraints = false
       etiqueta.textAlignment = .left
       etiqueta.contentMode = .scaleAspectFit
        etiqueta.text = text
       return etiqueta
    }
}

extension ExcepcionesController{
    
    func contraintsExtras(){
        pilaVerticalExcepciones.addArrangedSubview(stackHorizontal2)
        stackHorizontal2.addArrangedSubview(labelNegrita("SUSTANTIVO"))
        let v = labelNegrita("\t\t  VERBO")
        v.textAlignment = .center
        stackHorizontal2.addArrangedSubview(v)
        stackHorizontal2.alignment = .bottom
        pilaVerticalExcepciones.addArrangedSubview(stackHorizontal)
        stackHorizontal.addArrangedSubview(stackSustantivo)
        stackHorizontal.addArrangedSubview(stackMedio)
        stackHorizontal.addArrangedSubview(stackVerbo)
        
        NSLayoutConstraint.activate([
            stackHorizontal.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackHorizontal2.leadingAnchor.constraint(equalTo: stackHorizontal.leadingAnchor),
            stackHorizontal2.trailingAnchor.constraint(equalTo: stackHorizontal.trailingAnchor),
            stackHorizontal2.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func colocarExcepcionesLargasParler(){
        
        contraintsExtras()
        
        let derecha:[String] = ["di.l¢Œ¢ʀ","a.k¢Œ¢ʀ","ɛ̃.tᴇʀ.vju.v¢Œ¢ʀ","pos.tᴇʀ","ʀ¢Œ¢.poʀ.tᴇʀ","skwa.t¢Œ¢ʀ","sy.poʀ.tᴇʀ"]
        let medio:[String] = ["deal*er*","hack*er*","interview*er*","post*er*","report*er*","squatt*er*","support*er*"]
        let izquierda:[String] = [
            "di.lᴇ","a.kᴇ","ɛ̃.tᴇʀ.vju.vᴇ","pos.tᴇ","ʀ¢Œ¢.poʀ.tᴇ","skwa.tᴇ","sy.poʀ.tᴇ"]
        
        for dere in derecha{
            stackSustantivo.addArrangedSubview(labelRosa(dere))
        }
        
        for medi in medio{
            stackMedio.addArrangedSubview(labelMedio(medi))
        }
        
        for izq in izquierda{
            stackVerbo.addArrangedSubview(labelRosa(izq))
        }
        
        let bloqueBlanco = UIView()
        bloqueBlanco.backgroundColor = .white
        pilaVerticalExcepciones.addArrangedSubview(bloqueBlanco)
        NSLayoutConstraint.activate([
            bloqueBlanco.heightAnchor.constraint(equalToConstant: 60),
            bloqueBlanco.widthAnchor.constraint(equalToConstant: 100),
        ])
        
        
        
    }
    
    func ponersubtituloParentesis(palabra: String){
        switch palabra {
        case "aérosol":
            let palobro = labelNegrita("(todas las palabras que empiezan con aéro-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        case "antisémite":
            let palobro = labelNegrita("(todas las palabras que empiezan con anti-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        
        case "asyntaxique":
            let palobro = labelNegrita("(todas las palabras que empiezan con asy-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        case "contresigné":
            let palobro = labelNegrita("(todas las palabras que empiezan con contre-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        case "extrasensoriel":
            let palobro = labelNegrita("(todas las palabras que empiezan con extra-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        case "microsystème":
            let palobro = labelNegrita("(todas las palabras que empiezan con micro-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        case "multiservice":
            let palobro = labelNegrita("(todas las palabras que empiezan con multi-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        case "polysémique":
            let palobro = labelNegrita("(todas las palabras que empiezan con poly-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        case "suprasegmental":
            let palobro = labelNegrita("(todas las palabras que empiezan con supra-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
        case "ultrason":
            let palobro = labelNegrita("(todas las palabras que empiezan con ultra-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
        case "tétrasyllabe":
            let palobro = labelNegrita("(todos los prefijos cardinales seguidos de la palabra syll-)")
            palobro.font = .Roboto(.regular, size: 12)
            pilaVerticalExcepciones.addArrangedSubview(palobro)
            NSLayoutConstraint.activate([
                palobro.leadingAnchor.constraint(equalTo: pilaVerticalExcepciones.leadingAnchor, constant: 10),
                palobro.trailingAnchor.constraint(equalTo: pilaVerticalExcepciones.trailingAnchor)
            ])
            
        default:
            return
        }
    }
    
    
}
