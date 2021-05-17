//
//  DataPalabrasEnBoca.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-09.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension Data{
    static let sinSonido: String = "ico_sin-sonido_n2"
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
              tarjetas: nil
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 2,
              letra: "a",
              imagenHoja: "2a_n2",
              tarjetas: [
                
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
                            explicacion: "Al inal de una palabra, transcribe los sonidos",
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
                    excepciones: [Palabra(palabra: "coach", enGriego: "kot∫"),
                                  Palabra(palabra: "goal", enGriego: "gol"),
                                  Palabra(palabra: "toast", enGriego: "tost")]
                ),
                
                ]
        ),
        Letra(identificador: 3,
              letra: "e",
              imagenHoja: "2b_n2",
              tarjetas: [
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
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
                                      Palabra(palabra: "devoir", enGriego: "dŒ.vwaR")
                                ],
                                pronuciacion: "-e-",
                                explicacion: """
                                                Cuando la letra e:
                                                Está en la primera sílaba de una palabra y
                                                Le sigue una sola constante (excepto x) más una
                                                vocal transcribe el sonido  CE
                                            """,
                                imagenFonema: "",
                                imagenConsejo: nil
                            ),
                            Silaba(
                                palabras: [
                                      Palabra(palabra: "maxicain", enGriego: "mE.ksi.kĒ")
                                ],
                                pronuciacion: "e",
                                explicacion: "Seguida de x transcribe el sonido \n E",
                                imagenFonema: "",
                                imagenConsejo: nil
                            )
                            ],
                            excepciones: nil
                    ),
             ]
        ),
        Letra(identificador: 4,
              letra: "i",
              imagenHoja: "2c_n2",
              tarjetas: nil
        ),
        Letra(identificador: 5,
              letra: "o",
              imagenHoja: "2d_n2",
              tarjetas: nil
        ),
        Letra(identificador: 6,
              letra: "u",
              imagenHoja: "2e_n2",
              tarjetas: nil
        ),
        Letra(identificador: 7,
              letra: "y",
              imagenHoja: "2f_n2",
              tarjetas: nil
        ),
        Letra(identificador: 0,
              letra: "",
              imagenHoja: "",
              tarjetas: nil
        ),
        Letra(identificador: 8,
              letra: "b",
              imagenHoja: "3b_n2",
              tarjetas: nil
        ),
        Letra(identificador: 9,
              letra: "c",
              imagenHoja: "3c_n2",
              tarjetas: nil
        ),
        Letra(identificador: 10,
              letra: "d",
              imagenHoja: "3d_n2",
              tarjetas: nil
        ),
        Letra(identificador: 11,
              letra: "f",
              imagenHoja: "3e_n2",
              tarjetas: nil
        ),
        Letra(identificador: 12,
              letra: "g",
              imagenHoja: "3f_n2",
              tarjetas: nil
        ),
        Letra(identificador: 13,
              letra: "h",
              imagenHoja: "4a_n2",
              tarjetas: nil
        ),
        Letra(identificador: 14,
              letra: "j",
              imagenHoja: "4b_n2",
              tarjetas: nil
        ),
        Letra(identificador: 15,
              letra: "k",
              imagenHoja: "4c_n2",
              tarjetas: nil
        ),
        Letra(identificador: 16,
              letra: "l",
              imagenHoja: "4d_n2",
              tarjetas: nil
        ),
        Letra(identificador: 17,
              letra: "m",
              imagenHoja: "4e_n2",
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
        Letra(identificador: 18,
              letra: "n",
              imagenHoja: "5b_n2",
              tarjetas: nil
        ),
        Letra(identificador: 19,
              letra: "p",
              imagenHoja: "5c_n2",
              tarjetas: nil
        ),
        Letra(identificador: 20,
              letra: "q",
              imagenHoja: "5d_n2",
              tarjetas: nil
        ),
        Letra(identificador: 21,
              letra: "r",
              imagenHoja: "5e_n2",
              tarjetas: nil
        ),
        Letra(identificador: 22,
              letra: "s",
              imagenHoja: "5f_n2",
              tarjetas: nil
        ),
        Letra(identificador: 23,
              letra: "t",
              imagenHoja: "6a_n2",
              tarjetas: nil
        ),
        Letra(identificador: 24,
              letra: "v",
              imagenHoja: "6b_n2",
              tarjetas: nil
        ),
        Letra(identificador: 25,
              letra: "w",
              imagenHoja: "6c_n2",
              tarjetas: nil
        ),
        Letra(identificador: 26,
              letra: "x",
              imagenHoja: "6d_n2",
              tarjetas: nil
        ),
        Letra(identificador: 27,
              letra: "z",
              imagenHoja: "6e_n2",
              tarjetas: nil
        )
    ]
}
