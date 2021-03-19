//
//  AllViews.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

extension UICollectionView{
    static let fonemas = [
        
                //
                //Renglón 1
                //
        
                Fonema(identificador: 0, fonema: "", imagenPajaro: "",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                Fonema(identificador: 0, fonema: "", imagenPajaro: "",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                Fonema(identificador: 0, fonema: "", imagenPajaro: "",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                Fonema(identificador: 0, fonema: "", imagenPajaro: "",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                
                Fonema(identificador: 1, fonema: "œ", imagenPajaro: "1e",
                       imagenFonemaAntes: "01_smb-a_n1mdpi", imagenFonemaDespues: "18_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "18_img_mdpi", audio: "a_s1_1e"),
                
                Fonema(identificador: 0, fonema: "", imagenPajaro: "",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                
                //
                //Renglón 2
                //
        
                Fonema(identificador: 2, fonema: "a", imagenPajaro: "2a",
                       imagenFonemaAntes: "02_smb-a_n1mdpi", imagenFonemaDespues: "02_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "02_img_mdpi", audio: "a_s1_2a"),
                
                Fonema(identificador: 3, fonema: "u", imagenPajaro: "2b",
                       imagenFonemaAntes: "03_smb-a_n1mdpi", imagenFonemaDespues: "03_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "03_img_mdpi", audio: "a_s1_2b"),
                
                Fonema(identificador: 4, fonema: "i", imagenPajaro: "2c",
                       imagenFonemaAntes: "04_smb-a_n1mdpi", imagenFonemaDespues: "04_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "04_img_mdpi", audio: "a_s1_2c"),
                
                Fonema(identificador: 5, fonema: "y", imagenPajaro: "2d",
                       imagenFonemaAntes: "05_smb-a_n1mdpi", imagenFonemaDespues: "05_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "05_img_mdpi", audio: "a_s1_2d"),
                
                Fonema(identificador: 6, fonema: "E", imagenPajaro: "2e",
                       imagenFonemaAntes: "06_smb-a_n1mdpi", imagenFonemaDespues: "06_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "06_img_mdpi", audio: "a_s1_2e"),
                
                Fonema(identificador: 7, fonema: "o", imagenPajaro: "2f",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_2f"),
                
                //
                //Renglón 3
                //
        
                Fonema(identificador: 0, fonema: "", imagenPajaro: "3a",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                
                Fonema(identificador: 8, fonema: "t", imagenPajaro: "3b",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_3a"),
                
                Fonema(identificador: 9, fonema: "p", imagenPajaro: "3c",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_3b"),
                
                Fonema(identificador: 10, fonema: "f", imagenPajaro: "3d",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_3c"),
                
                Fonema(identificador: 11, fonema: "k", imagenPajaro: "3e",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_3d"),
                
                Fonema(identificador: 12, fonema: "l", imagenPajaro: "3f",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_3e"),
                
                //
                //Renglón 4
                //
        
                Fonema(identificador: 13, fonema: "ā", imagenPajaro: "4a",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_4a"),
                
                Fonema(identificador: 14, fonema: "õ", imagenPajaro: "4b",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_4b"),
                
                Fonema(identificador: 15, fonema: "Ē", imagenPajaro: "4c",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_4c"),
                
                Fonema(identificador: 16, fonema: "m", imagenPajaro: "4d",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_4d"),
                
                Fonema(identificador: 17, fonema: "n", imagenPajaro: "4e",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_4e"),
                
                Fonema(identificador: 0, fonema: "", imagenPajaro: "4f",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
        
                //
                //Renglón 5
                //
        
                Fonema(identificador: 0, fonema: "", imagenPajaro: "5a",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                
                Fonema(identificador: 18, fonema: "∫", imagenPajaro: "5b",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_5b"),
                
                Fonema(identificador: 19, fonema: "3", imagenPajaro: "5c",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_5c"),
                
                Fonema(identificador: 20, fonema: "n", imagenPajaro: "5d",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_5d"),
                
                Fonema(identificador: 21, fonema: "R", imagenPajaro: "5e",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_5e"),
                
                Fonema(identificador: 0, fonema: "", imagenPajaro: "5f",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                
                //
                //Renglón 6
                //
        
                Fonema(identificador: 22, fonema: "b", imagenPajaro: "6a",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_6a"),
                
                Fonema(identificador: 23, fonema: "d", imagenPajaro: "6b",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_6b"),
                
                Fonema(identificador: 19, fonema: "v", imagenPajaro: "6c",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_6c"),
                
                Fonema(identificador: 20, fonema: "g", imagenPajaro: "6d",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_6d"),
                
                Fonema(identificador: 21, fonema: "s", imagenPajaro: "6e",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_6e"),
                
                Fonema(identificador: 0, fonema: "z", imagenPajaro: "6f",
                       imagenFonemaAntes: "", imagenFonemaDespues: "",
                       imagenFiguraEjemplo: "", audio: ""),
                
                //
                //Renglón 7
                //
        
                Fonema(identificador: 22, fonema: "o", imagenPajaro: "7a",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_7a"),
                
                Fonema(identificador: 23, fonema: "o", imagenPajaro: "7b",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_7b"),
                
                Fonema(identificador: 19, fonema: "t", imagenPajaro: "7c",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_7c"),
                
                Fonema(identificador: 20, fonema: "o", imagenPajaro: "7d",
                       imagenFonemaAntes: "07_smb-a_n1mdpi", imagenFonemaDespues: "07_smb-b_n1mdpi",
                       imagenFiguraEjemplo: "07_img_mdpi", audio: "a_s1_7d")
              ]
}
