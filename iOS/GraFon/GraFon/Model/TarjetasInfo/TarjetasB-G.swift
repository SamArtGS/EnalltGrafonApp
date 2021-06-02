//
//  TarjetasB-G.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension tarjetas{
    
    static let tarjetasB:[Tarjeta] = [
        Tarjeta(audio: "pb_b_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "bleu", enGriego: "blɶ"),
                    Palabra(palabra: "table", enGriego: "tabl"),
                    Palabra(palabra: "club", enGriego: "klɶb"),
              ],
              pronuciacion: "b",
              explicacion: """
                              (Excepto antes de s o t) transcribe el sonido
                          """,
              imagenFonema: "b",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_b_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "absent", enGriego: "blɶ")
              ],
              pronuciacion: "-bs-",
              explicacion: """
                              transcriben los sonidos
                          """,
              imagenFonema: "ps",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
                palabras: [
                      Palabra(palabra: "obtenir", enGriego: "o.ptɶ.niʀ")
                ],
                pronuciacion: "-bt-",
                explicacion: """
                                transcriben los sonidos
                            """,
                imagenFonema: "pt",
                imagenConsejo: "b_retro_3Bb_n2",
                textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_b_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "sabbatique", enGriego: "sa.ba.tik")
              ],
              pronuciacion: "-bb-",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "b",
              imagenConsejo: nil, // ME FALTA LA IMAGEN DE LAS OFERTAS :S
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
        
    ]
    
    static let tarjetasC:[Tarjeta] = [
        Tarjeta(audio: "pb_c_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "cacao", enGriego: "ka.ka.o")
              ],
              pronuciacion: "c",
              explicacion: """
                              Seguida de a, o, u transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ceci", enGriego: "sɶ.si")
              ],
              pronuciacion: "c",
              explicacion: """
                              Seguida de e, i, y, transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "octobre", enGriego: "ok.tobʀ")
              ],
              pronuciacion: "c",
              explicacion: """
                              Seguida de una consonante transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "sac", enGriego: "sak")
              ],
              pronuciacion: "-c",
              explicacion: """
                              Al final de una palabra transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_c_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "accord", enGriego: "a.koʀ")
              ],
              pronuciacion: "-cc-",
              explicacion: """
                              Seguidas de a, o, u transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "accident", enGriego: "a.ksi.dɑ̃")
              ],
              pronuciacion: "-cc-",
              explicacion: """
                              Seguidas de e, i, y transcriben los sonidos
                          """,
              imagenFonema: "ks",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_c_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "scène", enGriego: "sᴇn")
              ],
              pronuciacion: "sc",
              explicacion: """
                              Seguidas de e, i, y transcriben el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "escalier", enGriego: "ᴇ.ska.ljᴇ")
              ],
              pronuciacion: "sc",
              explicacion: """
                             Seguidas de a, o, u transcriben los sonidos
                          """,
              imagenFonema: "sk",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_c_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "chat", enGriego: "ʃa")
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
        
        Tarjeta(audio: "pb_c_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "ticket", enGriego: "ti.kᴇ"),
                    Palabra(palabra: "rock", enGriego: "ʀok")
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
        ),
        
        Tarjeta(audio: "pb_c_06",
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
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_c_07",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "acquérir", enGriego: "a.kᴇ.ʀiʀ"),
                    Palabra(palabra: "grecque", enGriego: "gʀᴇk")
              ],
              pronuciacion: "-cqu-",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_c_08",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "aspect", enGriego: "as.pᴇ"),
                    Palabra(palabra: "respect", enGriego: "ʀᴇs.pᴇ")
              ],
              pronuciacion: "-ect",
              explicacion: """
                              Al final de una palabra y precedidas de p transcriben el sonido
                          """,
              imagenFonema: "ᴇ",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "direct", enGriego: "di.ʀᴇkt"),
                    Palabra(palabra: "correct", enGriego: "ko.ʀᴇkt")
              ],
              pronuciacion: "-ect",
              explicacion: """
                              Al final de una palabra y precedidas de una consonante (excepto p) transcriben los sonidos
                          """,
              imagenFonema: "ᴇkt",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "contact", enGriego: "kõ.takt")
              ],
              pronuciacion: "act",
              explicacion: """
                              transcriben los sonidos
                          """,
              imagenFonema: "akt",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_c_09",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "ça", enGriego: "sa"),
                    Palabra(palabra: "garçon", enGriego: "gaʀ.sõ"),
                    Palabra(palabra: "reçu", enGriego: "ʀɶ.sy")
              ],
              pronuciacion: "ç",
              explicacion: """
                              transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "direct", enGriego: "di.ʀᴇkt"),
                    Palabra(palabra: "correct", enGriego: "ko.ʀᴇkt")
              ],
              pronuciacion: "-ect",
              explicacion: """
                              Al final de una palabra y precedidas de una consonante (excepto p) transcriben los sonidos
                          """,
              imagenFonema: "ᴇkt",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "contact", enGriego: "kõ.takt")
              ],
              pronuciacion: "act",
              explicacion: """
                              transcriben los sonidos
                          """,
              imagenFonema: "akt",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]
    
    static let tarjetasD:[Tarjeta] = [
        Tarjeta(audio: "pb_d_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "date", enGriego: "dat"),
                    Palabra(palabra: "étude", enGriego: "ᴇ.tyd")
              ],
              pronuciacion: "d",
              explicacion: """
                              Excepto al final de una palabra transcribe el sonido
                          """,
              imagenFonema: "d",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "nord", enGriego: "noʀ")
              ],
              pronuciacion: "-d",
              explicacion: """
                              Al final de una palabra no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil, //ME FALTÓ LA DE NI SIQUIERA LO INTENTES
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_d_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "addition", enGriego: "a.di.sjõ")
              ],
              pronuciacion: "-dd-",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "d",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_d_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "poids", enGriego: "pwa")
              ],
              pronuciacion: "-ds",
              explicacion: """
                              Al final de una palabra no transcriben ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2", //PARECE QUE NO HAY "MEME" DE LISA
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_d_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "cacao", enGriego: "ka.ka.o")
              ],
              pronuciacion: "c",
              explicacion: """
                              Seguida de a, o, u transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]
    
    
    static let tarjetasF:[Tarjeta] = [
        Tarjeta(audio: "pb_f_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "femme", enGriego: "fam"),
                Palabra(palabra: "chef", enGriego: "ʃᴇf")
              ],
              pronuciacion: "f",
              explicacion: """
                              transcribe el sonido
                          """,
              imagenFonema: "f",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_f_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "offrir", enGriego: "o.fʀiʀ"),
                    Palabra(palabra: "bluff", enGriego: "blɶf")
              ],
              pronuciacion: "ff",
              explicacion: """
                              transcribe el sonido
                          """,
              imagenFonema: "f",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
        
    ]
    
    
    static let tarjetasG:[Tarjeta] = [
        Tarjeta(audio: "pb_g_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "gare", enGriego: "gaʀ"),
                    Palabra(palabra: "gaʀ", enGriego: "gu"),
                    Palabra(palabra: "aigu", enGriego: "ᴇ.gy"),
                    Palabra(palabra: "aigüe", enGriego: "ᴇ.gy"),
                    Palabra(palabra: "église", enGriego: "ᴇ.gliz")
              ],
              pronuciacion: "g",
              explicacion: """
                              Seguida de a, o, u, ü
                              o de una consonante (excepto n) transcribe el sonido
                          """,
              imagenFonema: "g",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_g_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "cage", enGriego: "kaʒ"),
                    Palabra(palabra: "girafe", enGriego: "ʒi.ʀaf"),
                    Palabra(palabra: "gym", enGriego: "ʒim")
              ],
              pronuciacion: "g",
              explicacion: """
                              Seguida de  e, i, y transcribe el sonido
                          """,
              imagenFonema: "ʒ",
              imagenConsejo: nil, //NO VEO IMAGEN DE RASURADORA :c
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_g_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "aggravé", enGriego: "a.gʀa.vᴇ"),
                    Palabra(palabra: "jogging", enGriego: "dʒo.giŋ")
              ],
              pronuciacion: "-gg-",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "g",
              imagenConsejo: nil, //NO VEO IMAGEN DE "No estás viendo doble :("
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_g_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "montagne", enGriego: "mõ.tanj")
              ],
              pronuciacion: "gn",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "nj",
              imagenConsejo: "g_retro_3Db_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_g_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "hotdog", enGriego: "ot.dog")
              ],
              pronuciacion: "-g",
              explicacion: """
                              Al final de una palabra transcribe el sonido
                          """,
              imagenFonema: "g",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "camping", enGriego: "kɑ̃.piŋ")
              ],
              pronuciacion: "-ing",
              explicacion: """
                              Al final de una palabra transcriben los sonidos
                          """,
              imagenFonema: "iŋ",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]
}
