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
                    Palabra(palabra: "*cha*t", enGriego: "∫a")
              ],
              pronuciacion: "ch",
              explicacion: """
                              Seguidas de una vocal \n\n transcriben el sonido
                          """,
              imagenFonema: "∫",
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
          excepciones: [
            Palabra(palabra: "chaos", enGriego: "ka.o"),
            Palabra(palabra: "charisme", enGriego: "ka.ʀism"),
            Palabra(palabra: "choléra", enGriego: "ko.lᴇ.ʀa"),
            Palabra(palabra: "chorale", enGriego: "ko.ʀal"),
            Palabra(palabra: "archaïque", enGriego: "aʀ.ka.ik"),
            Palabra(palabra: "archéologie", enGriego: "aʀ.kᴇ.o.lo.ʒi"),
            Palabra(palabra: "orchestre", enGriego: "oʀ.kᴇstʀ "),
            Palabra(palabra: "orchidée", enGriego: "oʀ.ki.dᴇ"),
            Palabra(palabra: "écho", enGriego: "ᴇ.ko"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "sandwich", enGriego: "sɑ̃.dwi∫"),
            Palabra(palabra: "scotch", enGriego: "skot∫"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "psychique", enGriego: "psi.∫ik"),
            Palabra(palabra: "psychisme", enGriego: "psi.∫ism"),
            Palabra(palabra: "psyché", enGriego: "psi.∫ᴇ")
          ]
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
                    Palabra(palabra: "*sh*opping", enGriego: "∫o.piŋ")
              ],
              pronuciacion: "sh",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "∫",
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
                    Palabra(palabra: "*sch*éma", enGriego: "∫ᴇ.ma"),
                    Palabra(palabra: "ha*sch*ich", enGriego: "a.∫i∫"),
                    Palabra(palabra: "goula*sch*", enGriego: "gu.la∫")
              ],
              pronuciacion: "sch",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "∫",
              imagenConsejo: "e_retro_varias-letras_n2", // ¡No te espantes! Eso pasa muy seguido en francés: varias letras, un solo sonido.
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
                    Palabra(palabra: "*j*oli", enGriego: "ʒo.li"),
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
          excepciones: [
            Palabra(palabra: "jogging", enGriego: "dʒo.giŋ"),
            Palabra(palabra: "job", enGriego: "dʒob")
          ]
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
                              Excepto en los grupos $-ail$¿,¿ $-eil$¿,¿ $-euil$ al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "l",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "trav*ail*", enGriego: "tʀa.vaj "),
                    Palabra(palabra: "d*euil*", enGriego: "d&Œ&j"),
                    Palabra(palabra: "rév*eil*", enGriego: "ʀᴇ.vᴇj"),
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
          excepciones: [
            Palabra(palabra: "fusil", enGriego: "fy.zi"),
            Palabra(palabra: "gentil", enGriego: "ʒɑ̃.ti"),
            Palabra(palabra: "outil", enGriego: "u.ti"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "fils", enGriego: "fis"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "soul", enGriego: "su"),
            Palabra(palabra: "cul", enGriego: "ky")
          ]
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
          excepciones: [
            Palabra(palabra: "villa", enGriego: "vi.la"),
            Palabra(palabra: "village", enGriego: "vi.laʒ"),
            Palabra(palabra: "ville", enGriego: "vil"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "tranquille", enGriego: "tʀɑ̃.kil"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "mille", enGriego: "mil"),
            Palabra(palabra: "million", enGriego: "mi.ljõ"),
            Palabra(palabra: "milliard", enGriego: "mi.ljaʀ")
          ]
        )
    ]
    
    static let tarjetasM:[Tarjeta] = [
        Tarjeta(audio: "pb_m_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*mama*n", enGriego: "ma.mɑ̃"),
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
                    Palabra(palabra: "gr*amma*tical", enGriego: "gʀa.ma.ti.kal"),
                    Palabra(palabra: "ºtélécºªommaªºndeº", enGriego: "tᴇ.lᴇ.ko.mɑ̃d"),
                    Palabra(palabra: "*immo*ral", enGriego: "i.mo.ʀal")
              ],
              pronuciacion: "-mm-",
              explicacion: """
                              Entre vocales (excepto después de una $e$) \n\n transcriben el sonido
                          """,
              imagenFonema: "m",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "immangeable", enGriego: "ɛ̃.mɑ̃.ʒabl"),
            Palabra(palabra: "immanquable", enGriego: "ɛ̃.mɑ̃.kabl")
          ]
        ),
        
        Tarjeta(audio: "pb_m_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*emmê*ler", enGriego: "ɑ̃.mᴇ.lᴇ")
              ],
              pronuciacion: "emm-",
              explicacion: """
                              Al inicio de una palabra y seguidas de una vocal (excepto $e$ sin acento) \n $em$ transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: "La segunda $m$ forma parte de la sílaba que sigue."
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*emme*ner", enGriego: "ɑ̃m.nᴇ")
              ],
              pronuciacion: "emm-",
              explicacion: """
                              Al inicio de una palabra y seguidas de una $e$ \n\n transcriben los sonidos
                          """,
              imagenFonema: "ɑ̃m",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "dil*emme*", enGriego: "di.lᴇm")
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
          excepciones: [
            Palabra(palabra: "femme", enGriego: "fam"),
            Palabra(palabra: "emmenthal", enGriego: "ᴇ.mɑ̃.tal"),
            Palabra(palabra: "évidemment", enGriego: "ᴇ.vi.da.mɑ̃"),
            Palabra(palabra: "apparemment", enGriego: "a.pa.ʀa.mɑ̃"),
            Palabra(palabra: "consciemment", enGriego: "kõ.sja.mɑ̃"),
            Palabra(palabra: "différemment", enGriego: "di.fᴇ.ʀa.mɑ̃"),
            Palabra(palabra: "fréquemment", enGriego: "fʀᴇ.ka.mɑ̃"),
            Palabra(palabra: "intelligemment", enGriego: "ɛ̃.tᴇ.li.ʒa.mɑ̃")
          ]
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
          excepciones: [
            Palabra(palabra: "automne", enGriego: "o.ton"),
            Palabra(palabra: "condamner", enGriego: "kõ.da.nᴇ"),
            Palabra(palabra: "il condamne", enGriego: "il.kõ.dan"),
            Palabra(palabra: "condamnation", enGriego: "kõ.da.na.sjõ"),
            Palabra(palabra: "damner", enGriego: "da.nᴇ")
          ]
        ),
        
        Tarjeta(audio: "pb_m_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "j*amb*e", enGriego: "ʒɑ̃b"),
                    Palabra(palabra: "t*emp*s", enGriego: "tɑ̃")
              ],
              pronuciacion: "am ¿o¿ em",
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
                // MARK: La coma no se quita, checar
              pronuciacion: "im, um ¿o¿ ym",
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
          excepciones: [
            Palabra(palabra: "nom", enGriego: "nõ"),
            Palabra(palabra: "prénom", enGriego: "pʀᴇ.nõ"),
            Palabra(palabra: "pronom", enGriego: "pʀo.nõ"),
            Palabra(palabra: "faim", enGriego: "fɛ̃"),
            Palabra(palabra: "thym", enGriego: "tɛ̃"),
            Palabra(palabra: "parfum", enGriego: "paʀ.fɛ̃")
          ]
        )
    ]
}
