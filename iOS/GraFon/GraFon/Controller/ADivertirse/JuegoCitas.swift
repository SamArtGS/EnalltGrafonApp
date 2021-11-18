//
//  JuegoCitas.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 11/17/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Cita{
    let simbolo: String
    let texto:   String
    let autor:   String
    let obra:   String
    let cantidadSonidos: Int
}


/*
 Instrucciones:
    Colocar dentro de las comillas los textos que corresponda y la cantidad sonidos (sin comillas).
    *NO eliminar ni una coma de separación porque el compilador marcará errores, seguir el patrón.*
 
    Si quieren entre negritas: Encerrar entre * asteriscos, ej:     parl*er*
        Solo es necesario colocar negritas si solo una letra o algunas llevan negritas y las demás no.
 
    Para un salto de línea, colocar: \n
    
    Se deja las primeras 2 citas como ejemplo.
 
 */
extension Data{
    static let citas: [Cita] = [
        
        Cita(simbolo: "a", texto: "Tu parles, tu parles,\ntu dis, mais tu dis rien \nQue des mots en rafale \nsans but et sans liens", autor: "Amylie", obra: "Mes oreilles", cantidadSonidos: 4),
        
        Cita(simbolo: "a", texto: "Quand on pense...\nQu'il suffirait que les gens ne les achètent plus \npour que ça se vende pas !", autor: "Coluche", obra: "Misère", cantidadSonidos: 3),
        
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
        Cita(simbolo: "", texto: "", autor: "", obra: "", cantidadSonidos: 0),
    ]
}

class JuegoCitas: UIViewController{
    
    var cita: Cita?{
        didSet{
            
        }
    }
    
    let mapa: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let cuadritoBlanco: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    
    
    
}
