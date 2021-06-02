//
//  PantallaCreditos.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-31.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class PantallaCreditos: UIView {
    
    let texto = [
        NSMutableAttributedString(string: "Proyecto PAPIME PE401220",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.regular, size: 20),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Créditos de desarrollo",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Coordinación de Educación a Distancia",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 25),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Desarrollo en Android",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.light, size: 16),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Alejandro Ortiz Berrocal \n Alejandro Rodríguez Allende",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Desarrollo en iOS",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Samuel Arturo Garrido Sánchez",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Créditos de desarrollo",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Coordinación de Educación a Distancia",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Desarrollo en Android",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Alejandro Ortiz Berrocal \n Alejandro Rodríguez Allende",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
        NSMutableAttributedString(string: "Desarrollo en iOS",
                                  attributes: [NSAttributedString.Key.font: UIFont.Roboto(.bold, size: 30),
                                               NSAttributedString.Key.foregroundColor: UIColor.black]),
    ]
    
    // MARK: Elementos de UI
    
    private let logoApp: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "1024")
        return logo
    }()
    
    private let textoCreditos: UILabel = {
        let creditosEscritos = UILabel()
        return creditosEscritos
    }()
    
    
    // MARK: Constructores y deinit
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se ha reclamado los créditos")
    }
}
