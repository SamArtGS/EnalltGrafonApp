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
                    Palabra(palabra: "hôtel", enGriego: "o.tᴇl")
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
                    Palabra(palabra: "thé", enGriego: "tᴇ"),
                    Palabra(palabra: "aneth", enGriego: "a.nᴇt")
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
                    Palabra(palabra: "maths", enGriego: "mat")
              ],
              pronuciacion: "-ths",
              explicacion: """
                              Al final de una palabra transcriben el sonido
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
                    Palabra(palabra: "chat ", enGriego: "ʃa")
              ],
              pronuciacion: "ch",
              explicacion: """
                              Seguidas de una vocal transcriben el sonido
                          """,
              imagenFonema: "ʃ",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "technologie", enGriego: "tᴇ.kno.lo.ʒi")
              ],
              pronuciacion: "-ch-",
              explicacion: """
                              Seguidas de una consonante transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "psychologie", enGriego: "psi.ko.lo.ʒi")
              ],
              pronuciacion: "-ch-",
              explicacion: """
                              Precedidas de psy transcriben el sonido
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
                    Palabra(palabra: "philosophie", enGriego: "fi.lo.zo.fi")
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
                    Palabra(palabra: "shopping", enGriego: "ʃo.piŋ")
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
                    Palabra(palabra: "schéma", enGriego: "ʃᴇ.ma"),
                    Palabra(palabra: "haschich", enGriego: "a.ʃiʃ"),
                    Palabra(palabra: "goulasch", enGriego: "gu.laʃ")
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
                    Palabra(palabra: "joli", enGriego: "ka.ka.o"),
                    Palabra(palabra: "ajouter", enGriego: "a.ʒu.tᴇ")
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
                    Palabra(palabra: "kilo", enGriego: "ki.lo"),
                    Palabra(palabra: "karaoké", enGriego: "ka.ʀa.o.kᴇ"),
                    Palabra(palabra: "anorak", enGriego: "a.no.ʀak"),
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
                    Palabra(palabra: "ticket", enGriego: "ti.kᴇ"),
                    Palabra(palabra: "rock", enGriego: "ʀok")
              ],
              pronuciacion: "ck",
              explicacion: """
                              transcribe el sonido
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
                    Palabra(palabra: "lit", enGriego: "li"),
                    Palabra(palabra: "blé", enGriego: "blᴇ"),
                    Palabra(palabra: "seul", enGriego: "sɶl"),
                    Palabra(palabra: "avril", enGriego: "a.vʀil"),
              ],
              pronuciacion: "l",
              explicacion: """
                              Excepto en los grupos -ail, -eil, -euil al final de una palabra transcribe el sonido
                          """,
              imagenFonema: "l",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "travail", enGriego: "tʀa.vaj "),
                    Palabra(palabra: "réveil", enGriego: "ʀᴇ.vᴇj"),
                    Palabra(palabra: "deuil", enGriego: "dɶj")
              ],
              pronuciacion: "-ail, -eil, -euil",
              explicacion: """
                              Al final de una palabra, il transcriben el sonido
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
                    Palabra(palabra: "nulle", enGriego: "nyl")
              ],
              pronuciacion: "-ll-",
              explicacion: """
                              Excepto después de i transcriben el sonido
                          """,
              imagenFonema: "l",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "fille", enGriego: "fij")
              ],
              pronuciacion: "-ill-",
              explicacion: """
                              Después de una consonante transcriben el sonido
                          """,
              imagenFonema: "ij",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "elle travaille", enGriego: "ᴇl.tʀa.vaj"),
                    Palabra(palabra: "réveillon", enGriego: "ʀᴇ.vᴇ.jõ"),
                    Palabra(palabra: "feuille", enGriego: "fɶj"),
              ],
              pronuciacion: "-ill-",
              explicacion: """
                              En aill, eill, uill transcriben el sonido
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
                    Palabra(palabra: "maman", enGriego: "ma.mɑ̃"),
                    Palabra(palabra: "piment", enGriego: "pi.mɑ̃"),
              ],
              pronuciacion: "m",
              explicacion: """
                              Seguida de una vocal transcribe el sonido
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
                    Palabra(palabra: "grammatical", enGriego: "gʀa.ma.ti.kal"),
                    Palabra(palabra: "télécommande", enGriego: "tᴇ.lᴇ.ko.mɑ̃d"),
                    Palabra(palabra: "immoral", enGriego: "i.mo.ʀal")
              ],
              pronuciacion: "-mm-",
              explicacion: """
                              Entre vocales (exepto después de una e) transcriben el sonido
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
                    Palabra(palabra: "emmêler", enGriego: "ɑ̃.mᴇ.lᴇ")
              ],
              pronuciacion: "emm",
              explicacion: """
                              Al inicio de una palabra y seguidas de una vocal (exepto e sin acento) em transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: "La segunda m forma parte de la sílaba que sigue."
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "emmener", enGriego: "ɑ̃m.nᴇ")
              ],
              pronuciacion: "emm",
              explicacion: """
                              Al inicio de una palabra y seguidas de una e transcriben los sonidos
                          """,
              imagenFonema: "ɑ̃m",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "dilemme", enGriego: "di.lᴇm")
              ],
              pronuciacion: "emm",
              explicacion: """
                              Después de una consonante y seguidas de una e, e transcribe el sonido \n ᴇ \n mm transcriben el sonido
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
                    Palabra(palabra: "amnésie", enGriego: "am.nᴇ.si"),
                    Palabra(palabra: "indemnité", enGriego: "ɛ̃.dᴇm.ni.tᴇ"),
                    Palabra(palabra: "calomnier", enGriego: "ka.lom.njᴇ"),
                    Palabra(palabra: "hymne", enGriego: "imn")
              ],
              pronuciacion: "m",
              explicacion: """
                              Seguida de una n transcribe el sonido
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
                    Palabra(palabra: "jambe", enGriego: "ʒɑ̃b"),
                    Palabra(palabra: "temps", enGriego: "tɑ̃")
              ],
              pronuciacion: "am o em",
              explicacion: """
                              Seguidas de una consonante (excepto m o n) transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "simple", enGriego: "sɛ̃pl"),
                    Palabra(palabra: "humble", enGriego: "ɛ̃bl"),
                    Palabra(palabra: "symphonie", enGriego: "sɛ̃.fo.ni")
              ],
              pronuciacion: "im, um o ym",
              explicacion: """
                              Seguidas de una consonante (excepto m o n) transcriben el sonido
                          """,
              imagenFonema: "ɛ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "sombre", enGriego: "sõbʀ")
              ],
              pronuciacion: "om",
              explicacion: """
                              Seguidas de una consonante (excepto m o n) transcriben el sonido
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
                    Palabra(palabra: "intérim", enGriego: "ɛ̃.tᴇ.ʀim"),
                    Palabra(palabra: "slalom", enGriego: "sla.lom"),
                    Palabra(palabra: "forum", enGriego: "fo.ʀom")
              ],
              pronuciacion: "-m",
              explicacion: """
                              Al final de una palabra transcribe el sonido
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
