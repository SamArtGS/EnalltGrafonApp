//
//  AllViews.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-02-15.
//  Copyright © 2021 SamArtGS. All rights reserved.
//
import UIKit

struct Data{
    
    static let puertas = [
        Puerta(
               nombreImagenPuertaCerrada: "PuertaSonidosSimbolosCerrada",
               nombreImagenPuertaMedio: "PuertaSonidosSimbolosMedio",
               nombreImagenPuertaAbierta: "PuertaSonidosSimbolosAbierta",
               pantallaReferenciada: "PuertaSonidosSimbolos")
        
        ,
        Puerta(nombreImagenPuertaCerrada: "PuertaPalabrasCerrada",
               nombreImagenPuertaMedio: "PuertaPalabrasMedio",
               nombreImagenPuertaAbierta: "PuertaPalabrasAbierta",
               pantallaReferenciada: "PuertaPalabras"),
        
        Puerta(
               nombreImagenPuertaCerrada: "PuertaGrupoPalabrasCerrada",
               nombreImagenPuertaMedio: "PuertaGrupoPalabrasMedio",
               nombreImagenPuertaAbierta: "PuertaGrupoPalabrasAbierta",
               pantallaReferenciada: "PuertaJuegos"),
        Puerta(nombreImagenPuertaCerrada: "PuertaJuegos",
               nombreImagenPuertaMedio: "PuertaJuegos",
               nombreImagenPuertaAbierta: "PuertaJuegos",
               pantallaReferenciada: "PuertaJuegos"),
    
    ]
    
    static let fonemas:[Fonema] = [
        //Renglón 1

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
        
        //Renglón 3

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
        
        //Renglón 4

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
               fonema: "ŋ",
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

        //Renglón 5

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
        
        //Renglón 6

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
        
        //Renglón 7

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
    
    static let JuegoSyS = [
        
        // :--------------------------:
        // Nivel 1: Correspondiente a Juego 1
        // :--------------------------:
        
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_01mdpi",
                sonido: "71",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_02mdpi",
                sonido: "99",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_03mdpi",
                sonido: "33",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_04mdpi",
                sonido: "153",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_05mdpi",
                sonido: "135",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_06mdpi",
                sonido: "37",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_07mdpi",
                sonido: "84",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_08mdpi",
                sonido: "115",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_09mdpi",
                sonido: "51",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_10mdpi",
                sonido: "85",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_11mdpi",
                sonido: "113",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_12mdpi",
                sonido: "63",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_13mdpi",
                sonido: "42",
                correcto: true //DEBERÍA SER TRUE?
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_14mdpi",
                sonido: "146",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_15mdpi",
                sonido: "156",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_16mdpi",
                sonido: "119",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_17mdpi",
                sonido: "121",
                correcto: true
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_18mdpi",
                sonido: "112",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_19mdpi",
                sonido: "15",
                correcto: false
        ),
        ParejaSonido(
            nivel: 1,
                imagen: "n1_jgo1_pant_20mdpi",
                sonido: "154",
                correcto: true
        ),
        // :--------------------------:
        // Nivel 2: Correspondiente a Juego 2
        // :--------------------------:
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_01mdpi",
                sonido: "68",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_02mdpi",
                sonido: "103",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_03mdpi",
                sonido: "166",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_04mdpi",
                sonido: "143",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_05mdpi",
                sonido: "70",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_06mdpi",
                sonido: "53",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_07mdpi",
                sonido: "107",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_08mdpi",
                sonido: "72",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_09mdpi",
                sonido: "92",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_10mdpi",
                sonido: "169",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_11mdpi",
                sonido: "45",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_12mdpi",
                sonido: "112",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_13mdpi",
                sonido: "83",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_14mdpi",
                sonido: "161",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_15mdpi",
                sonido: "123",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_16mdpi",
                sonido: "33",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_17mdpi",
                sonido: "104",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_18mdpi",
                sonido: "12",
                correcto: true
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_19mdpi",
                sonido: "28",
                correcto: false
        ),
        ParejaSonido(
            nivel: 2,
                imagen: "n1_jgo2_pant_20mdpi",
                sonido: "162",
                correcto: true
        ),
        
        // :--------------------------:
        // Nivel 3: Correspondiente a Juego 3
        // :--------------------------:
        
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_01mdpi",
                sonido: "140",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_02mdpi",
                sonido: "151",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_03mdpi",
                sonido: "164",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_04mdpi",
                sonido: "179",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_05mdpi",
                sonido: "71",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_06mdpi",
                sonido: "125",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_07mdpi",
                sonido: "171",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_08mdpi",
                sonido: "215",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_09mdpi",
                sonido: "30",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_10mdpi",
                sonido: "113",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_11mdpi",
                sonido: "32",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_12mdpi",
                sonido: "182",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_13mdpi",
                sonido: "99",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_14mdpi",
                sonido: "126",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_15mdpi",
                sonido: "216",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_16mdpi",
                sonido: "214",
                correcto: false
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_17mdpi",
                sonido: "120",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_18mdpi",
                sonido: "124",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_19mdpi",
                sonido: "180",
                correcto: true
        ),
        ParejaSonido(
            nivel: 3,
                imagen: "n1_jgo3_pant_20mdpi",
                sonido: "12",
                correcto: false
        ),
        
        // :--------------------------:
        // Nivel 4: Correspondiente a Juego 4
        // :--------------------------:
        
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_01mdpi",
                sonido: "161",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_02mdpi",
                sonido: "50",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_03mdpi",
                sonido: "51",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_04mdpi",
                sonido: "15",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_05mdpi",
                sonido: "84",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_06mdpi",
                sonido: "52",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_07mdpi",
                sonido: "34",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_08mdpi",
                sonido: "172",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_09mdpi",
                sonido: "115",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_10mdpi",
                sonido: "155",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_11mdpi",
                sonido: "132",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_12mdpi",
                sonido: "173",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_13mdpi",
                sonido: "163",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_14mdpi",
                sonido: "174",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_15mdpi",
                sonido: "94",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_16mdpi",
                sonido: "76",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_17mdpi",
                sonido: "71",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_18mdpi",
                sonido: "166",
                correcto: true
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_19mdpi",
                sonido: "117",
                correcto: false
        ),
        ParejaSonido(
            nivel: 4,
                imagen: "n1_jgo4_pant_20mdpi",
                sonido: "53",
                correcto: true
        ),
        // :--------------------------:
        // Nivel 5: Correspondiente a Juego 5
        // :--------------------------:
        
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_01mdpi",
                sonido: "1",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_02mdpi",
                sonido: "137",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_03mdpi",
                sonido: "176",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_04mdpi",
                sonido: "16",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_05mdpi",
                sonido: "118",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_06mdpi",
                sonido: "54",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_07mdpi",
                sonido: "94",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_08mdpi",
                sonido: "133",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_09mdpi",
                sonido: "18",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_10mdpi",
                sonido: "177",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_11mdpi",
                sonido: "86",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_12mdpi",
                sonido: "144",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_13mdpi",
                sonido: "22",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_14mdpi",
                sonido: "37",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_15mdpi",
                sonido: "141",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_16mdpi",
                sonido: "153",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_17mdpi",
                sonido: "27",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo4_pant_18mdpi",
                sonido: "78",
                correcto: true
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_19mdpi",
                sonido: "83",
                correcto: false
        ),
        ParejaSonido(
            nivel: 5,
                imagen: "n1_jgo5_pant_20mdpi",
                sonido: "117",
                correcto: true
        )
    ]
}
