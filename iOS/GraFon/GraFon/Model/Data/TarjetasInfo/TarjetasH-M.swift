//
//  TarjetasH-M.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension tarjetas{
    
    static let tarjetasH:[Tarjeta] = [
        Tarjeta(audio: "pb_h_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*h*ôtel", enGriego: "o.tᴇl")
              ],
              pronuciacion: "h",
              explicacion: """
                              no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_h_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*th*é", enGriego: "tᴇ"),
                    Palabra(palabra: "ane*th*", enGriego: "a.nᴇt")
              ],
              pronuciacion: "th",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "t",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ma*ths*", enGriego: "mat")
              ],
              pronuciacion: "-ths",
              explicacion: """
                              Al final de una palabra \n\n transcriben el sonido
                          """,
              imagenFonema: "t",
                imagenConsejo: nil, //Esto pasa muy seguido en francés: varias letras, un solo sonido.
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_h_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*cha*t", enGriego: "ʃa")
              ],
              pronuciacion: "ch",
              explicacion: """
                              Seguidas de una vocal \n\n transcriben el sonido
                          """,
              imagenFonema: "ʃ",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "te*chn*ologie", enGriego: "tᴇ.kno.lo.ʒi")
              ],
              pronuciacion: "-ch-",
              explicacion: """
                              Seguidas de una consonante \n\n transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*psych*ologie", enGriego: "psi.ko.lo.ʒi")
              ],
              pronuciacion: "-ch-",
              explicacion: """
                              Precedidas de $psy$ \n\n transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_h_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*ph*iloso*ph*ie", enGriego: "fi.lo.zo.fi")
              ],
              pronuciacion: "ph",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "f",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_h_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*sh*opping", enGriego: "ʃo.piŋ")
              ],
              pronuciacion: "sh",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "ʃ",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_h_06",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*sch*éma", enGriego: "ʃᴇ.ma"),
                    Palabra(palabra: "ha*sch*ich", enGriego: "a.ʃiʃ"),
                    Palabra(palabra: "goula*sch*", enGriego: "gu.laʃ")
              ],
              pronuciacion: "sch",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "ʃ",
              imagenConsejo: nil, // ¡No te espantes! Eso pasa muy seguido en francés: varias letras, un solo sonido.
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]
    
    static let tarjetasJ:[Tarjeta] = [
        Tarjeta(audio: "pb_j_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*j*oli", enGriego: "ka.ka.o"),
                    Palabra(palabra: "a*j*outer", enGriego: "a.ʒu.tᴇ")
              ],
              pronuciacion: "j",
              explicacion: """
                              transcribe el sonido
                          """,
              imagenFonema: "ʒ",
              imagenConsejo: nil,//ME FALTA SONIDO DE RASURADORA ELÉCTRICA
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]
    
    
    static let tarjetasK:[Tarjeta] = [
        Tarjeta(audio: "pb_k_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*k*ilo", enGriego: "ki.lo"),
                    Palabra(palabra: "*k*arao*k*é", enGriego: "ka.ʀa.o.kᴇ"),
                    Palabra(palabra: "anora*k*", enGriego: "a.no.ʀak"),
              ],
              pronuciacion: "k",
              explicacion: """
                              transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        Tarjeta(audio: "pb_k_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "ti*ck*et", enGriego: "ti.kᴇ"),
                    Palabra(palabra: "ro*ck*", enGriego: "ʀok")
              ],
              pronuciacion: "ck",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]
    
    static let tarjetasL:[Tarjeta] = [
        Tarjeta(audio: "pb_l_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*l*it", enGriego: "li"),
                    Palabra(palabra: "b*l*é", enGriego: "blᴇ"),
                    Palabra(palabra: "seu*l*", enGriego: "s&Œ&l"),
                    Palabra(palabra: "avri*l*", enGriego: "a.vʀil"),
              ],
              pronuciacion: "l",
              explicacion: """
                              Excepto en los grupos $-ail$, $-eil$, $-euil$ al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "l",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "trav*ail*", enGriego: "tʀa.vaj "),
                    Palabra(palabra: "rév*eil*", enGriego: "ʀᴇ.vᴇj"),
                    Palabra(palabra: "d*euil*", enGriego: "d&Œ&j")
              ],
              pronuciacion: "-ail, -eil, -euil",
              explicacion: """
                              Al final de una palabra,\n\n $il$ transcriben el sonido
                          """,
              imagenFonema: "j",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_l_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "nu*ll*e", enGriego: "nyl")
              ],
              pronuciacion: "-ll-",
              explicacion: """
                              Excepto después de $i$ \n\n transcriben el sonido
                          """,
              imagenFonema: "l",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*fill*e", enGriego: "fij")
              ],
              pronuciacion: "-ill-",
              explicacion: """
                              Después de una consonante \n\n transcriben el sonido
                          """,
              imagenFonema: "ij",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "elle trav*aill*e", enGriego: "ᴇl.tʀa.vaj"),
                    Palabra(palabra: "rév*eill*on", enGriego: "ʀᴇ.vᴇ.jõ"),
                    Palabra(palabra: "fe*uill*e", enGriego: "f&Œ&j"),
              ],
              pronuciacion: "-ill-",
              explicacion: """
                              En $aill$, $eill$, $uill$ \n\n transcriben el sonido
                          """,
              imagenFonema: "j",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]
    
    static let tarjetasM:[Tarjeta] = [
        Tarjeta(audio: "pb_m_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*mam*an", enGriego: "ma.mɑ̃"),
                    Palabra(palabra: "pi*m*ent", enGriego: "pi.mɑ̃"),
              ],
              pronuciacion: "m",
              explicacion: """
                              Seguida de una vocal \n\n transcribe el sonido
                          """,
              imagenFonema: "m",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_m_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "gra*mma*tical", enGriego: "gʀa.ma.ti.kal"),
                    Palabra(palabra: "téléc*omma*nde", enGriego: "tᴇ.lᴇ.ko.mɑ̃d"),
                    Palabra(palabra: "*immo*ral", enGriego: "i.mo.ʀal")
              ],
              pronuciacion: "-mm-",
              explicacion: """
                              Entre vocales (exepto después de una $e$) \n\n transcriben el sonido
                          """,
              imagenFonema: "m",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_m_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*emmê*ler", enGriego: "ɑ̃.mᴇ.lᴇ")
              ],
              pronuciacion: "emm",
              explicacion: """
                              Al inicio de una palabra y seguidas de una vocal (exepto $e$ sin acento) \n\n $em$ transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: "La segunda $m$ forma parte de la sílaba que sigue."
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*emm*ener", enGriego: "ɑ̃m.nᴇ")
              ],
              pronuciacion: "emm",
              explicacion: """
                              Al inicio de una palabra y seguidas de una $e$ \n\n transcriben los sonidos
                          """,
              imagenFonema: "ɑ̃m",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "dil*emm*e", enGriego: "di.lᴇm")
              ],
              pronuciacion: "emm",
              explicacion: """
                              Después de una consonante y seguidas de una $e$, \n\n $e$ transcribe el sonido \n\n #E# \n\n $mm$ transcriben el sonido
                          """,
              imagenFonema: "m",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_m_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "a*mn*ésie", enGriego: "am.nᴇ.si"),
                    Palabra(palabra: "inde*mn*ité", enGriego: "ɛ̃.dᴇm.ni.tᴇ"),
                    Palabra(palabra: "calo*mn*ier", enGriego: "ka.lom.njᴇ"),
                    Palabra(palabra: "hy*mn*e", enGriego: "imn")
              ],
              pronuciacion: "m",
              explicacion: """
                              Seguida de una $n$ \n\n transcribe el sonido
                          """,
              imagenFonema: "m",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_m_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "j*amb*e", enGriego: "ʒɑ̃b"),
                    Palabra(palabra: "t*emp*s", enGriego: "tɑ̃")
              ],
              pronuciacion: "am o em",
              explicacion: """
                              Seguidas de una consonante (excepto $m$ o $n$) \n\n transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "s*imp*le", enGriego: "sɛ̃pl"),
                    Palabra(palabra: "h*umb*le", enGriego: "ɛ̃bl"),
                    Palabra(palabra: "s*ymp*honie", enGriego: "sɛ̃.fo.ni")
              ],
              pronuciacion: "im, um o ym",
              explicacion: """
                              Seguidas de una consonante (excepto $m$ o $n$) \n\n transcriben el sonido
                          """,
              imagenFonema: "ɛ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "s*omb*re", enGriego: "sõbʀ")
              ],
              pronuciacion: "om",
              explicacion: """
                              Seguidas de una consonante (excepto $m$ o $n$) \n\n transcriben el sonido
                          """,
              imagenFonema: "õ",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_m_06",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "intéri*m*", enGriego: "ɛ̃.tᴇ.ʀim"),
                    Palabra(palabra: "slalo*m*", enGriego: "sla.lom"),
                    Palabra(palabra: "foru*m*", enGriego: "fo.ʀom")
              ],
              pronuciacion: "-m",
              explicacion: """
                              Al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "m",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]
}
