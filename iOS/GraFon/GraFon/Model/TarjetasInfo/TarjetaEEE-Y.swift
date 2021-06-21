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
                        Palabra(palabra: "*é*tude", enGriego: "E.tyd"),
                        Palabra(palabra: "europ*é*en", enGriego: "Œ.RO.pE.ɛ̃")
                    ],
                    pronuciacion: "é",
                    explicacion: "transcribe el sondio",
                    imagenFonema: "ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                          Palabra(palabra: "m*è*re", enGriego: "mER"),
                          Palabra(palabra: "br*è*ve", enGriego: "bREv")
                    ],
                    pronuciacion: "è",
                    explicacion: "transcribe el sonido",
                    imagenFonema: "ᴇ",
                    imagenConsejo: "e_retro_3Pb_n2",
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                          Palabra(palabra: "f*ê*te", enGriego: "fEt"),
                          Palabra(palabra: "m*ê*me", enGriego: "mEm")
                    ],
                    pronuciacion: "ê",
                    explicacion: "transcribe el sonido", //Falta la imagen del gorrito
                    imagenFonema: "E",
                    imagenConsejo: "buho",
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
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
                        Palabra(palabra: "m*a*", enGriego: "ma"),
                        Palabra(palabra: "ch*at*", enGriego: "∫a")
                    ],
                    pronuciacion: "a",
                    explicacion: "Al final de una palabra o seguida de una consonante (excepto $m$ o $n$) \n Transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "*à*", enGriego: "a")
                    ],
                    pronuciacion: "a",
                    explicacion: "transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "p*â*te", enGriego: "pat")
                    ],
                    pronuciacion: "â",
                    explicacion: "transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),

        Tarjeta(audio: "pb_a_02",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "pa*in*", enGriego: "pɛ̃"),
                        Palabra(palabra: "*ain*si", enGriego: "ɛ̃.si")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Al final de una palabra o seguida de una consonante \n\n transcribe el sonido",
                    imagenFonema: "ɛ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "*ainé*", enGriego: "ᴇ.nᴇ")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Seguidas de una vocal (excepto $e$ al final de una palabra)  \n\n $ai$ transcribe el sonido",
                    imagenFonema: "ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: "La $n$ forma parte de la sílaba que sigue."
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "s*aine*", enGriego: "sᴇn")
                    ],
                    pronuciacion: "-aine",
                    explicacion: "Al final de una palabra \n \n transcribe los sonidos",
                    imagenFonema: "ᴇn",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                )
            ],
            excepciones: nil
        ),

        Tarjeta(audio: "pb_a_03",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "*aimé*", enGriego: "ᴇ.mᴇ")
                    ],
                    pronuciacion: "aim",
                    explicacion: "Seguidas de una vocal (excepto $e$ al final de una palabra), \n\n $ai$ transcriben el sonido",
                    imagenFonema: "ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: "La $m$ forma parte de la sílaba que sigue."
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "tu *aime*s", enGriego: "ty.ᴇm")
                    ],
                    pronuciacion: "aime",
                    explicacion: "transcribe los sonidos",
                    imagenFonema: "ᴇm",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "f*aim*", enGriego: "fɛ̃")
                    ],
                    pronuciacion: "-aim",
                    explicacion: "Al final de una palabra, transcribe los sonidos",
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
                        Palabra(palabra: "*au*", enGriego: "o")
                    ],
                    pronuciacion: "au",
                    explicacion: "transcriben el sonido",
                    imagenFonema: "o",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "*eau*", enGriego: "o")
                    ],
                    pronuciacion: "eau",
                    explicacion: "transcribe el sonido",
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
                        Palabra(palabra: "trav*ail*", enGriego: "tʀa.vaj")
                    ],
                    pronuciacion: "-ail",
                    explicacion: "transcriben los sonidos",
                    imagenFonema: "aj",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "*aill*eurs", enGriego: "a.jŒʀ")
                    ],
                    pronuciacion: "aill",
                    explicacion: "transcribe los sonidos",
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
                        Palabra(palabra: "j*amb*e", enGriego: "ʒɑ̃b")
                    ],
                    pronuciacion: "am",
                    explicacion: "Seguidas de una consonante (excepto $m$ y $n$) \n\n transcriben el sonido",
                    imagenFonema: "ɑ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "gr*amm*atical", enGriego: "gʀa.ma.ti.kal"),
                          Palabra(palabra: "*ami*e", enGriego: "a.mi")
                    ],
                    pronuciacion: "am",
                    explicacion: "Seguidas de otra $m$ o de una vocal (excepto $e$ al final de una palabra), \n\n a transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: "La $m$ forma parte de la sílaba que sigue."
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "d*ame*", enGriego: "dam")
                    ],
                    pronuciacion: "-ame",
                    explicacion: "Al final de una palabra, \n\n transcriben los sonidos",
                    imagenFonema: "am",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "*amn*ésie", enGriego: "am.nᴇ.zi")
                    ],
                    pronuciacion: "am",
                    explicacion: "Seguidas de una n, \n\n $am$ transcriben los sonidos",
                    imagenFonema: "am",
                    imagenConsejo: nil,
                    textodeAbajo: "La $n$ forma parte de la sílaba que sigue."
                )],
            excepciones: nil
        ),
        
        Tarjeta(audio: "pb_a_07",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "m*ai*", enGriego: "mᴇ"),
                        Palabra(palabra: "m*ais*", enGriego: "mᴇ")
                    ],
                    pronuciacion: "-ai",
                    explicacion: "Al final de una palabra o seguidas de una consonante (excepto $l$, $m$, $n$), transcriben el sonido",
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
                        Palabra(palabra: "pl*an*", enGriego: "plɑ̃"),
                        Palabra(palabra: "ch*ant*", enGriego: "ʃɑ̃")
                    ],
                    pronuciacion: "an",
                    explicacion: "Al final de una palabra o seguidas de una consonante (excepto $n$), transcribe el sonido",
                    imagenFonema: "ɑ̃",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "*ann*ée", enGriego: "a.nᴇ"),
                          Palabra(palabra: "*ani*mal", enGriego: "a.ni.mal"),
                    ],
                    pronuciacion: "an",
                    explicacion: "Seguidas de otra $n$ o de una vocal (excepto $e$ al final de una palabra), \n\n $a$ transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil,
                    textodeAbajo: "La $n$ forma parte de la sílaba que sigue."
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "ban*ane*", enGriego: "ba.nan")
                    ],
                    pronuciacion: "-ane",
                    explicacion: "Al final de una palabra \n\n transcribe los sonidos",
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
                        Palabra(palabra: "elle p*ay*e", enGriego: "ᴇl.pᴇj"),
                        Palabra(palabra: "p*ay*s", enGriego: "pᴇ.i")
                    ],
                    pronuciacion: "a",
                    explicacion: "Seguida de $y$ \n\n transcribe el sonido",
                    imagenFonema: "ᴇ",
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
                       Palabra(palabra: "tabl*e*", enGriego: "tabl"),
                       Palabra(palabra: "ami*e*", enGriego: "a.mi")
                   ],
                   pronuciacion: "-e",
                   explicacion: "Al final de una palabra de más de dos letras \n\n no trascribe ningún sonido",
                   imagenFonema: sinSonido,
                   imagenConsejo: nil,
                   textodeAbajo: nil
               ),
               Silaba(
                   palabras: [
                         Palabra(palabra: "j*e*", enGriego: "ʒŒ"),
                         Palabra(palabra: "l*e*", enGriego: "IŒ")
                   ],
                   pronuciacion: "-e",
                   explicacion: "Al final de una palabra de dos letras \n\n transcribe el sonido",
                   imagenFonema: "Œ",
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
                             Palabra(palabra: "d*evo*ir", enGriego: "dɶ.vwaʀ")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la letra e:\n\n
                                       - está en la primera sílaba de una palabra y
                                       - le sigue una sola constante (excepto $x$) más una vocal \n\n transcribe el sonido
                                   """,
                       imagenFonema: "Œ",
                       imagenConsejo: nil,
                       textodeAbajo: nil
                   ),
                   Silaba(
                       palabras: [
                             Palabra(palabra: "m*ex*icain", enGriego: "mᴇ.ksi.kɛ̃")
                       ],
                       pronuciacion: "e",
                       explicacion: "Seguida de $x$ \n\n transcribe el sonido",
                       imagenFonema: "E",
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
                             Palabra(palabra: "sa*med*i", enGriego: "sam.di"),
                             Palabra(palabra: "complè*tem*ent", enGriego: "kõ.plᴇt.mɑ̃")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la $e$ está:
                                       -de la segunda sílaba escrita en adelante,\n\n
                                       -precedida de una sola consonante que transcribe un sonido y
                                       -le sigue una sola consonante que transcribe un sonido (excepto en los  grupos: $li$, $ri$, $mi$, $ni$), \n\n no transcribe ningún sonido.
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
                             Palabra(palabra: "tri*stem*ent", enGriego: "sam.di"),
                             Palabra(palabra: "mer*cred*i", enGriego: "kõ.plEt.mã")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la $e$ está:\n
                                       -de la segunda sílaba escrita en adelante,
                                       -precedida de dos consonantes que transcriben un sonido y
                                       -le sigue una sola consonante que transcribe un sonido
                                        transcribe el sonido
                                   """,
                       imagenFonema: "Œ",
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
                             Palabra(palabra: "tu parl*es*", enGriego: "ty.paʀl"),
                             Palabra(palabra: "ami*es*", enGriego: "a.mi")
                       ],
                       pronuciacion: "-es",
                       explicacion: """
                                       Al final de una palabra de más de tres letras \n\n no transcriben ningún sonido.
                                   """,
                       imagenFonema: sinSonido,
                       imagenConsejo: "e_retro_3Eb_n2",
                       textodeAbajo: nil
                   ),
                   Silaba(
                   palabras: [
                         Palabra(palabra: "l*es*", enGriego: "lᴇ")
                   ],
                   pronuciacion: "-es",
                   explicacion: """
                                   Al final de una palabra de tres letras (por ejemplo, un determinante plural: les, mes, tes, etc.), \n\n transcriben el sonido
                               """,
                   imagenFonema: "ᴇ",
                   imagenConsejo: nil,
                   textodeAbajo: nil
                   ),
                   Silaba(
                       palabras: [
                             Palabra(palabra: "tu *es*", enGriego: "ty.ᴇ")
                       ],
                       pronuciacion: "es",
                       explicacion: """
                                       En la forma conjugada del verbo être \n\n transcriben el sonido
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
                            Palabra(palabra: "elles parl*ent*", enGriego: "ᴇl.paʀl"),
                            Palabra(palabra: "elles parlai*ent*", enGriego: "ᴇl.paʀ.lᴇ"),
                            Palabra(palabra: "ils cri*ent*", enGriego: "il.kʀi")
                      ],
                      pronuciacion: "-ent",
                      explicacion: """
                                      Al final de un verbo conjugado en la tercera persona del plural \n\n no transcriben ningún sonido
                                  """,
                      imagenFonema: sinSonido,
                      imagenConsejo: "e_retro_3Fb_n2",
                      textodeAbajo: nil
                  ),
                  
                  Silaba(
                      palabras: [
                            Palabra(palabra: "elle vi*ent*", enGriego: "ᴇl.vjɛ̃")
                      ],
                      pronuciacion: "-ent",
                      explicacion: """
                                      Al final de un verbo conjugado en la tercera persona del singular \n\n transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  
                  Silaba(
                      palabras: [
                            Palabra(palabra: "v*ent*", enGriego: "vɑ̃"),
                            Palabra(palabra: "cont*ent*", enGriego: "kõ.tɑ̃"),
                            Palabra(palabra: "lentem*ent*", enGriego: "lɑ̃t.mɑ̃")
                      ],
                      pronuciacion: "-ent",
                      explicacion: """
                                      Al final de un sustantivo, un adjetivo o un adverbio \n\n transcriben el sonido
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
                            Palabra(palabra: "exam*en*", enGriego: "ᴇg.za.mɛ̃"),
                      ],
                      pronuciacion: "-en",
                      explicacion: """
                                      Al final de una palabra \n\n transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "européen", enGriego: "Œ.ʀo.pᴇ.ɛ̃"),
                      ],
                      pronuciacion: "-éen",
                      explicacion: """
                                      Al final de una palabra \n\n transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇ.ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "europ*éenne*", enGriego: "Œ.ʀo.pᴇ.ᴇn"),
                      ],
                      pronuciacion: "-éenne",
                      explicacion: """
                                      Al final de una palabra \n\n transcriben los sonidos
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
                            Palabra(palabra: "*enf*ant", enGriego: "ɑ̃.fɑ̃"),
                            Palabra(palabra: "*cent*re", enGriego: "sɑ̃tʀ"),
                      ],
                      pronuciacion: "en",
                      explicacion: """
                                      Seguidas de una consonante (excepto $n$) \n\n transcriben el sonido
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
                                      Seguidas de una vocal (excepto al inicio de una palabra) \n\n transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇn",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "*ennu*yeux", enGriego: "ɑ̃.nɥi.jŒ")
                      ],
                      pronuciacion: "enn-",
                      explicacion: """
                                      Al inicio de una palabra y seguidas de una vocal \n\n transcriben los sonidos
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
                            Palabra(palabra: "*esp*rit", enGriego: "ᴇs.pʀi"),
                            Palabra(palabra: "*err*eur", enGriego: "ᴇ.ʀŒʀ")
                      ],
                      pronuciacion: "e-",
                      explicacion: """
                                      Al inicio de una palabra y seguida de dos consonantes (excepto $n$, $m$) \n\n transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "*ex*emple", enGriego: "ᴇ.gzɑ̃pl")
                      ],
                      pronuciacion: "e-",
                      explicacion: """
                                      Al inicio de una palabra y seguida de $x$ \n\n transcribe el sonido
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
                            Palabra(palabra: "*emp*orter", enGriego: "ɑ̃.poʀ.tᴇ"),
                      ],
                      pronuciacion: "em-",
                      explicacion: """
                                      Al inicio de una palabra y
                                      seguidas de una consonante \n\n transcriben el sonido
                                  """,
                      imagenFonema: "ɑ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "di*lemm*e", enGriego: "di.lᴇm"),
                      ],
                      pronuciacion: "-em-",
                      explicacion: """
                                      Después de una consonante y
                                      seguidas de $m$ \n\n transcribe el sonido
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
                            Palabra(palabra: "t*err*e", enGriego: "tᴇʀ"),
                            Palabra(palabra: "adm*ett*re", enGriego: "ad.mᴇtʀ"),
                            Palabra(palabra: "b*ell*e", enGriego: "bᴇl")
                      ],
                      pronuciacion: "e",
                      explicacion: """
                                      Seguida de dos consonantes idénticas (excepto $n$, $m$) y a excepción del caso de $ress$ al inicio de una palabra \n\n transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "*ress*ource", enGriego: "ʀŒ.suʀs"),
                            Palabra(palabra: "*ress*embler", enGriego: "ʀŒ.sɑ̃.blᴇ"),
                            Palabra(palabra: "*ress*entir", enGriego: "ʀŒ.sɑ̃.tiʀ")
                      ],
                      pronuciacion: "ress-",
                      explicacion: """
                                      Al inicio de una palabra \n\n $e$ transcribe el sonido
                                  """,
                      imagenFonema: "Œ",
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
                          Palabra(palabra: "l*ect*ure", enGriego: "lᴇk.tuʀ"),
                          Palabra(palabra: "hiv*ern*al", enGriego: "i.vᴇʀ.nal"),
                          Palabra(palabra: "s*ect*ion", enGriego: "sᴇk.sjõ"),
                          Palabra(palabra: "r*esp*onsable", enGriego: "ʀᴇs.põ.sabl"),
                          Palabra(palabra: "r*est*aurant", enGriego: "ʀᴇs.to.ʀɑ̃"),
                          Palabra(palabra: "r*est*e", enGriego: "ʀᴇst"),
                          Palabra(palabra: "ins*ect*e", enGriego: "ɛ̃.sᴇkt"),
                          Palabra(palabra: "d*ern*ier", enGriego: "dᴇʀ.njᴇ")
                    ],
                    pronuciacion: "e",
                    explicacion: """
                                    Seguida de dos consonantes diferentes  (excepto $n$, $m$). Si la primera o las dos consonantes forman parte de la misma sílaba que la $e$, \n\n $e$ transcribe el sonido
                                """,
                    imagenFonema: "ᴇ",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "d*egr*é", enGriego: "dŒ.gʀᴇ"),
                          Palabra(palabra: "r*egr*et", enGriego: "ʀŒ.gʀᴇ"),
                          Palabra(palabra: "s*ecr*et", enGriego: "sŒ.kʀᴇ"),
                          Palabra(palabra: "r*efl*et", enGriego: "ʀŒ.flᴇ"),
                          Palabra(palabra: "r*ecr*uter", enGriego: "ʀŒ.kʀy.tᴇ"),
                          Palabra(palabra: "r*epr*endre", enGriego: "ʀŒ.pʀɑ̃dʀ")
                    ],
                    pronuciacion: "-e-",
                    explicacion: """
                                    Seguida de dos consonantes diferentes (excepto $n$, $m$) que no forman parte de la misma sílaba que la $e$, \n\n $e$ transcribe el sonido
                                """,
                    imagenFonema: "Œ",
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
                            Palabra(palabra: "*esc*alier", enGriego: "ᴇs.ka.ljᴇ"),
                            Palabra(palabra: "d*esc*endre", enGriego: "dᴇ.sɑ̃dʀ"),
                            Palabra(palabra: "adol*esc*ent", enGriego: "a.do.lᴇ.sɑ̃")
                      ],
                      pronuciacion: "esc",
                      explicacion: """
                                      En el grupo esc $e$ transcribe el sonido
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
                            Palabra(palabra: "ch*ez*", enGriego: "ʃᴇ"),
                            Palabra(palabra: "vous parl*ez*", enGriego: "vu.paʀ.lᴇ")
                      ],
                      pronuciacion: "-ez",
                      explicacion: """
                                      Al final de una palabra \n\n transcribe el sonido
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
                            Palabra(palabra: "parl*er*", enGriego: "paʀ.lᴇ"),
                            Palabra(palabra: "infirmi*er*", enGriego: "ɛ̃.fir.mjᴇ")
                      ],
                      pronuciacion: "-er",
                      explicacion: """
                                      Al final de una palabra \n\n transcribe el sonido
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
                            Palabra(palabra: "sorb*et*", enGriego: "soʀ.bᴇ"),
                            Palabra(palabra: "elle perm*et*", enGriego: "ᴇl.pᴇʀ.mᴇ")
                      ],
                      pronuciacion: "-et",
                      explicacion: """
                                      Al final de una palabra \n\n transcribe el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "*et*", enGriego: "ᴇ")
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
                            Palabra(palabra: "as*pect*", enGriego: "as.pᴇ"),
                            Palabra(palabra: "res*pect*", enGriego: "ʀᴇs.pᴇ"),
                      ],
                      pronuciacion: "-ect",
                      explicacion: """
                                      Al final de una palabra y precedidas de $p$ \n\n transcriben el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "di*rect*", enGriego: "di.ʀᴇkt"),
                            Palabra(palabra: "cor*rect*", enGriego: "ko.ʀᴇkt"),
                      ],
                      pronuciacion: "-ect",
                      explicacion: """
                                      Al final de una palabra y precedidas de una consonante (excepto $p$) \n\n transcriben los sonidos
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
                            Palabra(palabra: "man*gea*ble", enGriego: "mɑ̃.ʒabl"),
                            Palabra(palabra: "ven*gea*nce", enGriego: "vɑ̃.ʒɑ̃s"),
                            Palabra(palabra: "plon*geo*n", enGriego: "plõ.ʒõ")
                      ],
                      pronuciacion: "-ge-",
                      explicacion: """
                                     Seguidas de $a$, $o$ \n\n $g$ transcribe el sonido \n\n +ʒ+ \n
                                    La $e$ no transcribe ningún sonido
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
                            Palabra(palabra: "p*eu*", enGriego: "pŒ"),
                            Palabra(palabra: "*eu*ro", enGriego: "Œ.ʀo")
                      ],
                      pronuciacion: "eu",
                      explicacion: """
                                     transcribe el sonido
                                  """,
                      imagenFonema: "Œ",
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
                            Palabra(palabra: "*eau*", enGriego: "o"),
                            Palabra(palabra: "p*eau*", enGriego: "po")
                      ],
                      pronuciacion: "eau",
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
            
            Tarjeta(audio: "pb_e_21",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "n*eig*e", enGriego: "nᴇʒ")
                      ],
                      pronuciacion: "-ei-",
                      explicacion: """
                                     Seguidas de una consonante (excepto $l$, $n$) \n\n transcriben el sonido
                                  """,
                      imagenFonema: "ᴇ",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "rév*eil*", enGriego: "ʀᴇ.vᴇj"),
                            Palabra(palabra: "merv*eill*e", enGriego: "mᴇʀ.vᴇj")
                      ],
                      pronuciacion: "eil o eill",
                      explicacion: """
                                     transcribe los sonidos
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
                            Palabra(palabra: "p*eint*re", enGriego: "pɛ̃tʀ")
                      ],
                      pronuciacion: "ein",
                      explicacion: """
                                      Seguidas de una consonante \n\n transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "v*eina*rd", enGriego: "vᴇ.naʀ")
                      ],
                      pronuciacion: "ein",
                      explicacion: """
                                      Seguidas de una vocal
                                      (excepto $e$ al final de una palabra) \n\n transcriben los sonidos
                                  """,
                      imagenFonema: "ᴇn",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "pl*ein*", enGriego: "plɛ̃")
                      ],
                      pronuciacion: "-ein",
                      explicacion: """
                                      Al final de una palabra \n\n transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "pl*eine*", enGriego: "plᴇn")
                      ],
                      pronuciacion: "-eine",
                      explicacion: """
                                      Al final de una palabra \n\n transcriben el sonido
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
                            Palabra(palabra: "ac*cuei*l", enGriego: "a.kŒj"),
                      ],
                      pronuciacion: "cueil o cueill",
                      explicacion: """
                                      transcriben los sonidos
                                  """,
                      imagenFonema: "kŒj",
                      imagenConsejo: nil,
                      textodeAbajo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "org*ueill*euse", enGriego: "oʀ.gŒ.jŒz"),
                      ],
                      pronuciacion: "gueil o gueill",
                      explicacion: """
                                      transcriben los sonidos
                                  """,
                      imagenFonema: "gŒj",
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
                        Palabra(palabra: "*i*le", enGriego: "il"),
                        Palabra(palabra: "*lit*", enGriego: "li")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                 Al inicio de una palabra o entre consonantes excepto en los grupos:
                                 $im$ consonante que no sea $m$ \n
                                 $in$ consonante que no sea $n$ \n
                                 $in$ al final de una palabra \n\n transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "am*i*", enGriego: "a.mi")
                  ],
                  pronuciacion: "-i",
                  explicacion: """
                                  Al final de una palabra, siempre y cuando la $i$ no esté precedida de otra vocal \n\ntranscribe el sonido
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
                        Palabra(palabra: "p*ia*no", enGriego: "pja.no"),
                        Palabra(palabra: "ch*ie*n", enGriego: "ʃjɛ̃")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                 Antes de una vocal, excepto $e$ al final de una palabra \n\n transcribe el sonido
                              """,
                  imagenFonema: "j",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ou*vri*ère", enGriego: "u.vʀi.ᴇʀ"),
                        Palabra(palabra: "*pli*é", enGriego: "pli.ᴇ")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                  Antes de una vocal y precedida de
                                  consonante más $r$ o $l$ \n\n transcribe el sonido
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
                                  Antes de $e$ al final de una palabra \n\n transcribe el sonido
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
                        Palabra(palabra: "p*ain*", enGriego: "pɛ̃"),
                        Palabra(palabra: "*ains*i", enGriego: "ɛ̃.si")
                  ],
                  pronuciacion: "ain",
                  explicacion: """
                                 Al final de una palabra o seguidas de una consonante \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*ainé*", enGriego: "ᴇ.nᴇ")
                  ],
                  pronuciacion: "ain",
                  explicacion: """
                                  Seguidas de una vocal (exepto $e$ al final de una palabra) \n\n $ai$ transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: "i_retro_3Cb_n2",
                  textodeAbajo: "La $n$ forma parte de la sílaba que sigue"
              ),
              
              Silaba(
                  palabras: [
                        Palabra(palabra: "s*aine*", enGriego: "sᴇn")
                  ],
                  pronuciacion: "-aine",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos
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
                        Palabra(palabra: "*aimé*", enGriego: "ᴇ.mᴇ")
                  ],
                  pronuciacion: "aim",
                  explicacion: """
                                
                                Seguidas de una vocal
                                (excepto e al final de una palabra), ai transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: "La $m$ forma parte de la sílaba que sigue."
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "il *aime*", enGriego: "il.ᴇm")
                  ],
                  pronuciacion: "-aime",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos
                              """,
                  imagenFonema: "ᴇm",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "f*aim*", enGriego: "fɛ̃")
                  ],
                  pronuciacion: "-aim",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos
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
                        Palabra(palabra: "m*ai*", enGriego: "mᴇ"),
                        Palabra(palabra: "m*ais*", enGriego: "mᴇ")
                  ],
                  pronuciacion: "ai",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante
                                  (excepto $l$, $m$, $n$) \n\n transcriben el sonido
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
                        Palabra(palabra: "trav*ail*", enGriego: "tʀa.vaj "),
                        Palabra(palabra: "elle trav*aill*e", enGriego: "ᴇl.tʀa.vaj"),
                        Palabra(palabra: "d*euil*", enGriego: "dŒj"),
                        Palabra(palabra: "fe*uill*e ", enGriego: "fŒj")
                  ],
                  pronuciacion: "il o ill",
                  explicacion: """
                                  Después de $a$, $e$, $u$ \n\n transcriben el sonido
                              """,
                  imagenFonema: "j",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*fill*e", enGriego: "fij")
                  ],
                  pronuciacion: "ill",
                  explicacion: """
                                  Después de una consonante \n\n transcriben los sonidos
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
                        Palabra(palabra: "n*eig*e", enGriego: "nᴇʒ")
                  ],
                  pronuciacion: "ei",
                  explicacion: """
                                  Seguidas de una consonante (excepto $l$, $n$) \n\n transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "rév*eill*on", enGriego: "ʀᴇ.vᴇ.jõ"),
                        Palabra(palabra: "merv*eill*e", enGriego: "mᴇʀ.vᴇj"),
                  ],
                  pronuciacion: "eil o eill",
                  explicacion: """
                                  transcriben los sonidos
                              """,
                  imagenFonema: "ᴇj",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ac*cueil*", enGriego: "a.kŒj")
                  ],
                  pronuciacion: "cueil o cueill",
                  explicacion: """
                                  transcriben los sonidos
                              """,
                  imagenFonema: "kŒj",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "or*gueill*euse", enGriego: "oʀ.gŒ.jŒz")
                  ],
                  pronuciacion: "gueil o gueill",
                  explicacion: """
                                  transcriben los sonidos
                              """,
                  imagenFonema: "gŒj",
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
                        Palabra(palabra: "v*eina*rd", enGriego: "vᴇ.naʀ"),
                  ],
                  pronuciacion: "ein",
                  explicacion: """
                                  Seguidas de una vocal (exepto $e$ al final de una palabra) \n\n $ei$ transcriben el sonido
                              """,
                  imagenFonema: "ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: "La $n$ forma parte de la sílaba que sigue. "
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "pl*ein*", enGriego: "plɛ̃"),
                  ],
                  pronuciacion: "-ein",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "bal*eine*", enGriego: "ba.lᴇn"),
                  ],
                  pronuciacion: "-eine",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos
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
                        Palabra(palabra: "m*oi*", enGriego: "mwa"),
                        Palabra(palabra: "m*ois*", enGriego: "mwa"),
                  ],
                  pronuciacion: "oi",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante, excepto en los grupos:
                                       \n- $oin$ al final de una palabra
                                       \n $oin$ más consonante \n\n
                                  transcriben los sonidos
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
                        Palabra(palabra: "l*oin*", enGriego: "lwɛ̃"),
                        Palabra(palabra: "j*oind*re", enGriego: "ʒwɛ̃dʀ"),
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante \n\n transcriben los sonidos
                              """,
                  imagenFonema: "wɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "m*oine*au", enGriego: "mwa.no")
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                   Seguidas de una vocal (excepto $e$ al final de una palabra), \n\n $oi$ transcriben los sonidos
                              """,
                  imagenFonema: "wa",
                  imagenConsejo: nil,
                  textodeAbajo: "La $n$ forma parte de la sílaba que sigue."
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "av*oine*", enGriego: "a.vwan")
                  ],
                  pronuciacion: "-oine",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos
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
                        Palabra(palabra: "*imp*ortant", enGriego: "ɛ̃.poʀ.tɑ̃"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  Seguidas de una consonante
                                  (excepto $m$) \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*imm*oral", enGriego: "i.mo.ʀal"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  Seguidas de $m$ \n\n $i$ transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: "La $m$ forma parte de la sílaba que sigue. "
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "p*ime*nt", enGriego: "pi.mɑ̃"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  Seguidas de una vocal (excepto $e$ al final de una palabra), \n\n $i$ transcribe el sonido

                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: "La $m$ forma parte de la sílaba que sigue."
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "c*ime*", enGriego: "sim"),
                  ],
                  pronuciacion: "-ime",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos

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
                        Palabra(palabra: "v*in*", enGriego: "vɛ̃"),
                        Palabra(palabra: "v*ingt*", enGriego: "vɛ̃"),
                  ],
                  pronuciacion: "in",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante (excepto $n$) \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*inn*é", enGriego: "i.nᴇ"),
                  ],
                  pronuciacion: "in",
                  explicacion: """
                                  Seguidas de $n$ \n\n $i$ transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: "La $n$ forma parte de la sílaba que sigue. "
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*inu*tile", enGriego: "i.ny.til"),
                  ],
                  pronuciacion: "im",
                  explicacion: """
                                  Seguidas de una vocal (excepto $e$ al final de una palabra) \n\n $i$ transcribe el sonido

                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: "La $n$ forma parte de la sílaba que sigue. "
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "coll*ine*", enGriego: "ko.lin"),
                  ],
                  pronuciacion: "-ine",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos

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
                        Palabra(palabra: "camp*ing*", enGriego: "kɑ̃.piŋ"),
                  ],
                  pronuciacion: "-ing",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos
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
                    Palabra(palabra: "t*ome*", enGriego: "tom"),
                    Palabra(palabra: "l*oto*", enGriego: "lo.to")
                ],
                  pronuciacion: "o",
                  explicacion: "Seguida de una consonante y una vocal o al final de una palabra \n\n transcribe el sonido",
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
                    Palabra(palabra: "*opp*rimée", enGriego: "o.pri.mᴇ"),
                    Palabra(palabra: "c*onn*u", enGriego: "co.ny"),
                    Palabra(palabra: "p*omm*e", enGriego: "pom"),
                ],
                  pronuciacion: "o",
                  explicacion: "Seguida de dos consonantes idénticas \n\n transcribe el sonido",
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
                                  Seguida de dos consonantes diferentes (excepto $m$ y $n$) \n\n transcribe el sonido
                              """,
                  imagenFonema: "o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "s*omb*re", enGriego: "sõbr"),
                        Palabra(palabra: "c*ons*équence", enGriego: "kõ.sᴇ.kɑ̃s")
                  ],
                  pronuciacion: "o",
                  explicacion: """
                                  Seguida de dos consonantes diferentes \n
                                  - si la primera de ellas es $m$ o $n$, \n\n $om$, $on$ transcriben el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "ins*omn*ie", enGriego: "ɛ̃.som.ni")
                  ],
                  pronuciacion: "omn",
                  explicacion: """
                                  $om$ transcriben los sonidos
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
                        Palabra(palabra: "*coo*pérer", enGriego: "co.o.pᴇ.ʀᴇ")
                  ],
                  pronuciacion: "coo-",
                  explicacion: """
                                  Al inicio de una palabra, \n\n $oo$ transcriben los sonidos
                              """,
                  imagenFonema: "o.o",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "f*oo*t", enGriego: "fut")
                  ],
                  pronuciacion: "oo",
                  explicacion: """
                                  Excepto en el grupo $coo-$ \n\n transcriben el sonido
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
                        Palabra(palabra: "j*oye*ux", enGriego: "ʒwa.jŒ"),
                        Palabra(palabra: "v*oya*ge", enGriego: "vwa.jaʒ")
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
                        Palabra(palabra: "m*oi*", enGriego: "mwa"),
                        Palabra(palabra: "m*ois*", enGriego: "mwa")
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
                        Palabra(palabra: "l*oin*", enGriego: "lwɛ̃"),
                        Palabra(palabra: "j*oind*re", enGriego: "ʒwɛ̃dʀ")
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                  Al final de una palabra o
                                  seguidas de una consonante \n\n transcriben los sonidos
                              """,
                  imagenFonema: "wɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "m*oine*au", enGriego: "mwa.no")
                  ],
                  pronuciacion: "oin",
                  explicacion: """
                                  Seguidas de una vocal (excepto $e$ al final de una palabra) \n\n $oi$ transcriben los sonidos
                              """,
                  imagenFonema: "wa",
                  imagenConsejo: nil,
                  textodeAbajo: "La n forma parte de la sílaba que sigue."
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "av*oine*", enGriego: "a.vwan")
                  ],
                  pronuciacion: "-oine",
                  explicacion: """
                                  Al final de una palabra \n\n transcriben los sonidos wan
                              """,
                  imagenFonema: "wan",
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
                        Palabra(palabra: "c*oer*citif", enGriego: "ko.ᴇʀ.si.tif"),
                  ],
                  pronuciacion: "oe",
                  explicacion: """
                                  Seguidas de una consonante o una vocal
                                  (excepto $u$) \n\n $o$ $e$ transcriben los sonidos
                              """,
                  imagenFonema: "o.ᴇ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "s*œu*r", enGriego: "sŒʀ"),
                  ],
                  pronuciacion: "œu",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "Œ",
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
                        Palabra(palabra: "m*on*", enGriego: "mõ"),
                        Palabra(palabra: "*on*", enGriego: "õ")
                  ],
                  pronuciacion: "-on",
                  explicacion: """
                                  Al final de una palabra
                                  y en el caso de la palabra $on$ \n\n transcriben el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "p*ont*", enGriego: "põ"),
                        Palabra(palabra: "*ont*", enGriego: "õ")
                  ],
                  pronuciacion: "-ont",
                  explicacion: """
                                  Al final de una palabra
                                  y en el caso de la palabra $ont$ \n\n transcriben el sonido
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
                        Palabra(palabra: "*ou*", enGriego: "u"),
                        Palabra(palabra: "n*ous*", enGriego: "nu")
                  ],
                  pronuciacion: "ou",
                  explicacion: """
                                  Al final de una palabra
                                  o seguidas de una consonante \n\n transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*où*", enGriego: "u")
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
                                  precedidas de dos consonantes que se pronuncian \n\n transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*troue*r", enGriego: "tʀu.ᴇ")
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
                        Palabra(palabra: "*oue*st", enGriego: "wᴇst"),
                        Palabra(palabra: "*doua*ne", enGriego: "dwan")
                  ],
                  pronuciacion: "ou",
                  explicacion: """
                                  Seguidas de una vocal,
                                  \n -    al principio de una palabra
                                  \n -    o precedidas de una sola consonante
                                    \n\n transcriben el sonido
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
                        Palabra(palabra: "t*u*", enGriego: "ty"),
                        Palabra(palabra: "*ut*ile", enGriego: "y.til")
                  ],
                  pronuciacion: "u",
                  explicacion: """
                                 Al final de una palabra o seguida de una consonante (excepto en los grupos $-un$ y $-um$ seguidos de una consonante) \n\n transcribe el sonido
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
                        Palabra(palabra: "*un*", enGriego: "ɛ̃"),
                        Palabra(palabra: "auc*un*", enGriego: "o.kɛ̃"),
                        Palabra(palabra: "l*und*i", enGriego: "lɛ̃.di")
                  ],
                  pronuciacion: "un",
                  explicacion: """
                                 Al final de una palabra o seguidas de una consonante (exepto $n$) \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "*un*ir", enGriego: "y.niʀ"),
                        Palabra(palabra: "t*unn*el", enGriego: "ty.nᴇl")
                  ],
                  pronuciacion: "un",
                  explicacion: """
                                 Seguidas de una vocal (exepto $e$ al final de una palabra) o de $n$, \n\n $u$ transcribe el sonido
                              """,
                  imagenFonema: "y",
                  imagenConsejo: nil,
                  textodeAbajo: "La $n$ forma parte de la sílaba que sigue."
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "l*une*", enGriego: "lyn")
                  ],
                  pronuciacion: "-une",
                  explicacion: """
                                 Al final de una palabra y precedidas de una consonante \n\n transcriben los sonidos
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
                        Palabra(palabra: "h*umb*le", enGriego: "ɛ̃bl")
                  ],
                  pronuciacion: "-um-",
                  explicacion: """
                                 Seguidas de una consonante \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "h*uma*in", enGriego: "y.mɛ̃")
                  ],
                  pronuciacion: "-um-",
                  explicacion: """
                                  Seguidas de una vocal (exepto $e$ al final de una palabra), \n\n $u$ transcribe el sonido
                              """,
                  imagenFonema: "y",
                  imagenConsejo: nil,
                  textodeAbajo: "La $m$ forma parte de la sílaba que sigue."
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "p*lume*", enGriego: "plym")
                  ],
                  pronuciacion: "-ume",
                  explicacion: """
                                 Al final de una palabra y precedidas de una consonante \n\n transcriben los sonidos
                              """,
                  imagenFonema: "ym",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "for*um*", enGriego: "fo.ʀom")
                  ],
                  pronuciacion: "-um",
                  explicacion: """
                                 Al final de una palabra \n\n transcribe los sonidos
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
                        Palabra(palabra: "*au*", enGriego: "o"),
                        Palabra(palabra: "s*au*t", enGriego: "so")
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
                        Palabra(palabra: "*ou*", enGriego: "u"),
                        Palabra(palabra: "n*ous*", enGriego: "nu")
                  ],
                  pronuciacion: "ou",
                  explicacion: """
                              Al final de una palabra o seguidas de una consonante transcriben el sonido
                              """,
                  imagenFonema: "u",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
            
            Silaba(
                palabras: [
                      Palabra(palabra: "*où*", enGriego: "u")
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
                      Palabra(palabra: "*troue*r", enGriego: "tʀu.ᴇ")
                ],
                pronuciacion: "ou + vocal",
                explicacion: """
                                Después de dos consonantes que se pronuncian \n\n transcriben el sonido
                            """,
                imagenFonema: "u",
                imagenConsejo: nil,
                textodeAbajo: nil
            ),
            
            Silaba(
                palabras: [
                      Palabra(palabra: "*oue*st", enGriego: "wᴇst"),
                      Palabra(palabra: "*doua*ne", enGriego: "dwan")
                ],
                pronuciacion: "ou + vocal",
                explicacion: """
                                Al principio de una palabra o después de una sola consonante \n\n transcriben el sonido
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
                        Palabra(palabra: "p*eu*", enGriego: "pŒ"),
                        Palabra(palabra: "*eu*ro", enGriego: "Œ.ʀo")
                  ],
                  pronuciacion: "eu",
                  explicacion: """
                                  transcriben el sonido
                              """,
                  imagenFonema: "Œ",
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
                        Palabra(palabra: "rel*iu*re", enGriego: "ʀŒ.ljyʀ"),
                        Palabra(palabra: "str*iu*re", enGriego: "stʀi.jyʀ")
                  ],
                  pronuciacion: "u",
                  explicacion: """
                                  Después de una $i$ \n\n transcribe el sonido
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
                        Palabra(palabra: "fati*gu*ant", enGriego: "fa.ti.gɑ̃"),
                        Palabra(palabra: "*gu*erre", enGriego: "gᴇʀ"),
                        Palabra(palabra: "*gu*ide", enGriego: "gid")
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
                        Palabra(palabra: "*qu*and", enGriego: "kɑ̃"),
                        Palabra(palabra: "*qu*i", enGriego: "ki"),
                        Palabra(palabra: "*qu*e", enGriego: "kŒ")
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
                        Palabra(palabra: "ac*cuei*l", enGriego: "a.kŒj"),
                        Palabra(palabra: "*cuei*llir", enGriego: "kŒ.jiʀ")
                  ],
                  pronuciacion: "cuei",
                  explicacion: """
                                  $u$ no transcribe ningún sonido
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
                        Palabra(palabra: "*lui*", enGriego: "lɥi"),
                        
                  ],
                  pronuciacion: "u",
                  explicacion: """
                                  Precedida de una sola consonante
                                  y seguida de una vocal \n\n transcribe el sonido
                              """,
                  imagenFonema: "ɥ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
            Silaba(
                palabras: [
                        Palabra(palabra: "*crue*l", enGriego: "kʀy.ᴇl")
                ],
                pronuciacion: "u",
                explicacion: """
                                Precedida de dos consonantes que se pronuncian y seguida de una vocal \n\n transcribe el sonido
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
                        Palabra(palabra: "enn*uye*ux", enGriego: "ɑ̃.nɥi.jŒ"),
                        Palabra(palabra: "br*uya*nte", enGriego: "bʀɥi.jɑ̃t")
                  ],
                  pronuciacion: "uy",
                  explicacion: """
                                  Seguidas de una vocal, \n\n $u$ transcribe el sonido
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
                          Palabra(palabra: "*ya*ourt", enGriego: "ja.uʀt")
                    ],
                    pronuciacion: "y-",
                    explicacion: """
                                    Al principio de una palabra y
                                    seguida de una vocal \n\n transcribe el sonido
                                """,
                    imagenFonema: "j",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "*Yv*es", enGriego: "iv")
                    ],
                    pronuciacion: "y-",
                    explicacion: """
                                    Al principio de una palabra y
                                    seguida de una consonante \n\n transcribe el sonido
                                """,
                    imagenFonema: "i",
                    imagenConsejo: nil,
                    textodeAbajo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "ju*ry*", enGriego: "ʒy.ʀi"),
                    ],
                    pronuciacion: "-y",
                    explicacion: """
                                    Al final de una palabra, después de una consonante \n\n transcribe el sonido
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
                        Palabra(palabra: "*cyc*lisme", enGriego: "si.klism"),
                        Palabra(palabra: "*syn*onyme", enGriego: "si.no.nim")
                  ],
                  pronuciacion: "-y-",
                  explicacion: """
                                  Entre dos consonantes
                                  (excepto si la segunda es $n$ o $m$ seguida de una consonante) \n\n transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil,
                  textodeAbajo: nil
              ),
             Silaba(
                    palabras: [
                          Palabra(palabra: "*synt*axe", enGriego: "sɛ̃.taks"),
                          Palabra(palabra: "*symb*ole", enGriego: "sɛ̃.bol")
                    ],
                    pronuciacion: "-yn- o -ym-",
                    explicacion: """
                                    Entre consonantes \n\n transcriben el sonido
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
                        Palabra(palabra: "*myo*pe", enGriego: "mjop"),
                        Palabra(palabra: "*lyo*philiser", enGriego: "ljo.fi.li.zᴇ"),
                  ],
                  pronuciacion: "-y-",
                  explicacion: """
                                  Entre una consonante y una vocal \n\n transcribe el sonido
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
                        Palabra(palabra: "j*oye*ux", enGriego: "ʒwa.jŒ"),
                        Palabra(palabra: "v*oya*ge", enGriego: "vwa.jaʒ"),
                  ],
                  pronuciacion: "-oy-",
                  explicacion: """
                                  Seguidas de una vocal \n\n transcriben los sonidos
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
                    Palabra(palabra: "cr*ay*on", enGriego: "kʀᴇ.jõ"),
                    Palabra(palabra: "elles p*aya*ient", enGriego: "ᴇl.pᴇ.jᴇ"),
                    Palabra(palabra: "r*ayu*re", enGriego: "ʀᴇ.jyʀ")
              ],
              pronuciacion: "ay",
              explicacion: """
                              Seguidas de una vocal \n\n transcriben los sonidos
                          """,
              imagenFonema: "ᴇj",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
                palabras: [
                      Palabra(palabra: "il p*aye*", enGriego: "il.pᴇj")
                ],
                pronuciacion: "-aye",
                explicacion: """
                                Al final de una palabra \n\n transcriben los sonidos
                            """,
                imagenFonema: "ᴇj",
                imagenConsejo: nil,
                textodeAbajo: nil
            ),
            Silaba(
                palabras: [
                      Palabra(palabra: "elles p*ayent*", enGriego: "ᴇl.pᴇj")
                ],
                pronuciacion: "-ayent",
                explicacion: """
                                Al final de una palabra \n\n transcriben los sonidos
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
                        Palabra(palabra: "p*ays*", enGriego: "pᴇ.i"),
                        Palabra(palabra: "p*ays*ane", enGriego: "pᴇ.i.zan")
                  ],
                  pronuciacion: "ay",
                  explicacion: """
                                  Seguidas de $s$ \n\n transcriben los sonidos
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
                        Palabra(palabra: "enn*uye*ux", enGriego: "ɑ̃.nɥi.jŒ"),
                        Palabra(palabra: "br*uya*nte", enGriego: "bʀɥi.jɑ̃t")
                  ],
                  pronuciacion: "uy",
                  explicacion: """
                                  Seguidas de una vocal \n\n transcriben los sonidos
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
