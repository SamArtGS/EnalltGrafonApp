//
//  Prueba.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-18.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

struct tarjetas {
    
    static let sinSonido: String = "ico_sin-sonido_n2"
    
    /// ---------------------------------------------------------------------------------
    /// ----------------------------------     T A R J E T A S    É È Ê      ----------------------------------------------------------------------------
    /// ---------------------------------------------------------------------------------
    
    static let tarjetasEEE:[Tarjeta] = [
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "étude", enGriego: "E.tyd"),
                        Palabra(palabra: "européen", enGriego: "Œ.RO.pE.ɛ̃")
                    ],
                    pronuciacion: "é",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: [Palabra(palabra: "coach", enGriego: "kot∫"),
                          Palabra(palabra: "goal", enGriego: "gol"),
                          Palabra(palabra: "toast", enGriego: "tost")]
        ),
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                          Palabra(palabra: "mère", enGriego: "mER"),
                          Palabra(palabra: "brève", enGriego: "bREv")
                    ],
                    pronuciacion: "è",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: "buho",
                    textodeAbajo: nil
                )
            ],
            excepciones: [Palabra(palabra: "coach", enGriego: "kot∫"),
                          Palabra(palabra: "goal", enGriego: "gol"),
                          Palabra(palabra: "toast", enGriego: "tost")]
        ),
        
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                          Palabra(palabra: "fête", enGriego: "fEt"),
                          Palabra(palabra: "même", enGriego: "mEm")
                    ],
                    pronuciacion: "ê",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: "buho",
                    textodeAbajo: nil
                )
            ],
            excepciones: [Palabra(palabra: "coach", enGriego: "kot∫"),
                          Palabra(palabra: "goal", enGriego: "gol"),
                          Palabra(palabra: "toast", enGriego: "tost")]
        )
    ]
    
    
    /// ---------------------------------------------------------------------------------
    /// ----------------------------------      T A R J E T A S    A        -------------------------------------------------------------------------------
    /// ---------------------------------------------------------------------------------
    
    
    static let tarjetasA:[Tarjeta] =  [
        Tarjeta(audio: "pb_a_01",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "ma", enGriego: "ma"),
                        Palabra(palabra: "chat", enGriego: "∫a")
                    ],
                    pronuciacion: "a",
                    explicacion: "Al final de una palabra o seguida de una consonante (excepto m o n) \n Transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "à", enGriego: "a")
                    ],
                    pronuciacion: "a",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "pâte", enGriego: "pat")
                    ],
                    pronuciacion: "-e",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: [Palabra(palabra: "coach", enGriego: "kot∫"),
                          Palabra(palabra: "goal", enGriego: "gol"),
                          Palabra(palabra: "toast", enGriego: "tost")]
        ),

        Tarjeta(audio: "pb_a_02",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "pain", enGriego: "pɛ̃"),
                        Palabra(palabra: "ainsi", enGriego: "ɛ̃.si")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Al final de una palabra o seguida de una consonante. \n Transcribe el sonido",
                    imagenFonema: "ɛ̃",
                    imagenConsejo: "i_retro_3Cb_n2",
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "ainé", enGriego: "ᴇ.nᴇ")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Seguidas de una vocal (excepto e al final de una palabra). \n La n forma parte de la sílaba que sigue. \n ai transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "saine", enGriego: "sᴇn")
                    ],
                    pronuciacion: "-aine",
                    explicacion: "Al final de una palabra, transcribe los sonidos",
                    imagenFonema: "En",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: [Palabra(palabra: "coach", enGriego: "kot∫"),
                          Palabra(palabra: "goal", enGriego: "gol"),
                          Palabra(palabra: "toast", enGriego: "tost")]
        ),

        Tarjeta(audio: "pb_a_03",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "aimé", enGriego: "ᴇ.mᴇ")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Seguidas de una voval (excepto e al final de una palabra). \n La m forma parte de la sílaba que sigue. \n ai transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "tu aimes", enGriego: "ty.ᴇm")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Transcribe los sonidos",
                    imagenFonema: "Em",
                    imagenConsejo: "nil",
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "faim", enGriego: "fɛ̃")
                    ],
                    pronuciacion: "-aine",
                    explicacion: "Al inal de una palabra, transcribe los sonidos",
                    imagenFonema: "ɛ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "pb_a_04",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "au", enGriego: "o")
                    ],
                    pronuciacion: "au",
                    explicacion: "Transcriben el sonido",
                    imagenFonema: "o",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "eau", enGriego: "o")
                    ],
                    pronuciacion: "eau",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "o",
                    imagenConsejo: "e_retro_varias-letras_n2",
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_a_05",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "travail", enGriego: "tʀa.vaj")
                    ],
                    pronuciacion: "-ail",
                    explicacion: "Transcriben los sonidos",
                    imagenFonema: "aj",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "ailleurs", enGriego: "a.jɶʀ")
                    ],
                    pronuciacion: "aill",
                    explicacion: "Transcribe los sonidos",
                    imagenFonema: "aj",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "pb_a_06",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "jambe", enGriego: "ʒɑ̃b")
                    ],
                    pronuciacion: "am",
                    explicacion: "Seguidas de una consonante (excepto m y n), transcriben el sonido",
                    imagenFonema: "ɑ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "grammatical", enGriego: "gʀa.ma.ti.kal"),
                          Palabra(palabra: "amie", enGriego: "a.mi")
                    ],
                    pronuciacion: "am",
                    explicacion: "Seguidas de otra m o de una vocal (excepto e al final de una palabra), la m forma parte de la sílaba que sigue. La a transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "dame", enGriego: "dam")
                    ],
                    pronuciacion: "-ame",
                    explicacion: "Al final de una palabra, transcriben los sonidos",
                    imagenFonema: "am",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "amnésie", enGriego: "am.nᴇ.zi")
                    ],
                    pronuciacion: "am",
                    explicacion: "La n forma parte de la sílaba que sigue. Seguidas de una n, am transcriben los sonidos",
                    imagenFonema: "am",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )],
            excepciones: nil
        ),
        
        Tarjeta(audio: "pb_a_07",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "mai", enGriego: "mᴇ"),
                        Palabra(palabra: "mais", enGriego: "mᴇ")
                    ],
                    pronuciacion: "-ail",
                    explicacion: "Al final de una palabra o seguidas de una consonante (excepto l, m, n), transcribe el sonido",
                    imagenFonema: "ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
            ],
            excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_a_08",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "plan", enGriego: "plɑ̃"),
                        Palabra(palabra: "chant", enGriego: "ʃɑ̃")
                    ],
                    pronuciacion: "an",
                    explicacion: "Al final de una palabra o seguidas de una consonante (excepto n), transcribe el sonido",
                    imagenFonema: "ɑ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "année", enGriego: "a.nᴇ"),
                          Palabra(palabra: "animal", enGriego: "a.ni.mal"),
                    ],
                    pronuciacion: "an",
                    explicacion: "La n forma parte de la sílaba que sigue. Seguidas de otra n o de una vocal (excepto e al final de una palabra), a transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "banane", enGriego: "ba.nan")
                    ],
                    pronuciacion: "-ane",
                    explicacion: "Al final de una palabra, transcribe los sonidos",
                    imagenFonema: "an",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "pb_a_09",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "elle paye", enGriego: "ᴇl.pᴇj"),
                        Palabra(palabra: "pays", enGriego: "pᴇ.i")
                    ],
                    pronuciacion: "a",
                    explicacion: "Seguida de y, transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),
    ]
    
    
    /// ---------------------------------------------------------------------------------
    /// ----------------------------------      T A R J E T A S    E        -------------------------------------------------------------------------------
    /// ---------------------------------------------------------------------------------
    
    static let tarjetasE:[Tarjeta] = [
        Tarjeta(audio: "pb_e_01",
           silabas: [
               Silaba(
                   palabras: [
                       Palabra(palabra: "table", enGriego: "tabl"),
                       Palabra(palabra: "amie", enGriego: "a.mi")
                   ],
                   pronuciacion: "-e",
                   explicacion: "Al final de una palabra de más de dos letras no trascribe ningún sonido",
                   imagenFonema: sinSonido,
                   imagenConsejo: nil,
                   textodeAbajo: nil
               ),
               Silaba(
                   palabras: [
                         Palabra(palabra: "je", enGriego: "3Œ"),
                         Palabra(palabra: "le", enGriego: "IŒ")
                   ],
                   pronuciacion: "-e",
                   explicacion: "Al final de una palabra de 2 letras transcribe el sonido que le corresponde a cada uno de los elemenos",
                   imagenFonema: "Y",
                   imagenConsejo: nil, // // // -> LENGUA, SE ELIMINÓ,
                   textodeAbajo: nil
                  )
                ],
            excepciones: nil
           ),
        
           Tarjeta(audio: "pb_e_02",
               silabas: [
                   Silaba(
                       palabras: [
                             Palabra(palabra: "devoir", enGriego: "dɶ.vwaʀ")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la letra e:
                                       Está en la primera sílaba de una palabra y
                                       Le sigue una sola constante (excepto x) más una
                                       vocal transcribe el sonido
                                   """,
                       imagenFonema: "ɶ",
                       imagenConsejo: nil,
                       textodeAbajo: nil
                   ),
                   Silaba(
                       palabras: [
                             Palabra(palabra: "maxicain", enGriego: "mᴇ.ksi.kɛ̃")
                       ],
                       pronuciacion: "e",
                       explicacion: "Seguida de x transcribe el sonido",
                       imagenFonema: "ᴇ",
                       imagenConsejo: nil,
                       textodeAbajo: nil
                   )
                   ],
                   excepciones: nil
           ),
           Tarjeta(audio: "pb_e_03",
               silabas: [
                   Silaba(
                       palabras: [
                             Palabra(palabra: "samedi", enGriego: "sam.di"),
                             Palabra(palabra: "complètement", enGriego: "kõ.plᴇt.mɑ̃")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la e está:
                                       -de la segunda sílaba escrita en adelante,
                                       -precedida de una sola consonante que transcribe un sonido y
                                       -le sigue una sola consonante que transcribe un sonido (excepto en los  grupos: li, ri, mi, ni)
                                   """,
                       imagenFonema: sinSonido,
                       imagenConsejo: "e_retro_3Cb_n2",
                       textodeAbajo: nil
                   )
                   ],
                   excepciones: nil
           ),
           
           Tarjeta(audio: "pb_e_04",
               silabas: [
                   Silaba(
                       palabras: [
                             Palabra(palabra: "tristement", enGriego: "sam.di"),
                             Palabra(palabra: "mercredi", enGriego: "kõ.plEt.mã")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la e está:
                                       -de la segunda sílaba escrita en adelante,
                                       -precedida de dos consonantes que transcriben un sonido y
                                       -le sigue una sola consonante que transcribe un sonido
                                        transcribe el sonido
                                   """,
                       imagenFonema: "ɶ",
                       imagenConsejo: nil,
                       textodeAbajo: nil
                   )
                   ],
                   excepciones: nil
           ),
           Tarjeta(audio: "pb_e_05",
                silabas: [
                   Silaba(
                       palabras: [
                             Palabra(palabra: "tu parles", enGriego: "ty.paʀl"),
                             Palabra(palabra: "amies", enGriego: "a.mi")
                       ],
                       pronuciacion: "-es",
                       explicacion: """
                                       Al final de una palabra de más de tres letras no transcriben ningún sonido.
                                   """,
                       imagenFonema: sinSonido,
                       imagenConsejo: "e_retro_3Eb_n2",
                       textodeAbajo: nil
                   ),
                   Silaba(
                   palabras: [
                         Palabra(palabra: "les", enGriego: "lᴇ")
                   ],
                   pronuciacion: "-es",
                   explicacion: """
                                   Al final de una palabra de tres letras (por ejemplo, un determinante plural: les, mes, tes, etc.), transcriben el sonido
                               """,
                   imagenFonema: "ᴇ",
                   imagenConsejo: nil,
                   textodeAbajo: nil
                   ),
                   Silaba(
                       palabras: [
                             Palabra(palabra: "tu es", enGriego: "ty.ᴇ")
                       ],
                       pronuciacion: "es",
                       explicacion: """
                                       En la forma conjugada del verbo être, transcriben el sonido
                                   """,
                       imagenFonema: "ᴇ",
                       imagenConsejo: nil,
                       textodeAbajo: nil
                   )
                ],
               excepciones: nil
            ),
           
           
            Tarjeta(audio: "pb_e_06",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "elles parlent", enGriego: "ᴇl.paʀl"),
                            Palabra(palabra: "elles parlaient", enGriego: "ᴇl.paʀ.lᴇ"),
                            Palabra(palabra: "ils crient", enGriego: "il.kʀi")
                      ],
                      pronuciacion: "-ent",
                      explicacion: """
                                      Al final de un verbo conjugado en la tercera persona del plural, no transcriben ningún sonido
                                  """,
                      imagenFonema: sinSonido,
                      imagenConsejo: "e_retro_3Fb_n2",
                      textodeAbajo: nil
                  ),
                  
                  Silaba(
                      palabras: [
                            Palabra(palabra: "elle vient", enGriego: "ᴇl.vjɛ̃")
                      ],
                      pronuciacion: "-ent",
                      explicacion: """
                                      Al final de un verbo conjugado en la tercera persona del singular, transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  
                  Silaba(
                      palabras: [
                            Palabra(palabra: "vent", enGriego: "vɑ̃"),
                            Palabra(palabra: "content", enGriego: "kõ.tɑ̃"),
                            Palabra(palabra: "lentement", enGriego: "lɑ̃t.mɑ̃")
                      ],
                      pronuciacion: "-ent",
                      explicacion: """
                                      Al final de un sustantivo, un adjetivo o un adverbio, transcriben el sonido
                                  """,
                      imagenFonema: "ɑ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_07",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "examen", enGriego: "ᴇg.za.mɛ̃"),
                      ],
                      pronuciacion: "es",
                      explicacion: """
                                      Al final de una palabra transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "européen", enGriego: "ɶ.ʀo.pᴇ.ɛ̃"),
                      ],
                      pronuciacion: "-éen",
                      explicacion: """
                                      Al final de una palabra transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇ.ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "européenne", enGriego: "ɶ.ʀo.pᴇ.ᴇn"),
                      ],
                      pronuciacion: "-éenne",
                      explicacion: """
                                      Al final de una palabra transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇ.ᴇn",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_08",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "enfant", enGriego: "ɑ̃.fɑ̃"),
                            Palabra(palabra: "centre", enGriego: "sɑ̃tʀ"),
                      ],
                      pronuciacion: "en",
                      explicacion: """
                                      Seguidas de una consonante (excepto n), transcriben el sonido
                                  """,
                      imagenFonema: "ɑ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "ils prennent", enGriego: "il.pʀᴇn")
                      ],
                      pronuciacion: "-enn-",
                      explicacion: """
                                      Seguidas de una vocal (excepto al inicio de una palabra), transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇn",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "ennuyeux", enGriego: "ɑ̃.nɥi.jɶ")
                      ],
                      pronuciacion: "enn-",
                      explicacion: """
                                      Al inicio de una palabra y seguidas de una vocal, transcriben los sonidos
                                  """,
                      imagenFonema: "ɑ̃.n",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_09",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "esprit", enGriego: "ᴇs.pʀi"),
                            Palabra(palabra: "erreur", enGriego: "ᴇ.ʀɶʀ")
                      ],
                      pronuciacion: "e-",
                      explicacion: """
                                      Al inicio de una palabra y seguida de dos consonantes (excepto n, m), transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "exemple", enGriego: "ᴇ.gzɑ̃pl")
                      ],
                      pronuciacion: "e-",
                      explicacion: """
                                      Al inicio de una palabra y seguida de x, transcribe el sonido
                                    """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_10",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "emporter", enGriego: "ɑ̃.poʀ.tᴇ"),
                      ],
                      pronuciacion: "em-",
                      explicacion: """
                                      Al inicio de una palabra y
                                      seguidas de una consonante transcriben el sonido
                                  """,
                      imagenFonema: "ɑ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "dilemme", enGriego: "di.lᴇm"),
                      ],
                      pronuciacion: "-em-",
                      explicacion: """
                                      Después de una consonante y
                                      seguidas de m, transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_11",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "terre", enGriego: "tᴇʀ"),
                            Palabra(palabra: "admettre", enGriego: "ad.mᴇtʀ"),
                            Palabra(palabra: "belle", enGriego: "bᴇl")
                      ],
                      pronuciacion: "e",
                      explicacion: """
                                      Seguida de dos consonantes idénticas (excepto n, m) y a excepción del caso de ress al inicio de una palabra, transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "ressource", enGriego: "ʀɶ.suʀs"),
                            Palabra(palabra: "ressembler", enGriego: "ʀɶ.sɑ̃.blᴇ"),
                            Palabra(palabra: "ressentir", enGriego: "ʀɶ.sɑ̃.tiʀ")
                      ],
                      pronuciacion: "ress-",
                      explicacion: """
                                      Al inicio de una palabra, e transcribe el sonido
                                  """,
                      imagenFonema: "ɶ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_12",
            silabas: [
                Silaba(
                    palabras: [
                          Palabra(palabra: "lecture", enGriego: "lᴇk.tuʀ"),
                          Palabra(palabra: "hivernal", enGriego: "i.vᴇʀ.nal"),
                          Palabra(palabra: "section", enGriego: "sᴇk.sjõ"),
                          Palabra(palabra: "responsable", enGriego: "ʀᴇs.põ.sabl"),
                          Palabra(palabra: "restaurant", enGriego: "ʀᴇs.to.ʀɑ̃"),
                          Palabra(palabra: "reste", enGriego: "ʀᴇst"),
                          Palabra(palabra: "insecte", enGriego: "ɛ̃.sᴇkt"),
                          Palabra(palabra: "dernier", enGriego: "dᴇʀ.njᴇ")
                    ],
                    pronuciacion: "es",
                    explicacion: """
                                    Seguida de dos consonantes diferentes  (excepto n, m). Si la primera o las dos consonantes forman parte de la misma sílaba que la e, transcribe el sonido
                                """,
                    imagenFonema: "E",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "degré", enGriego: "dɶ.gʀᴇ"),
                          Palabra(palabra: "regret", enGriego: "ʀɶ.gʀᴇ"),
                          Palabra(palabra: "secret", enGriego: "sɶ.kʀᴇ"),
                          Palabra(palabra: "reflet", enGriego: "ʀɶ.flᴇ"),
                          Palabra(palabra: "recruter", enGriego: "ʀɶ.kʀy.tᴇ"),
                          Palabra(palabra: "reprendre", enGriego: "ʀɶ.pʀɑ̃dʀ")
                    ],
                    pronuciacion: "e",
                    explicacion: """
                                    Seguida de dos consonantes diferentes (excepto n, m) que no forman parte de la misma sílaba que la e, transcribe el sonido
                                """,
                    imagenFonema: "ɶ",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_13",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "escalier", enGriego: "ᴇs.ka.ljᴇ"),
                            Palabra(palabra: "descendre", enGriego: "dᴇ.sɑ̃dʀ"),
                            Palabra(palabra: "adolescent", enGriego: "a.do.lᴇ.sɑ̃")
                      ],
                      pronuciacion: "esc",
                      explicacion: """
                                      En el grupo, e transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_14",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "chez", enGriego: "ʃᴇ"),
                            Palabra(palabra: "vous parlez", enGriego: "vu.paʀ.lᴇ")
                      ],
                      pronuciacion: "-ez",
                      explicacion: """
                                      Al final de una palabra, transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_15",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "parler", enGriego: "paʀ.lᴇ"),
                            Palabra(palabra: "infirmier", enGriego: "ɛ̃.fir.mjᴇ")
                      ],
                      pronuciacion: "-er",
                      explicacion: """
                                      Al final de una palabra, transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: "e_retro_3Ob_n2",
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_16",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "sorbet", enGriego: "soʀ.bᴇ"),
                            Palabra(palabra: "elle permet", enGriego: "ᴇl.pᴇʀ.mᴇ")
                      ],
                      pronuciacion: "-et",
                      explicacion: """
                                      Al final de una palabra, transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "et", enGriego: "ᴇ")
                      ],
                      pronuciacion: "et",
                      explicacion: """
                                      Como conjunción copulativa, transcriben el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: "e_retro_3Pb_n2",
                      textodeAbajo: nil
                  ),
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_17",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "aspect", enGriego: "as.pᴇ"),
                            Palabra(palabra: "respect", enGriego: "ʀᴇs.pᴇ"),
                      ],
                      pronuciacion: "-ect",
                      explicacion: """
                                      Al final de una palabra y precedidas de p, transcriben el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "direct", enGriego: "di.ʀᴇkt"),
                            Palabra(palabra: "correct", enGriego: "ko.ʀᴇkt"),
                      ],
                      pronuciacion: "-ect",
                      explicacion: """
                                      Al final de una palabra y precedidas de una consonante (excepto p), transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇkt",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_18",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "mangeable", enGriego: "mɑ̃.ʒabl"),
                            Palabra(palabra: "vengeance", enGriego: "vɑ̃.ʒɑ̃s"),
                            Palabra(palabra: "plongeon", enGriego: "plõ.ʒõ")
                      ],
                      pronuciacion: "-ge-",
                      explicacion: """
                                     Seguidas de a, o, g transcribe el sonido ʒ \n
                                    La e no transcribe ningún sonido
                                  """,
                      imagenFonema: sinSonido,
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_19",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "peu", enGriego: "pɶ"),
                            Palabra(palabra: "euro", enGriego: "ɶ.ʀo")
                      ],
                      pronuciacion: "eu",
                      explicacion: """
                                     Transcribe el sonido
                                  """,
                      imagenFonema: "ɶ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_20",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "eau", enGriego: "o"),
                            Palabra(palabra: "peau", enGriego: "po")
                      ],
                      pronuciacion: "eau",
                      explicacion: """
                                     Transcribe el sonido
                                  """,
                      imagenFonema: "o",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_21",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "neige", enGriego: "nᴇʒ")
                      ],
                      pronuciacion: "-ei-",
                      explicacion: """
                                     Seguidas de una consonante (excepto l, n), transcriben el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "réveil", enGriego: "ʀᴇ.vᴇj"),
                            Palabra(palabra: "merveille", enGriego: "mᴇʀ.vᴇj")
                      ],
                      pronuciacion: "eil o eill",
                      explicacion: """
                                     Transcribe los sonidos
                                  """,
                      imagenFonema: "ᴇj",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_22",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "peintre", enGriego: "pɛ̃tʀ")
                      ],
                      pronuciacion: "ein",
                      explicacion: """
                                      Seguidas de una consonante, transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "veinard", enGriego: "vᴇ.naʀ")
                      ],
                      pronuciacion: "ein",
                      explicacion: """
                                      Seguidas de una vocal
                                      (excepto e al final de una palabra) transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇn",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "plein", enGriego: "plɛ̃")
                      ],
                      pronuciacion: "-ein",
                      explicacion: """
                                      Al final de una palabra, transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "pleine", enGriego: "plᴇn")
                      ],
                      pronuciacion: "-eine",
                      explicacion: """
                                      Al final de una palabra, transcriben el sonido
                                  """,
                      imagenFonema: "ᴇn",
                      imagenConsejo: "e_retro_3Vb_n2",
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "pb_e_23",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "accueil", enGriego: "a.kɶj"),
                      ],
                      pronuciacion: "cueil o cueill",
                      explicacion: """
                                      Transcriben los sonidos
                                  """,
                      imagenFonema: "kɶj",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "orgueilleuse", enGriego: "oʀ.gɶ.jɶz"),
                      ],
                      pronuciacion: "gueil o gueill",
                      explicacion: """
                                      Transcriben los sonidos
                                  """,
                      imagenFonema: "gɶj",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  )
              ],
              excepciones: nil
            )
    ]
    
    
    /// ---------------------------------------------------------------------------------
    /// ----------------------------------      T A R J E T A S    I        ----------------------------------------------------------.---------------------
    /// ---------------------------------------------------------------------------------
    
    static let tarjetasI:[Tarjeta] = [
        
        Tarjeta(audio: "pb_i_01",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "ile", enGriego: "il"),
                        Palabra(palabra: "lit", enGriego: "li")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                 Al inicio de una palabra o entre consonantes excepto en los grupos:
                                 im+ consonante que no sea m
                                 in+ consonante que no sea n
                                 in al final de una palabra, transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ami", enGriego: "a.mi")
                  ],
                  pronuciacion: "-i",
                  explicacion: """
                                  Al final de una palabra, siempre y cuando la i no esté precedida de otra vocal, transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_02",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "piano", enGriego: "pja.no"),
                        Palabra(palabra: "chien", enGriego: "ʃjɛ̃")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                 Antes de una vocal, excepto e al final de una palabra, transcribe el sonido
                              """,
                  imagenFonema: "j",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ouvrière", enGriego: "u.vʀi.ᴇʀ"),
                        Palabra(palabra: "plié", enGriego: "pli.ᴇ")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                  Antes de una vocal y precedida de
                                  consonante + r o l, transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              
              Silaba(
                  palabras: [
                        Palabra(palabra: "amie", enGriego: "a.mi")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                  Antes de e al final de una palabra, transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_03",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "pain", enGriego: "pɛ̃"),
                        Palabra(palabra: "ainsi", enGriego: "ɛ̃.si")
                  ],
                  pronuciacion: "ain",
                  explicacion: """
                                 Al final de una palabra o seguidas de una consonante, transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ainé", enGriego: "ᴇ.nᴇ")
                  ],
                  pronuciacion: "ain",
                  explicacion: """
                                  La n forma parte de la sílaba que sigue \n
                                  Seguidas de una vocal (exepto e al final de una palabra), ai transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: "i_retro_3Cb_n2",
                  textodeAbajo: nil
              ),
              
              Silaba(
                  palabras: [
                        Palabra(palabra: "saine", enGriego: "sᴇn")
                  ],
                  pronuciacion: "-aine",
                  explicacion: """
                                  Al final de una palabra, transcriben los sonidos
                              """,
                  imagenFonema: "ᴇn",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_04",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "aimé", enGriego: "ᴇ.mᴇ")
                  ],
                  pronuciacion: "aim",
                  explicacion: """
                                La m forma parte de la sílaba que sigue.
                                Seguidas de una vocal
                                (excepto e al final de una palabra), ai transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "il aime", enGriego: "il.ᴇm")
                  ],
                  pronuciacion: "-aime",
                  explicacion: """
                                  Al final de una palabra transcriben los sonidos
                              """,
                  imagenFonema: "ᴇm",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "faim", enGriego: "fɛ̃")
                  ],
                  pronuciacion: "-aim",
                  explicacion: """
                                  Al final de una palabra transcriben los sonidos
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_05",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "mai", enGriego: "mᴇ"),
                        Palabra(palabra: "mais", enGriego: "mᴇ")
                  ],
                  pronuciacion: "ai",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante
                                  (excepto l, m, n), transcriben el sonido
                              """,
                  imagenFonema: "E",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_06",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "travail", enGriego: "tʀa.vaj "),
                        Palabra(palabra: "elle travaille", enGriego: "ᴇl.tʀa.vaj"),
                        Palabra(palabra: "deuil", enGriego: "dɶj"),
                        Palabra(palabra: "feuille ", enGriego: "fɶj")
                  ],
                  pronuciacion: "il o ill",
                  explicacion: """
                                  Después de a, e, u transcriben el sonido
                              """,
                  imagenFonema: "j",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "fille", enGriego: "fij")
                  ],
                  pronuciacion: "ill",
                  explicacion: """
                                  Después de una consonante transcriben los sonidos
                              """,
                  imagenFonema: "ij",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_07",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "neige", enGriego: "nᴇʒ")
                  ],
                  pronuciacion: "ei",
                  explicacion: """
                                  Seguidas de una consonante (excepto l, n) transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "réveillon", enGriego: "ʀᴇ.vᴇ.jõ"),
                        Palabra(palabra: "merveille", enGriego: "mᴇʀ.vᴇj"),
                  ],
                  pronuciacion: "eil o eill",
                  explicacion: """
                                  Transcriben los sonidos
                              """,
                  imagenFonema: "ᴇj",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "accueil", enGriego: "a.kɶj")
                  ],
                  pronuciacion: "cueil o cueill",
                  explicacion: """
                                  Transcriben los sonidos
                              """,
                  imagenFonema: "kɶj",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "orgueilleuse", enGriego: "oʀ.gɶ.jɶz")
                  ],
                  pronuciacion: "gueil o gueill",
                  explicacion: """
                                  Transcriben los sonidos
                              """,
                  imagenFonema: "gɶj",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_08",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "veinard", enGriego: "vᴇ.naʀ"),
                  ],
                  pronuciacion: "ein",
                  explicacion: """
                                  La n forma parte de la sílaba que sigue. Seguidas de una vocal (exepto e al final de una palabra), ei transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "plein", enGriego: "plɛ̃"),
                  ],
                  pronuciacion: "-ein",
                  explicacion: """
                                  Al final de una palabra, transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "baleine", enGriego: "ba.lᴇn"),
                  ],
                  pronuciacion: "-eine",
                  explicacion: """
                                  Al final de una palabra, transcriben los sonidos
                              """,
                  imagenFonema: "ᴇn",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_09",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "moi", enGriego: "mwa"),
                        Palabra(palabra: "mois", enGriego: "mwa"),
                  ],
                  pronuciacion: "oi",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante, excepto en los grupos:
                                       -oin al final de una palabra
                                        oin + consonante,
                                  Transcriben los sonidos
                              """,
                  imagenFonema: "wa",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_10",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "loin", enGriego: "lwɛ̃"),
                        Palabra(palabra: "joindre", enGriego: "ʒwɛ̃dʀ"),
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante, transcriben los sonidos
                              """,
                  imagenFonema: "wɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "moineau", enGriego: "mwa.no")
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                  La n forma parte de la sílaba que sigue. Seguidas de una vocal (excepto e al final de una palabra), oi transcriben los sonidos
                              """,
                  imagenFonema: "wa",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "avoine", enGriego: "a.vwan")
                  ],
                  pronuciacion: "-oine",
                  explicacion: """
                                  Al final de una palabra, transcriben los sonidos
                              """,
                  imagenFonema: "wan",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_11",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "important", enGriego: "ɛ̃.poʀ.tɑ̃"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  Seguidas de una consonante
                                  (excepto m), transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "immoral", enGriego: "i.mo.ʀal"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  La m forma parte de la sílaba que sigue. Seguidas de m, i transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "piment", enGriego: "pi.mɑ̃"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  La m forma parte de la sílaba que sigue. Seguidas de una vocal (excepto e al final de una palabra), i transcribe el sonido

                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "piment", enGriego: "pi.mɑ̃"),
                  ],
                  pronuciacion: "-ime",
                  explicacion: """
                                  Al final de una palabra transcriben los sonidos

                              """,
                  imagenFonema: "im",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_12",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "vin", enGriego: "vɛ̃"),
                        Palabra(palabra: "vingt", enGriego: "vɛ̃"),
                  ],
                  pronuciacion: "in",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante (excepto n), transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "inné", enGriego: "i.nᴇ"),
                  ],
                  pronuciacion: "in",
                  explicacion: """
                                  La n forma parte de la sílaba que sigue. Seguidas de n, i transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "inutile", enGriego: "i.ny.til"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  La n forma parte de la sílaba que sigue. Seguidas de una vocal (excepto e al final de una palabra), i transcribe el sonido

                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "colline", enGriego: "ko.lin"),
                  ],
                  pronuciacion: "-ime",
                  explicacion: """
                                  Al final de una palabra transcriben los sonidos

                              """,
                  imagenFonema: "in",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_i_13",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "camping", enGriego: "kɑ̃.piŋ"),
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
    
    
    /// ---------------------------------------------------------------------------------
    /// ----------------------------------      T A R J E T A S    O      --------------------------------------------------------------------------------
    /// ---------------------------------------------------------------------------------
    
    
    
    static let tarjetasO:[Tarjeta] = [
        Tarjeta(audio: "pb_o_o1",
                silabas: [
               Silaba(palabras: [
                    Palabra(palabra: "tome", enGriego: "tom"),
                    Palabra(palabra: "loto", enGriego: "lo.to")
                ],
                  pronuciacion: "o",
                  explicacion: "Seguida de una consonante y una vocal o al final de una palabra transcribe el sonido",
                  imagenFonema: "o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
               ),
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o2",
                silabas: [
               Silaba(palabras: [
                    Palabra(palabra: "opprimée", enGriego: "o.pri.mᴇ"),
                    Palabra(palabra: "connu", enGriego: "co.ny"),
                    Palabra(palabra: "pomme", enGriego: "pom"),
                ],
                  pronuciacion: "o",
                  explicacion: "Seguida de dos consonantes idénticas transcribe el sonido",
                  imagenFonema: "o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
               ),
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o3",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "optique", enGriego: "op.tik"),
                  ],
                  pronuciacion: "o",
                  explicacion: """
                                  Seguida de dos consonantes diferentes (excepto m y n) transcribe el sonido
                              """,
                  imagenFonema: "o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "sombre", enGriego: "sõbr"),
                        Palabra(palabra: "conséquence", enGriego: "kõ.sᴇ.kɑ̃s")
                  ],
                  pronuciacion: "o",
                  explicacion: """
                                  Seguida de dos consonantes diferentes
                                  -    si la primera de ellas es m o n, om, on transcriben el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "insomnie", enGriego: "ɛ̃.som.ni")
                  ],
                  pronuciacion: "omn",
                  explicacion: """
                                  om transcriben los sonidos
                              """,
                  imagenFonema: "om",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o4",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "coopérer", enGriego: "co.o.pᴇ.ʀᴇ")
                  ],
                  pronuciacion: "coo-",
                  explicacion: """
                                  Al inicio de una palabra, oo transcriben los sonidos
                              """,
                  imagenFonema: "o.o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "foot", enGriego: "fut")
                  ],
                  pronuciacion: "oo",
                  explicacion: """
                                  Excepto en el grupo coo- transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o5",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "joyeux", enGriego: "ʒwa.jɶ"),
                        Palabra(palabra: "voyage", enGriego: "vwa.jaʒ")
                  ],
                  pronuciacion: "-oy-",
                  explicacion: """
                                  transcriben los sonidos
                              """,
                  imagenFonema: "waj",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o6",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "moi", enGriego: "mwa"),
                        Palabra(palabra: "mois", enGriego: "mwa")
                  ],
                  pronuciacion: "oi",
                  explicacion: """
                                  Al final de una palabra o seguidas de una consonante, excepto en los grupos:
                                  -oin al final de una palabra
                                   oin + consonante transcriben los sonidos
                              """,
                  imagenFonema: "wa",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o7",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "loin", enGriego: "lwɛ̃"),
                        Palabra(palabra: "joindre", enGriego: "ʒwɛ̃dʀ")
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante transcriben los sonidos
                              """,
                  imagenFonema: "wɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "moineau", enGriego: "mwa.no")
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                  La n forma parte de la sílaba que sigue.
                                  Seguidas de una vocal (excepto e al final de una palabra), oi transcriben los sonidos
                              """,
                  imagenFonema: "wa",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "avoine", enGriego: "a.vwan")
                  ],
                  pronuciacion: "-oine",
                  explicacion: """
                                  Al final de una palabra transcriben los sonidos wan
                              """,
                  imagenFonema: "wa",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o8",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "coercitif", enGriego: "ko.ᴇʀ.si.tif"),
                  ],
                  pronuciacion: "oe",
                  explicacion: """
                                  Seguidas de una consonante o una vocal
                                  (excepto u), o e transcriben los sonidos
                              """,
                  imagenFonema: "o.ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "sœur", enGriego: "sɶʀ"),
                  ],
                  pronuciacion: "œu",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "ɶ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_o9",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "mon", enGriego: "mõ"),
                        Palabra(palabra: "on", enGriego: "õ")
                  ],
                  pronuciacion: "-on",
                  explicacion: """
                                  Al final de una palabra
                                  y en el caso de la palabra on transcriben el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "pont", enGriego: "põ"),
                        Palabra(palabra: "ont", enGriego: "õ")
                  ],
                  pronuciacion: "-ont",
                  explicacion: """
                                  Al final de una palabra
                                  y en el caso de la palabra ont transcriben el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: "e_retro_varias-letras_n2",
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_o_10",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "ou", enGriego: "u"),
                        Palabra(palabra: "nous", enGriego: "nu")
                  ],
                  pronuciacion: "ou",
                  explicacion: """
                                  Al final de una palabra
                                  o seguidas de una consonante transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "où", enGriego: "u")
                  ],
                  pronuciacion: "où",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ou", enGriego: "u")
                  ],
                  pronuciacion: "où",
                  explicacion: """
                                  Seguidas de una vocal,
                                  precedidas de dos consonantes que se pronuncian transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "trouer", enGriego: "tʀu.ᴇ")
                  ],
                  pronuciacion: "ou",
                  explicacion: """
                                  Seguidas de una vocal,
                                  precedidas de dos consonantes que se pronuncian transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ouest", enGriego: "wᴇst"),
                        Palabra(palabra: "douane", enGriego: "dwan")
                  ],
                  pronuciacion: "ou",
                  explicacion: """
                                  Seguidas de una vocal,
                                  -    al principio de una palabra
                                  -    o precedidas de una sola consonante
                                    transcriben el sonido
                              """,
                  imagenFonema: "w",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        )
        
    ]
    
    /// ---------------------------------------------------------------------------------
    /// ----------------------------------      T A R J E T A S    U    -----------------------------------------------------------------------------------
    /// ---------------------------------------------------------------------------------
    
    
    static let tarjetasU:[Tarjeta] = [
        Tarjeta(audio: "pb_u_01",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "tu", enGriego: "ty"),
                        Palabra(palabra: "utile", enGriego: "y.til")
                  ],
                  pronuciacion: "u",
                  explicacion: """
                                 Al final de una palabra o seguida de una consonante (excepto en los grupos -un y -um seguidos de una consonante) transcribe el sonido
                              """,
                  imagenFonema: "y",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_02",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "un", enGriego: "ɛ̃"),
                        Palabra(palabra: "aucun", enGriego: "o.kɛ̃"),
                        Palabra(palabra: "lundi", enGriego: "lɛ̃.di")
                  ],
                  pronuciacion: "un",
                  explicacion: """
                                 Al final de una palabra o seguidas de una consonante (exepto n) transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "unir", enGriego: "y.niʀ"),
                        Palabra(palabra: "tunnel", enGriego: "ty.nᴇl")
                  ],
                  pronuciacion: "un",
                  explicacion: """
                                 Seguidas de una vocal (exepto e al final de una palabra) o de n,
                              """,
                  imagenFonema: "y",
                  imagenConsejo: nil,
                  textodeAbajo: "La n forma parte de la sílaba que sigue."
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "lune", enGriego: "lyn")
                  ],
                  pronuciacion: "-une",
                  explicacion: """
                                 Al final de una palabra y precedidas de una consonante transcriben los sonidos
                              """,
                  imagenFonema: "yn",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_03",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "humble", enGriego: "ɛ̃bl")
                  ],
                  pronuciacion: "-um-",
                  explicacion: """
                                 Seguidas de una consonante transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "humain", enGriego: "y.mɛ̃")
                  ],
                  pronuciacion: "-um-",
                  explicacion: """
                                 La m forma parte de la sílaba que sigue. Seguidas de una vocal
                                 (exepto e al final de una palabra), u transcribe el sonido
                              """,
                  imagenFonema: "y",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "plume", enGriego: "plym")
                  ],
                  pronuciacion: "-ume",
                  explicacion: """
                                 Al final de una palabra y precedidas de una consonante transcriben los sonidos
                              """,
                  imagenFonema: "yn",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "forum", enGriego: "fo.ʀom")
                  ],
                  pronuciacion: "-um",
                  explicacion: """
                                 Al final de una palabra y precedidas de una consonante transcriben los sonidos
                              """,
                  imagenFonema: "om",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_04",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "au", enGriego: "o"),
                        Palabra(palabra: "saut", enGriego: "so")
                  ],
                  pronuciacion: "au",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_05",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "ou", enGriego: "u"),
                        Palabra(palabra: "nous", enGriego: "nu")
                  ],
                  pronuciacion: "ou",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
            
            Silaba(
                palabras: [
                      Palabra(palabra: "où", enGriego: "u")
                ],
                pronuciacion: "où",
                explicacion: """
                                transcribe el sonido
                            """,
                imagenFonema: "u",
                imagenConsejo: nil,
                textodeAbajo: nil
            ),
            
            Silaba(
                palabras: [
                      Palabra(palabra: "trouer", enGriego: "tʀu.ᴇ")
                ],
                pronuciacion: "ou + vocal",
                explicacion: """
                                Después de dos consonantes que se pronuncian transcriben el sonido
                            """,
                imagenFonema: "u",
                imagenConsejo: nil,
                textodeAbajo: nil
            ),
            
            Silaba(
                palabras: [
                      Palabra(palabra: "ouest", enGriego: "wᴇst"),
                      Palabra(palabra: "douane", enGriego: "dwan")
                ],
                pronuciacion: "ou+ vocal",
                explicacion: """
                                Al principio de una palabra o después de una sola consonante transcriben el sonido
                            """,
                imagenFonema: "w",
                imagenConsejo: nil,
                textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_06",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "peu", enGriego: "pɶ"),
                        Palabra(palabra: "euro", enGriego: "ɶ.ʀo")
                  ],
                  pronuciacion: "eu",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "ɶ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_u_07",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "reliure", enGriego: "ʀɶ.ljyʀ"),
                        Palabra(palabra: "striure", enGriego: "stʀi.jyʀ")
                  ],
                  pronuciacion: "u",
                  explicacion: """
                                  Después de una i transcribe el sonido
                              """,
                  imagenFonema: "y",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_08",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "fatiguant", enGriego: "fa.ti.gɑ̃"),
                        Palabra(palabra: "guerre", enGriego: "gᴇʀ"),
                        Palabra(palabra: "guide", enGriego: "gid")
                  ],
                  pronuciacion: "gu",
                  explicacion: """
                                  transcribe el sonido
                              """,
                  imagenFonema: "g",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_09",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "quand", enGriego: "kɑ̃"),
                        Palabra(palabra: "qui", enGriego: "ki"),
                        Palabra(palabra: "que", enGriego: "kɶ")
                  ],
                  pronuciacion: "qu",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "k",
                  imagenConsejo: "u_retro_3Ib _n2",
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_10",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "accueil", enGriego: "a.kɶj"),
                        Palabra(palabra: "cueillir", enGriego: "kɶ.jiʀ")
                  ],
                  pronuciacion: "cuei",
                  explicacion: """
                                  u no transcribe ningún sonido
                              """,
                  imagenFonema: sinSonido,
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_u_11",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "lui", enGriego: "lɥi"),
                        
                  ],
                  pronuciacion: "u",
                  explicacion: """
                                  Precedida de una sola consonante
                                  y seguida de una vocal transcribe el sonido
                              """,
                  imagenFonema: "ɥ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
            Silaba(
                palabras: [
                        Palabra(palabra: "cruel", enGriego: "kʀy.ᴇl")
                ],
                pronuciacion: "u ",
                explicacion: """
                                Precedida de dos consonantes que se pronuncian y seguida de una vocal transcribe el sonido
                            """,
                imagenFonema: "y",
                imagenConsejo: nil,
                textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_u_12",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "ennuyeux", enGriego: "ɑ̃.nɥi.jɶ"),
                        Palabra(palabra: "bruyante", enGriego: "bʀɥi.jɑ̃t")
                  ],
                  pronuciacion: "uy",
                  explicacion: """
                                  Seguidas de una vocal, u transcribe el sonido
                              """,
                  imagenFonema: "ɥ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        )
        
    ]
    
    
    /// ---------------------------------------------------------------------------------
    /// ----------------------------------      T A R J E T A S    Y   -----------------------------------------------------------------------------------
    /// ---------------------------------------------------------------------------------
    
    
    static let tarjetasY:[Tarjeta] = [
    
        Tarjeta(audio: "pb_y_01",
          silabas: [
                Silaba(
                    palabras: [
                          Palabra(palabra: "yaourt", enGriego: "ja.uʀt")
                    ],
                    pronuciacion: "y-",
                    explicacion: """
                                    Al principio de una palabra y
                                    seguida de una vocal transcribe el sonido
                                """,
                    imagenFonema: "j",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "Yves", enGriego: "iv")
                    ],
                    pronuciacion: "y-",
                    explicacion: """
                                    Al principio de una palabra y
                                    seguida de una consonante transcribe el sonido
                                """,
                    imagenFonema: "i",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "jury", enGriego: "ʒy.ʀi"),
                    ],
                    pronuciacion: "-y",
                    explicacion: """
                                    Al final de una palabra, después de una consonante transcribe el sonido
                                """,
                    imagenFonema: "i",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_y_02",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "cyclisme", enGriego: "si.klism"),
                        Palabra(palabra: "synonyme", enGriego: "si.no.nim")
                  ],
                  pronuciacion: "-y-",
                  explicacion: """
                                  Entre dos consonantes
                                  (excepto si la segunda es n o m seguida de una consonante) transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
             Silaba(
                    palabras: [
                          Palabra(palabra: "syntaxe", enGriego: "sɛ̃.taks"),
                          Palabra(palabra: "symbole", enGriego: "sɛ̃.bol")
                    ],
                    pronuciacion: "-yn- o -ym-",
                    explicacion: """
                                    Entre consonantes transcriben el sonido
                                """,
                    imagenFonema: "ɛ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
            ),
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_y_03",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "myope", enGriego: "mjop"),
                        Palabra(palabra: "lyophiliser", enGriego: "ljo.fi.li.zᴇ"),
                  ],
                  pronuciacion: "-y-",
                  explicacion: """
                                  Entre una consonante y una vocal transcribe el sonido
                              """,
                  imagenFonema: "j",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_y_04",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "joyeux", enGriego: "ʒwa.jɶ"),
                        Palabra(palabra: "voyage", enGriego: "vwa.jaʒ"),
                  ],
                  pronuciacion: "-oy-",
                  explicacion: """
                                  Seguidas de una vocal transcriben los sonidos
                              """,
                  imagenFonema: "wa.j",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_y_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "crayon", enGriego: "kʀᴇ.jõ"),
                    Palabra(palabra: "elles payaient", enGriego: "ᴇl.pᴇ.jᴇ"),
                    Palabra(palabra: "rayure", enGriego: "ʀᴇ.jyʀ")
              ],
              pronuciacion: "ay",
              explicacion: """
                              Seguidas de una vocal transcriben los sonidos
                          """,
              imagenFonema: "ᴇj",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
                palabras: [
                      Palabra(palabra: "il paye", enGriego: "il.pᴇj")
                ],
                pronuciacion: "-aye",
                explicacion: """
                                Al final de una palabra transcriben los sonidos
                            """,
                imagenFonema: "ᴇj",
                imagenConsejo: nil,
                textodeAbajo: nil
            ),
            Silaba(
                palabras: [
                      Palabra(palabra: "elles payent", enGriego: "ᴇl.pᴇj")
                ],
                pronuciacion: "-ayent",
                explicacion: """
                                Al final de una palabra transcriben los sonidos
                            """,
                imagenFonema: "ᴇj",
                imagenConsejo: nil,
                textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_y_06",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "pays", enGriego: "pᴇ.i"),
                        Palabra(palabra: "paysane", enGriego: "pᴇ.i.zan")
                  ],
                  pronuciacion: "ay",
                  explicacion: """
                                  Seguidas de s transcriben los sonidos
                              """,
                  imagenFonema: "ᴇ.i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_y_07",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "ennuyeux", enGriego: "ɑ̃.nɥi.jɶ"),
                        Palabra(palabra: "bruyante", enGriego: "bʀɥi.jɑ̃t")
                  ],
                  pronuciacion: "uy",
                  explicacion: """
                                  Seguidas de una vocal transcriben los sonidos
                              """,
                  imagenFonema: "ɥij",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              )
          ],
          excepciones: nil
        )
        
    ]
}
