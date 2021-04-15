//
//  AllViews.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Data{
    
    static let fonemas:[Fonema] = [
        //
        //Renglón 1
        //

        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        //FONEMA œ
        Fonema(identificador: 1,
               fonema: "œ",
               imagenPajaro: "1e",
               imagenFonemaAntes: "18_smb-a_n1mdpi",
               imagenFonemaDespues: "18_smb-b_n1mdpi",
               imagenFiguraEjemplo: "18_img_mdpi",
               audio: "200"
        ),
        
        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        
        //
        //Renglón 2
        //

        Fonema(identificador: 2,
               fonema: "a",
               imagenPajaro: "2a",
               imagenFonemaAntes: "01_smb-a_n1mdpi",
               imagenFonemaDespues: "01_smb-b_n1mdpi",
               imagenFiguraEjemplo: "01_img_mdpi",
               audio: "183"
        ),
        
        Fonema(identificador: 3,
               fonema: "u",
               imagenPajaro: "2b",
               imagenFonemaAntes: "05_smb-a_n1mdpi",
               imagenFonemaDespues: "05_smb-b_n1mdpi",
               imagenFiguraEjemplo: "05_img_mdpi",
               audio: "187"
        ),
        
        Fonema(identificador: 4,
               fonema: "i",
               imagenPajaro: "2c",
               imagenFonemaAntes: "02_smb-a_n1mdpi",
               imagenFonemaDespues: "02_smb-b_n1mdpi",
               imagenFiguraEjemplo: "02_img_mdpi",
               audio: "184"
        ),
        
        Fonema(identificador: 5,
               fonema: "y",
               imagenPajaro: "2d",
               imagenFonemaAntes: "19_smb-a_n1mdpi",
               imagenFonemaDespues: "19_smb-b_n1mdpi",
               imagenFiguraEjemplo: "19_img_mdpi",
               audio: "201"
        ),
        
        Fonema(identificador: 6,
               fonema: "E",
               imagenPajaro: "2e",
               imagenFonemaAntes: "04_smb-a_n1mdpi",
               imagenFonemaDespues: "04_smb-b_n1mdpi",
               imagenFiguraEjemplo: "04_img_mdpi",
               audio: "186"
        ),
        
        Fonema(identificador: 7,
               fonema: "o",
               imagenPajaro: "2f",
               imagenFonemaAntes: "03_smb-a_n1mdpi",
               imagenFonemaDespues: "03_smb-b_n1mdpi",
               imagenFiguraEjemplo: "03_img_mdpi",
               audio: "185"
        ),
        
        //
        //Renglón 3
        //

        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "3a",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        
        Fonema(identificador: 8,
               fonema: "t",
               imagenPajaro: "3b",
               imagenFonemaAntes: "08_smb-a_n1mdpi",
               imagenFonemaDespues: "08_smb-b_n1mdpi",
               imagenFiguraEjemplo: "08_img_mdpi",
               audio: "190"
        ),
        
        Fonema(identificador: 9,
               fonema: "p",
               imagenPajaro: "3c",
               imagenFonemaAntes: "06_smb-a_n1mdpi",
               imagenFonemaDespues: "06_smb-b_n1mdpi",
               imagenFiguraEjemplo: "06_img_mdpi",
               audio: "188"
        ),
        
        Fonema(identificador: 10,
               fonema: "f",
               imagenPajaro: "3d",
               imagenFonemaAntes: "11_smb-a_n1mdpi",
               imagenFonemaDespues: "11_smb-b_n1mdpi",
               imagenFiguraEjemplo: "11_img_mdpi",
               audio: "193"
        ),
        
        Fonema(identificador: 11,
               fonema: "k",
               imagenPajaro: "3e",
               imagenFonemaAntes: "10_smb-a_n1mdpi",
               imagenFonemaDespues: "10_smb-b_n1mdpi",
               imagenFiguraEjemplo: "10_img_mdpi",
               audio: "192"
        ),
        
        Fonema(identificador: 12,
               fonema: "l",
               imagenPajaro: "3f",
               imagenFonemaAntes: "13_smb-a_n1mdpi",
               imagenFonemaDespues: "13_smb-b_n1mdpi",
               imagenFiguraEjemplo: "13_img_mdpi",
               audio: "195"
        ),
        
        //
        //Renglón 4
        //

        Fonema(identificador: 13,
               fonema: "ā",
               imagenPajaro: "4a",
               imagenFonemaAntes: "20_smb-a_n1mdpi",
               imagenFonemaDespues: "20_smb-b_n1mdpi",
               imagenFiguraEjemplo: "20_img_mdpi",
               audio: "202"
        ),
        
        Fonema(identificador: 14,
               fonema: "õ",
               imagenPajaro: "4b",
               imagenFonemaAntes: "21_smb-a_n1mdpi",
               imagenFonemaDespues: "21_smb-b_n1mdpi",
               imagenFiguraEjemplo: "21_img_mdpi",
               audio: "203"
        ),
        
        Fonema(identificador: 15,
               fonema: "Ē",
               imagenPajaro: "4c",
               imagenFonemaAntes: "22_smb-a_n1mdpi",
               imagenFonemaDespues: "22_smb-b_n1mdpi",
               imagenFiguraEjemplo: "22_img_mdpi",
               audio: "204"
        ),
        
        Fonema(identificador: 16,
               fonema: "m",
               imagenPajaro: "4d",
               imagenFonemaAntes: "14_smb-a_n1mdpi",
               imagenFonemaDespues: "14_smb-b_n1mdpi",
               imagenFiguraEjemplo: "14_img_mdpi",
               audio: "196"
        ),
        
        Fonema(identificador: 17,
               fonema: "n",
               imagenPajaro: "4e",
               imagenFonemaAntes: "15_smb-a_n1mdpi",
               imagenFonemaDespues: "15_smb-b_n1mdpi",
               imagenFiguraEjemplo: "15_img_mdpi",
               audio: "197"
        ),
        
        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "4f",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),

        //
        //Renglón 5
        //

        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "5a",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        
        Fonema(identificador: 18,
               fonema: "∫",
               imagenPajaro: "5b",
               imagenFonemaAntes: "24_smb-a_n1mdpi",
               imagenFonemaDespues: "24_smb-b_n1mdpi",
               imagenFiguraEjemplo: "24_img_mdpi.png",
               audio: "206"
        ),
        
        Fonema(identificador: 19,
               fonema: "3",
               imagenPajaro: "5c",
               imagenFonemaAntes: "25_smb-a_n1mdpi",
               imagenFonemaDespues: "25_smb-b_n1mdpi",
               imagenFiguraEjemplo: "25_img_mdpi",
               audio: "207"
        ),
        
        Fonema(identificador: 20,
               fonema: "n",
               imagenPajaro: "5d",
               imagenFonemaAntes: "31_smb-a_n1mdpi",
               imagenFonemaDespues: "31_smb-b_n1mdpi",
               imagenFiguraEjemplo: "31_img_mdpi",
               audio: "213"
        ),
        
        Fonema(identificador: 21,
               fonema: "R",
               imagenPajaro: "5e",
               imagenFonemaAntes: "17_smb-a_n1mdpi",
               imagenFonemaDespues: "17_smb-b_n1mdpi",
               imagenFiguraEjemplo: "17_img_mdpi",
               audio: "199"
        ),
        
        Fonema(identificador: 0,
               fonema: "",
               imagenPajaro: "5f",
               imagenFonemaAntes: "",
               imagenFonemaDespues: "",
               imagenFiguraEjemplo: "",
               audio: ""
        ),
        
        //
        //Renglón 6
        //

        Fonema(identificador: 22,
               fonema: "b",
               imagenPajaro: "6a",
               imagenFonemaAntes: "07_smb-a_n1mdpi",
               imagenFonemaDespues: "07_smb-b_n1mdpi",
               imagenFiguraEjemplo: "07_img_mdpi",
               audio: "189"
        ),
        
        Fonema(identificador: 23,
               fonema: "d",
               imagenPajaro: "6b",
               imagenFonemaAntes: "09_smb-a_n1mdpi",
               imagenFonemaDespues: "09_smb-b_n1mdpi",
               imagenFiguraEjemplo: "09_img_mdpi",
               audio: "191"
        ),
        
        Fonema(identificador: 24,
               fonema: "v",
               imagenPajaro: "6c",
               imagenFonemaAntes: "26_smb-a_n1mdpi",
               imagenFonemaDespues: "26_smb-b_n1mdpi",
               imagenFiguraEjemplo: "26_img_mdpi",
               audio: "208"
        ),
        
        Fonema(identificador: 25,
               fonema: "g",
               imagenPajaro: "6d",
               imagenFonemaAntes: "27_smb-a_n1mdpi.png",
               imagenFonemaDespues: "27_smb-b_n1mdpi.png",
               imagenFiguraEjemplo: "27_img_mdpi.png",
               audio: "209"
        ),
        
        Fonema(identificador: 26,
               fonema: "s",
               imagenPajaro: "6e",
               imagenFonemaAntes: "12_smb-a_n1mdpi",
               imagenFonemaDespues: "12_smb-b_n1mdpi",
               imagenFiguraEjemplo: "12_img_mdpi",
               audio: "194"
        ),
        
        Fonema(identificador: 27,
               fonema: "z",
               imagenPajaro: "6f",
               imagenFonemaAntes: "23_smb-a_n1mdpi",
               imagenFonemaDespues: "23_smb-b_n1mdpi",
               imagenFiguraEjemplo: "23_img_mdpi.png",
               audio: "205"
        ),
        
        //
        //Renglón 7
        //

        Fonema(identificador: 28,
               fonema: "nj",
               imagenPajaro: "7a",
               imagenFonemaAntes: "16_smb-a_n1mdpi",
               imagenFonemaDespues: "16_smb-b_n1mdpi",
               imagenFiguraEjemplo: "16_img_mdpi",
               audio: "198"
        ),
        
        Fonema(identificador: 29,
               fonema: "ɥ",
               imagenPajaro: "7b",
               imagenFonemaAntes: "29_smb-a_n1mdpi",
               imagenFonemaDespues: "29_smb-b_n1mdpi",
               imagenFiguraEjemplo: "29_img_mdpi",
               audio: "211"
        ),
        
        Fonema(identificador: 30,
               fonema: "j",
               imagenPajaro: "7c",
               imagenFonemaAntes: "30_smb-a_n1mdpi",
               imagenFonemaDespues: "30_smb-b_n1mdpi",
               imagenFiguraEjemplo: "30_img_mdpi",
               audio: "212"
        ),
        Fonema(identificador: 31,
               fonema: "w",
               imagenPajaro: "7d",
               imagenFonemaAntes: "28_smb-a_n1mdpi",
               imagenFonemaDespues: "28_smb-b_n1mdpi",
               imagenFiguraEjemplo: "28_img_mdpi",
               audio: "210"
        )
    ]
    
    static let puertas = [Puerta(
           nombreImagenPuertaCerrada: "PuertaJuegoPalabras",
           nombreImagenPuertaMedio: "PuertaJuegoPalabras",
           nombreImagenPuertaAbierta: "PuertaJuegoPalabras",
           pantallaReferenciada: "PuertaJuegoPalabras"),
    Puerta(nombreImagenPuertaCerrada: "PuertaJuegos",
           nombreImagenPuertaMedio: "PuertaJuegos",
           nombreImagenPuertaAbierta: "PuertaJuegos",
           pantallaReferenciada: "PuertaJuegos"),
    Puerta(nombreImagenPuertaCerrada: "PuertaPalabrasCerrada",
           nombreImagenPuertaMedio: "PuertaPalabrasMedio",
           nombreImagenPuertaAbierta: "PuertaPalabrasAbierta",
           pantallaReferenciada: "PuertaPalabras"),
    Puerta(
           nombreImagenPuertaCerrada: "PuertaSonidosSimbolosCerrada",
           nombreImagenPuertaMedio: "PuertaSonidosSimbolosMedio",
           nombreImagenPuertaAbierta: "PuertaSonidosSimbolosAbierta",
           pantallaReferenciada: "PuertaSonidosSimbolos")]
    
    static let Juego1SyS = [
        ParejaSonido(
                imagen: "n1_jgo1_pant_01mdpi",
                sonido: "37",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_02mdpi",
                sonido: "15",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_03mdpi",
                sonido: "33",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_04mdpi",
                sonido: "37",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_05mdpi",
                sonido: "15",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_06mdpi",
                sonido: "33",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_08mdpi",
                sonido: "37",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_09mdpi",
                sonido: "15",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_10mdpi",
                sonido: "33",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_11mdpi",
                sonido: "37",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_12mdpi",
                sonido: "15",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_13mdpi",
                sonido: "33",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_14mdpi",
                sonido: "37",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_15mdpi",
                sonido: "15",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_16mdpi",
                sonido: "33",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_17mdpi",
                sonido: "37",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_18mdpi",
                sonido: "15",
                correcto: true
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_19mdpi",
                sonido: "33",
                correcto: false
        ),
        ParejaSonido(
                imagen: "n1_jgo1_pant_20mdpi",
                sonido: "33",
                correcto: true
        )
    ]
    
    static let letras:[Letra] = [
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 1, imagenHoja: "1e_n2"),
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 2, imagenHoja: "2a_n2"),
        Letra(identificador: 3, imagenHoja: "2b_n2"),
        Letra(identificador: 4, imagenHoja: "2c_n2"),
        Letra(identificador: 5, imagenHoja: "2d_n2"),
        Letra(identificador: 6, imagenHoja: "2e_n2"),
        Letra(identificador: 7, imagenHoja: "2f_n2"),
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 8, imagenHoja: "3b_n2"),
        Letra(identificador: 9, imagenHoja: "3c_n2"),
        Letra(identificador: 10, imagenHoja: "3d_n2"),
        Letra(identificador: 11, imagenHoja: "3e_n2"),
        Letra(identificador: 12, imagenHoja: "3f_n2"),
        Letra(identificador: 13, imagenHoja: "4a_n2"),
        Letra(identificador: 14, imagenHoja: "4b_n2"),
        Letra(identificador: 15, imagenHoja: "4c_n2"),
        Letra(identificador: 16, imagenHoja: "4d_n2"),
        Letra(identificador: 17, imagenHoja: "4e_n2"),
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 0, imagenHoja: ""),
        Letra(identificador: 18, imagenHoja: "5b_n2"),
        Letra(identificador: 19, imagenHoja: "5c_n2"),
        Letra(identificador: 20, imagenHoja: "5d_n2"),
        Letra(identificador: 21, imagenHoja: "5e_n2"),
        Letra(identificador: 22, imagenHoja: "5f_n2"),
        
        Letra(identificador: 23, imagenHoja: "6a_n2"),
        Letra(identificador: 24, imagenHoja: "6b_n2"),
        Letra(identificador: 25, imagenHoja: "6c_n2"),
        Letra(identificador: 26, imagenHoja: "6d_n2"),
        Letra(identificador: 27, imagenHoja: "6e_n2"),
    ]
}
