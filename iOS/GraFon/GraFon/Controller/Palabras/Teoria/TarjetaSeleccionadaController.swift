//
//  TarjetaSeleccionadaController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-12.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class TarjetaSeleccionadaController: UICollectionViewController, MostrarExcepcionesDelegate{
    
    private let identificadorCeldaInicio:String = "CeldaInicio"
    private let identificadorCeldaSilabas: String = "CeldaSilaba"
    private var tarjeta: Tarjeta?
    private var silabas: [Silaba]?
    private var bool: Bool = false
    private var puerta: Int
    private var sizeBoolCell = false
    
    var letraTitulo: String? {
        didSet{
            guard let titulo = letraTitulo else { return }
            self.title = titulo
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configuracionVisual()
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, tarjeta: Tarjeta?, puerta: Int) {
        self.puerta = puerta
        super.init(collectionViewLayout: layout)
        self.collectionView!.register(CeldaSonidoYSilabas.self, forCellWithReuseIdentifier: identificadorCeldaInicio)
        self.collectionView!.register(CeldaSilabasYExplicacion.self, forCellWithReuseIdentifier: identificadorCeldaSilabas)
        bool = true
        self.tarjeta = tarjeta
        configuracionPorPuerta(puerta: puerta)
        
    }
    
    func configuracionPorPuerta(puerta: Int){
        switch puerta {
        case 0:
            if self.title == "Otros casos" || title == "Otros grupos"{
                collectionView.backgroundColor = UIColor(red: 227/255, green: 244/255, blue: 213/255, alpha: 1.0)
            }
            collectionView.backgroundColor = UIColor(red: 240/255, green: 249/255, blue: 233/255, alpha: 1.0)
        case 2:
            collectionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
        default:
            break
        }
    }
    
    init(collectionViewLayout layout: UICollectionViewLayout, silabas: [Silaba]?, puerta: Int){
        self.puerta = puerta
        super.init(collectionViewLayout: layout)
        bool = false
        self.collectionView!.register(GrafiasPocoFrecuentesView.self, forCellWithReuseIdentifier: identificadorCeldaSilabas)
        self.silabas = silabas
        configuracionPorPuerta(puerta: puerta)
        if puerta == 0 {
            sizeBoolCell = true
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let celp = collectionView.cellForItem(at: IndexPath(item: 0, section: 0)) as? CeldaSonidoYSilabas
        
        celp?.reproductorAudio?.stop()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("Se reclama la memoria de las tarjetas")
    }
    
    // MARK: BOTON VUELTA
}


// Extensión: UICollectionViewDataSource Protocol
extension TarjetaSeleccionadaController{

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if bool{
            return (tarjeta?.silabas.count ?? 1) + 1
        }else{
            return silabas?.count ?? 0
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if bool{
        switch indexPath.item {
            case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaInicio, for: indexPath) as! CeldaSonidoYSilabas
                
                switch puerta {
                case 0:
                    switch tarjeta {
                    case Data.grupoPalabras[0].tarjetas![0]:
                        cell.cualEsVoletada = 0
                        
                    case Data.grupoPalabras[0].tarjetas![1]:
                        cell.cualEsVoletada = 1
                        
                    case Data.grupoPalabras[0].tarjetas![3]:
                        cell.cualEsVoletada = 2
                    
                    case Data.grupoPalabras[1].tarjetas![0]:
                        cell.cualEsVoletada = 3
                    case Data.grupoPalabras[1].tarjetas![1]:
                        cell.cualEsVoletada = 4
                    
                    
                    case Data.grupoPalabras[1].tarjetas![4]:
                        cell.cualEsVoletada = 7
                    
                    case Data.grupoPalabras[1].tarjetas![6]:
                        cell.cualEsVoletada = 9
                    
                    default:
                        break
                    }
                    
                    cell.tarjetaSeleccionadaGrupos = tarjeta
                    
                case 2:
                    cell.tarjetaSeleccionada = tarjeta
                    
                default:
                    break
                }
                
                return cell
            case 1:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                switch puerta {
                case 0:
                    cell.puerta = 0
                    cell.determinarFondo(color: UIColor.fondosSilabaGrupoPalabras[indexPath.item - 1])
                case 2:
                    cell.puerta = 2
                    cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                default:
                    cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                }
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                
                if tarjeta?.silabas.count == 1 {
                    cell.delegate = self
                    cell.esTarjetaUnica(hayExcepciones: tarjeta?.excepciones != nil)
                }else{
                    cell.esTarjetaInicio()
                }
                return cell
            case (tarjeta?.silabas.count ?? 1):
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                
                switch puerta {
                case 0:
                    cell.puerta = 0
                    cell.determinarFondo(color: UIColor.fondosSilabaGrupoPalabras[indexPath.item - 1])
                case 2:
                    cell.puerta = 2
                    cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                default:
                    cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                }
                
                cell.delegate = self
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                cell.esTarjetaFinal(hayExcepciones: tarjeta?.excepciones != nil)
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! CeldaSilabasYExplicacion
                switch puerta {
                case 0:
                    cell.puerta = 0
                    cell.determinarFondo(color: UIColor.fondosSilabaGrupoPalabras[indexPath.item - 1])
                case 2:
                    cell.puerta = 2
                    cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                default:
                    cell.determinarFondo(color: UIColor.fondosSilabaPalabrasEnBoca[indexPath.item - 1])
                }
                cell.silaba = tarjeta?.silabas[indexPath.item - 1]
                cell.backgroundColor = .white
                cell.esTarjetaNormal()
                return cell
            }
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identificadorCeldaSilabas, for: indexPath) as! GrafiasPocoFrecuentesView
            if indexPath.item == 0{
                cell.isPrimero = true
            }else{
                cell.isPrimero = false
            }
            cell.puerta = puerta
            cell.grafiasPocoFrecuentes = silabas?[indexPath.item]
            cell.backgroundColor = .white
            return cell
        }
    }
}

extension TarjetaSeleccionadaController{
    func configuracionVisual(){
        collectionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
    }
}
extension TarjetaSeleccionadaController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if sizeBoolCell{
            return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 350)
        }
        
        if silabas?[indexPath.item].pronuciacion == "aïe" || silabas?[indexPath.item].pronuciacion == "aï" || silabas?[indexPath.item].pronuciacion == "oï"{
            return CGSize(width: ((view.safeAreaLayoutGuide.layoutFrame.width)-20), height: 370)
        }else{
        
         if indexPath.item == 0 {
            var cuenta: Int = 0
            tarjeta?.silabas.forEach{silaba in cuenta += silaba.palabras.count}
            return CGSize(width: ((view.safeAreaLayoutGuide.layoutFrame.width)-20), height: CGFloat((cuenta-1) * 30  + 230))
         } else {
            var palabrasCount:CGFloat = CGFloat((tarjeta?.silabas[indexPath.item - 1 ].palabras.count ?? 1) * 30) + CGFloat(tarjeta?.silabas[indexPath.item - 1].explicacion.count ?? 1) * 1
            
            if (tarjeta?.silabas[indexPath.item - 1].textodeAbajo) != nil{
                palabrasCount += 50
            }
            
            if (tarjeta?.silabas[indexPath.item - 1 ].imagenConsejo) == nil{
               
                if indexPath.item == tarjeta?.silabas.count{
                    return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 250 + palabrasCount)
                }else{
                    return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 180 + palabrasCount)
                }
            } else {
               return CGSize(width: (view.safeAreaLayoutGuide.layoutFrame.width)-20, height: 370 + palabrasCount)
            }
         }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if bool{
            return UIEdgeInsets(top: 10, left: 10, bottom: 30, right: 10)
        }else{
            return UIEdgeInsets(top: 10, left: 10, bottom: 30, right: 10)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if bool{
            return 0
        }else{
            return 10
        }
    }
    
    
    
}

extension TarjetaSeleccionadaController{
    func mostrarExcepciones(){
        
        
        let secondVC = ExcepcionesController(excepciones: tarjeta?.excepciones, titulo: letraTitulo ?? "", puerta: puerta)
        
        self.navigationController?.pushViewController(secondVC, animated: false)
        secondVC.excepciones = tarjeta?.excepciones
        secondVC.navigationController?.title = self.title
        
        UIView.transition(from: self.view, to: secondVC.view, duration: 0.85, options: [.transitionFlipFromRight])
    }
    
    
}
