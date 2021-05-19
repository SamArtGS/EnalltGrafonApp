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
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "mère", enGriego: "mER"),
                          Palabra(palabra: "brève", enGriego: "bREv")
                    ],
                    pronuciacion: "è",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: "buho"
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "fête", enGriego: "fEt"),
                          Palabra(palabra: "même", enGriego: "mEm")
                    ],
                    pronuciacion: "ê",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: "buho"
                )
            ],
            excepciones: [Palabra(palabra: "coach", enGriego: "kot∫"),
                          Palabra(palabra: "goal", enGriego: "gol"),
                          Palabra(palabra: "toast", enGriego: "tost")]
        )
    ]
    
    static let tarjetasA:[Tarjeta] =  [
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "ma", enGriego: "ma"),
                        Palabra(palabra: "chat", enGriego: "∫a")
                    ],
                    pronuciacion: "a",
                    explicacion: "Al final de una palabra o seguida de una consonante (excepto m o n) \n Transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "à", enGriego: "a")
                    ],
                    pronuciacion: "a",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "pâte", enGriego: "pat")
                    ],
                    pronuciacion: "-e",
                    explicacion: "Transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil
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
                        Palabra(palabra: "pain", enGriego: "pĒ"),
                        Palabra(palabra: "ainsi", enGriego: "ɛ̃.si")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Al final de una palabra o seguida de una consonante. \n Transcribe el sonido",
                    imagenFonema: "ɛ̃",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "ainé", enGriego: "E.nE")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Seguidas de una vocal (excepto e al final de una palabra). \n La n forma parte de la sílaba que sigue. \n ai transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "saine", enGriego: "sEn")
                    ],
                    pronuciacion: "-aine",
                    explicacion: "Al final de una palabra, transcribe los sonidos",
                    imagenFonema: "En",
                    imagenConsejo: nil
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
                        Palabra(palabra: "aimé", enGriego: "E.mE")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Seguidas de una voval (excepto e al final de una palabra). \n La m forma parte de la sílaba que sigue. \n ai transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "tu aimes", enGriego: "ty.eM")
                    ],
                    pronuciacion: "ain",
                    explicacion: "Transcribe los sonidos",
                    imagenFonema: "Em",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "faim", enGriego: "tɛ̃")
                    ],
                    pronuciacion: "-aine",
                    explicacion: "Al inal de una palabra, transcribe los sonidos",
                    imagenFonema: "ɛ̃",
                    imagenConsejo: "buho"
                )
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "travail", enGriego: "tRa.vaj")
                    ],
                    pronuciacion: "-ail",
                    explicacion: "Transcriben los sonidos",
                    imagenFonema: "aj",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "ailleurs", enGriego: "a.jŒR")
                    ],
                    pronuciacion: "aill",
                    explicacion: "Transcribe los sonidos",
                    imagenFonema: "aj",
                    imagenConsejo: nil
                )
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "jambe", enGriego: "ʒɑ̃b")
                    ],
                    pronuciacion: "am",
                    explicacion: "Seguidas de una consonante (excepto m y n), transcriben el sonido",
                    imagenFonema: "ɑ̃",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "grammatical", enGriego: "gʀa.ma.ti.kal"),
                          Palabra(palabra: "amie", enGriego: "a.mi")
                    ],
                    pronuciacion: "am",
                    explicacion: "Seguidas de otra m o de una vocal (excepto e al final de una palabra), la m forma parte de la sílaba que sigue. La a transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "dame", enGriego: "dam")
                    ],
                    pronuciacion: "-ame",
                    explicacion: "Al final de una palabra, transcriben los sonidos",
                    imagenFonema: "am",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "amnésie", enGriego: "am.nᴇ.zi")
                    ],
                    pronuciacion: "am",
                    explicacion: "La n forma parte de la sílaba que sigue. Seguidas de una n, am transcriben los sonidos",
                    imagenFonema: "am",
                    imagenConsejo: nil
                )],
            excepciones: nil
        ),
        
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "plan", enGriego: "plɑ̃"),
                        Palabra(palabra: "chant", enGriego: "ʃɑ̃")
                    ],
                    pronuciacion: "an",
                    explicacion: "Al final de una palabra o seguidas de una consonante (excepto n), transcribe el sonido",
                    imagenFonema: "ɑ̃",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "année", enGriego: "a.nᴇ"),
                          Palabra(palabra: "animal", enGriego: "a.ni.mal"),
                    ],
                    pronuciacion: "an",
                    explicacion: "La n forma parte de la sílaba que sigue. Seguidas de otra n o de una vocal (excepto e al final de una palabra), a transcribe el sonido",
                    imagenFonema: "a",
                    imagenConsejo: nil
                ),
                Silaba(
                    palabras: [
                          Palabra(palabra: "banane", enGriego: "ba.nan")
                    ],
                    pronuciacion: "-ane",
                    explicacion: "Al final de una palabra, transcribe los sonidos",
                    imagenFonema: "an",
                    imagenConsejo: nil
                )
            ],
            excepciones: nil
        ),
        
        Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                        Palabra(palabra: "elle paye", enGriego: "ᴇl.pᴇj"),
                        Palabra(palabra: "pays", enGriego: "pᴇ.i")
                    ],
                    pronuciacion: "a",
                    explicacion: "Seguida de y, transcribe el sonido",
                    imagenFonema: "E",
                    imagenConsejo: nil
                )
            ],
            excepciones: nil
        ),
    ]
    
    
    static let tarjetasE:[Tarjeta] = [
        Tarjeta(audio: "192",
           silabas: [
               Silaba(
                   palabras: [
                       Palabra(palabra: "table", enGriego: "tabl"),
                       Palabra(palabra: "amie", enGriego: "a.mi")
                   ],
                   pronuciacion: "-e",
                   explicacion: "Al final de una palabra de más de dos letras no trascribe ningún sonido",
                   imagenFonema: sinSonido,
                   imagenConsejo: nil
               ),
               Silaba(
                   palabras: [
                         Palabra(palabra: "je", enGriego: "3Œ"),
                         Palabra(palabra: "le", enGriego: "IŒ")
                   ],
                   pronuciacion: "-e",
                   explicacion: "Al final de una palabra de 2 letras transcribe el sonido que le corresponde a cada uno de los elemenos",
                   imagenFonema: "Y",
                   imagenConsejo: "buho"
               )
           ],
           excepciones: nil
           ),
           Tarjeta(audio: "192",
               silabas: [
                   Silaba(
                       palabras: [
                             Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la letra e:
                                       Está en la primera sílaba de una palabra y
                                       Le sigue una sola constante (excepto x) más una
                                       vocal transcribe el sonido
                                   """,
                       imagenFonema: "CE",
                       imagenConsejo: nil
                   ),
                   Silaba(
                       palabras: [
                             Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                       ],
                       pronuciacion: "e",
                       explicacion: "Seguida de x transcribe el sonido",
                       imagenFonema: "E",
                       imagenConsejo: nil
                   )
                   ],
                   excepciones: nil
           ),
           Tarjeta(audio: "192",
               silabas: [
                   Silaba(
                       palabras: [
                             Palabra(palabra: "samedi", enGriego: "sam.di")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la letra e:
                                       Está en la primera sílaba de una palabra y
                                       Le sigue una sola constante (excepto x) más una
                                       vocal transcribe el sonido
                                   """,
                       imagenFonema: "CE",
                       imagenConsejo: nil
                   )
                   ],
                   excepciones: nil
           ),
           Tarjeta(audio: "192",
               silabas: [
                   Silaba(
                       palabras: [
                             Palabra(palabra: "tristement", enGriego: "sam.di"),
                             Palabra(palabra: "mercredi", enGriego: "kõ.plEt.mã")
                       ],
                       pronuciacion: "-e-",
                       explicacion: """
                                       Cuando la letra e está:
                                       - De la segunda sílaba escrita en adelante
                                       - Precedida de 2 consonantes que transcriben un sonido
                                       - Le siguen una sola consonante que transcribe
                                   """,
                       imagenFonema: "",
                       imagenConsejo: nil
                   )
                   ],
                   excepciones: nil
           ),
           Tarjeta(audio: "192",
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
                       imagenConsejo: "buho"
                   ),
                   Silaba(
                   palabras: [
                         Palabra(palabra: "les", enGriego: "lᴇ")
                   ],
                   pronuciacion: "-es",
                   explicacion: """
                                   Al final de una palabra de tres letras (por ejemplo, un determinante plural: les, mes, tes, etc.), transcriben el sonido
                               """,
                   imagenFonema: "E",
                   imagenConsejo: nil),
                   Silaba(
                       palabras: [
                             Palabra(palabra: "tu es", enGriego: "ty.ᴇ")
                       ],
                       pronuciacion: "es",
                       explicacion: """
                                       En la forma conjugada del verbo être, transcriben el sonido
                                   """,
                       imagenFonema: "E",
                       imagenConsejo: nil
                   )
                ],
               excepciones: nil
            ),
            Tarjeta(audio: "192",
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
                      imagenConsejo: "buho"
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "elles vient", enGriego: "ᴇl.vjɛ̃")
                      ],
                      pronuciacion: "-ent",
                      explicacion: """
                                      Al final de un verbo conjugado en la tercera persona del singular, transcriben el sonido
                                  """,
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil
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
                      imagenConsejo: nil
                  ),
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "192",
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
                      imagenConsejo: nil
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
                      imagenConsejo: nil
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
                      imagenConsejo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "192",
              silabas: [
                  Silaba(
                      palabras: [
                            Palabra(palabra: "enfant", enGriego: "ty.ᴇ"),
                            Palabra(palabra: "centre", enGriego: "sɑ̃tʀ"),
                      ],
                      pronuciacion: "en",
                      explicacion: """
                                      Seguidas de una consonante (excepto n), transcriben el sonido
                                  """,
                      imagenFonema: "ɑ̃",
                      imagenConsejo: nil
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
                      imagenConsejo: nil
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
                      imagenConsejo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "192",
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
                      imagenFonema: "E",
                      imagenConsejo: nil
                  ),
                  Silaba(
                      palabras: [
                            Palabra(palabra: "exemple", enGriego: "ᴇ.gzɑ̃pl")
                      ],
                      pronuciacion: "e-",
                      explicacion: """
                                      Al inicio de una palabra y seguida de x, transcribe el sonido
                                    """,
                      imagenFonema: "E",
                      imagenConsejo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "192",
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
                      imagenConsejo: nil
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
                      imagenFonema: "E",
                      imagenConsejo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "192",
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
                      imagenConsejo: nil
                  )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "192",
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
                      imagenConsejo: nil
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
                      imagenFonema: "Œ",
                      imagenConsejo: "buho"
                  ),
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "192",
            silabas: [
                Silaba(
                    palabras: [
                          Palabra(palabra: "lecture", enGriego: "lᴇk.tuʀ"),
                          Palabra(palabra: "hivernal", enGriego: "i.vᴇʀ.nal"),
                          Palabra(palabra: "section", enGriego: "sᴇk.sjõ"),
                          Palabra(palabra: "responsable", enGriego: "ʀᴇs.põ.sabl"),
                          Palabra(palabra: "restaurant", enGriego: "ty.ᴇ"),
                          Palabra(palabra: "tu es", enGriego: "ty.ᴇ"),
                          Palabra(palabra: "tu es", enGriego: "ty.ᴇ"),
                    ],
                    pronuciacion: "es",
                    explicacion: """
                                    En la forma conjugada del verbo être, transcriben el sonido
                                """,
                    imagenFonema: "E",
                    imagenConsejo: nil
                )
            ],
            excepciones: nil
            ),
            
    ]
    
    /*
     Tarjeta(audio: "192",
       silabas: [
           Silaba(
               palabras: [
                     Palabra(palabra: "tu es", enGriego: "ty.ᴇ"),
               ],
               pronuciacion: "es",
               explicacion: """
                               En la forma conjugada del verbo être, transcriben el sonido
                           """,
               imagenFonema: "E",
               imagenConsejo: nil
           )
       ],
       excepciones: nil
     )
     */
    
    static let tarjetasI:[Tarjeta] = [
        Tarjeta(audio: "192",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "piano", enGriego: "pja.no"),
                        Palabra(palabra: "chien", enGriego: "ʃjɛ̃")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                 Antes de una vocal, excepto e al final de una palabra transcribe el sonido
                              """,
                  imagenFonema: "j",
                  imagenConsejo: nil
              ),
              Silaba(
                  palabras: [
                        Palabra(palabra: "piano", enGriego: "pja.no"),
                        Palabra(palabra: "chien", enGriego: "ʃjɛ̃")
                  ],
                  pronuciacion: "i",
                  explicacion: """
                                  Antes de una vocal y precedida de
                                  consonante + r o l, transcribe el sonido
                              """,
                  imagenFonema: "i",
                  imagenConsejo: nil
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
                  imagenConsejo: nil
              )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "192",
          silabas: [
              Silaba(
                  palabras: [
                        Palabra(palabra: "tu es", enGriego: "ty.ᴇ"),
                  ],
                  pronuciacion: "es",
                  explicacion: """
                                  En la forma conjugada del verbo être, transcriben el sonido
                              """,
                  imagenFonema: "E",
                  imagenConsejo: nil
              )
          ],
          excepciones: nil
        )
    ]
    
    static let tarjetasO:[Tarjeta] = [
        Tarjeta(audio: "192",
                silabas: [
                    
                   Silaba(palabras: [
                        Palabra(palabra: "pain", enGriego: "pɛ̃"),
                        Palabra(palabra: "ainsi", enGriego: "ɛ̃.si")
                    ],
                      pronuciacion: "ain",
                      explicacion: "Al final de una palabra o seguida de una consonante (excepto m o n), ai transcriben el sonido",
                      imagenFonema: "ɛ̃",
                      imagenConsejo: nil
                   ),
                   
                   Silaba(palabras: [
                       Palabra(palabra: "ainé", enGriego: "ᴇ.nᴇ")
                    ],
                     pronuciacion: "ain",
                     explicacion: "La n forma parte de la sílaba que sigue. Seguidas de una vocal (excepto e al final de una palabra), \n ai transcriben el sonido",
                     imagenFonema: "E",
                     imagenConsejo: "buho"
                   ),
                   
                   Silaba(palabras: [
                       Palabra(palabra: "saine", enGriego: "sᴇn")
                    ],
                     pronuciacion: "-aine",
                     explicacion: "Al final de una palabra, transcriben los sonidos",
                     imagenFonema: "ᴇn",
                     imagenConsejo: nil
                   )
                   
                ],
                excepciones: nil)
    ]
    
    static let tarjetasU:[Tarjeta] = [
    
    ]
    
    static let tarjetasY:[Tarjeta] = [
    
    ]
    
    static let tarjetasB:[Tarjeta] = [
    
    ]
    
    static let tarjetasC:[Tarjeta] = [
    
    ]
    
    static let tarjetasD:[Tarjeta] = [
    
    ]
    
    static let tarjetasF:[Tarjeta] = [
    
    ]
    
    static let tarjetasG:[Tarjeta] = [
    
    ]
    
    static let tarjetasH:[Tarjeta] = [
    
    ]
    
    static let tarjetasJ:[Tarjeta] = [
    
    ]
    
    static let tarjetasK:[Tarjeta] = [
    
    ]
    
    static let tarjetasL:[Tarjeta] = [
    
    ]
    
    static let tarjetasM:[Tarjeta] = [
    
    ]
    
    static let tarjetasN:[Tarjeta] = [
    
    ]
    
    static let tarjetasP:[Tarjeta] = [
    
    ]
    
    static let tarjetasQ:[Tarjeta] = [
    
    ]
    
    static let tarjetasR:[Tarjeta] = [
    
    ]
    
    static let tarjetasS:[Tarjeta] = [
    
    ]
    
    static let tarjetasT:[Tarjeta] = [
    
    ]
    
    static let tarjetasV:[Tarjeta] = [
    
    ]
    
    static let tarjetasW:[Tarjeta] = [
    
    ]
    
    static let tarjetasX:[Tarjeta] = [
    
    ]
    
    static let tarjetasZ:[Tarjeta] = [
    
    ]
    
}
