//
//  DataPalabrasEnBoca.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-09.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension Data{
    
    static let letras:[Letra] = [
        Letra(
            identificador: 0,
            letra: "",
            imagenHoja: "",
            tarjetas: nil
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 1,
              letra: "éèê",
              imagenHoja: "1e_n2",
              tarjetas: tarjetas.tarjetasEEE
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 2,
              letra: "a",
              imagenHoja: "2a_n2",
              tarjetas: tarjetas.tarjetasA,
              grafiasPocoFrecuentes: [
                Silaba(palabras: [
                        Palabra(palabra: "y*aou*rt", enGriego: "ja.uʀt")
                    ],
                    pronuciacion: "aou",
                    explicacion: "transcriben los sonidos",
                    imagenFonema: "a.u",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "*aou*t", enGriego: "ut")
                    ],
                    pronuciacion: "aou",
                    explicacion: "transcriben el sonido",
                    imagenFonema: "u",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "cr*awl*", enGriego: "kʀol")
                    ],
                    pronuciacion: "aw",
                    explicacion: "transcriben el sonido",
                    imagenFonema: "o", imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "p*aon*", enGriego: "pɑ̃")
                    ],
                    pronuciacion: "-aon",
                    explicacion: "Al final de una palabra \n\n transcriben el sonido",
                    imagenFonema: "ɑ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
              ]
        ),
        Letra(identificador: 3,
              letra: "e",
              imagenHoja: "2b_n2",
              tarjetas: tarjetas.tarjetasE,
              grafiasPocoFrecuentes: [
                Silaba(palabras: [
                        Palabra(palabra: "f*œ*tus", enGriego: "fᴇ.tys")
                    ],
                    pronuciacion: "-œ-",
                    explicacion: "En medio de una palabra \n\n transcriben el sonido",
                    imagenFonema: "ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "N*oë*l", enGriego: "no.ᴇl")
                    ],
                    pronuciacion: "oë",
                    explicacion: "transcriben el sonido",
                    imagenFonema: "o.ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "*œu*f", enGriego: "œf")
                    ],
                    pronuciacion: "œu-",
                    explicacion: "Al inicio de una palabra \n\n transcriben el sonido",
                    imagenFonema: "&Œ&",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "*œi*l", enGriego: "œj")
                    ],
                    pronuciacion: "œi-",
                    explicacion: "Al inicio de una palabra \n\n transcriben el sonido",
                    imagenFonema: "&Œ&",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "pi*ed*", enGriego: "pjᴇ")
                    ],
                    pronuciacion: "-ed",
                    explicacion: "Al final de una palabra \n\n transcriben el sonido",
                    imagenFonema: "ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
              
              ]
        ),
        Letra(identificador: 4,
              letra: "i",
              imagenHoja: "2c_n2",
              tarjetas: tarjetas.tarjetasI,
              grafiasPocoFrecuentes: [
                Silaba(palabras: [
                        Palabra(palabra: "p*aïe*n", enGriego: "pa.jɛ̃"),
                        Palabra(palabra: "*aïe*ul", enGriego: "a.jœl")
                    ],
                    pronuciacion: "aïe",
                    explicacion: "$a$ transcribe el sonido \n\n #a# \n\n La $i$ transcribe el sonido",
                    imagenFonema: "j",
                    imagenConsejo: nil,
                    textodeAbajo: "y forma parte de la sílaba que sigue."
                ),
                Silaba(palabras: [
                        Palabra(palabra: "m*aï*s", enGriego: "ma.is")
                    ],
                    pronuciacion: "aï",
                    explicacion: "$a$ transcribe el sonido \n\n #a# \n\n La $ï$ transcribe el sonido",
                    imagenFonema: "i",
                    imagenConsejo: nil,
                    textodeAbajo: "y forma parte de la sílaba que sigue."
                ),
                Silaba(palabras: [
                        Palabra(palabra: "ég*oï*ste", enGriego: "ᴇ.go.ist")
                    ],
                    pronuciacion: "oï",
                    explicacion: "$o$ transcribe el sonido \n\n #o# \n\n La $ï$ transcribe el sonido",
                    imagenFonema: "i",
                    imagenConsejo: nil,
                    textodeAbajo: "y forma parte de la sílaba que sigue."
                )
              ]
        ),
        Letra(identificador: 5,
              letra: "o",
              imagenHoja: "2d_n2",
              tarjetas: tarjetas.tarjetasO

        ),
        Letra(identificador: 6,
              letra: "u",
              imagenHoja: "2e_n2",
              tarjetas: tarjetas.tarjetasU,
              grafiasPocoFrecuentes: [
                Silaba(palabras: [
                        Palabra(palabra: "*aou*t", enGriego: "ut")
                    ],
                    pronuciacion: "aou",
                    explicacion: "transcriben el sonido",
                    imagenFonema: "u",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "*mûr*", enGriego: "myʀ")
                    ],
                    pronuciacion: "û",
                    explicacion: "transcribe el sonido",
                    imagenFonema: "y",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "*aigüe*", enGriego: "ᴇ.gy")
                    ],
                    pronuciacion: "ü",
                    explicacion: "transcribe el sonido",
                    imagenFonema: "y",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(palabras: [
                        Palabra(palabra: "*ambigüité*", enGriego: "ɑ̃.bi.gɥi.tᴇ")
                    ],
                    pronuciacion: "üi",
                    explicacion: "transcriben los sonidos",
                    imagenFonema: "ɥi",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
              ]
        ),
        Letra(identificador: 7,
              letra: "y",
              imagenHoja: "2f_n2",
              tarjetas: tarjetas.tarjetasY
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 8,
              letra: "b",
              imagenHoja: "3b_n2",
              tarjetas: tarjetas.tarjetasB
        ),
        Letra(identificador: 9,
              letra: "c",
              imagenHoja: "3c_n2",
              tarjetas: tarjetas.tarjetasC
        ),
        Letra(identificador: 10,
              letra: "d",
              imagenHoja: "3d_n2",
              tarjetas: tarjetas.tarjetasD
        ),
        Letra(identificador: 11,
              letra: "f",
              imagenHoja: "3e_n2",
              tarjetas: tarjetas.tarjetasF
        ),
        Letra(identificador: 12,
              letra: "g",
              imagenHoja: "3f_n2",
              tarjetas: tarjetas.tarjetasG
        ),
        Letra(identificador: 13,
              letra: "h",
              imagenHoja: "4a_n2",
              tarjetas: tarjetas.tarjetasH
        ),
        Letra(identificador: 14,
              letra: "j",
              imagenHoja: "4b_n2",
              tarjetas: tarjetas.tarjetasJ
        ),
        Letra(identificador: 15,
              letra: "k",
              imagenHoja: "4c_n2",
              tarjetas: tarjetas.tarjetasK
        ),
        Letra(identificador: 16,
              letra: "l",
              imagenHoja: "4d_n2",
              tarjetas: tarjetas.tarjetasL
        ),
        Letra(identificador: 17,
              letra: "m",
              imagenHoja: "4e_n2",
              tarjetas: tarjetas.tarjetasM
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 18,
              letra: "n",
              imagenHoja: "5b_n2",
              tarjetas: tarjetas.tarjetasN
        ),
        Letra(identificador: 19,
              letra: "p",
              imagenHoja: "5c_n2",
              tarjetas: tarjetas.tarjetasP
        ),
        Letra(identificador: 20,
              letra: "q",
              imagenHoja: "5d_n2",
              tarjetas: tarjetas.tarjetasQ,
              grafiasPocoFrecuentes:[
                Silaba(palabras: [
                        Palabra(palabra: "cin*q*", enGriego: "sɛ̃k"),
                        Palabra(palabra: "co*q*", enGriego: "kok"),
                    ],
                    pronuciacion: "-q",
                    explicacion: "transcriben el sonido",
                    imagenFonema: "k",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
              ]
        ),
        Letra(identificador: 21,
              letra: "r",
              imagenHoja: "5e_n2",
              tarjetas: tarjetas.tarjetasR
        ),
        Letra(identificador: 22,
              letra: "s",
              imagenHoja: "5f_n2",
              tarjetas: tarjetas.tarjetasS
        ),
        Letra(identificador: 23,
              letra: "t",
              imagenHoja: "6a_n2",
              tarjetas: tarjetas.tarjetasT,
              grafiasPocoFrecuentes: [
                Silaba(palabras: [
                        Palabra(palabra: "ane*th*", enGriego: "a.nᴇt"),
                        Palabra(palabra: "mammou*th*", enGriego: "ma.mut")
                    ],
                    pronuciacion: "-th",
                    explicacion: "Al final de una palabra \n\n transcriben el sonido",
                    imagenFonema: "t",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
              ]
        ),
        Letra(identificador: 24,
              letra: "v",
              imagenHoja: "6b_n2",
              tarjetas: tarjetas.tarjetasV
        ),
        Letra(identificador: 25,
              letra: "w",
              imagenHoja: "6c_n2",
              tarjetas: tarjetas.tarjetasW
        ),
        Letra(identificador: 26,
              letra: "x",
              imagenHoja: "6d_n2",
              tarjetas: tarjetas.tarjetasX
        ),
        Letra(identificador: 27,
              letra: "z",
              imagenHoja: "6e_n2",
              tarjetas: tarjetas.tarjetasZ
        )
    ]
}
