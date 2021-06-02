//
//  TarjetasN-S.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension tarjetas{
    
    static let tarjetasN:[Tarjeta] = [
        
        Tarjeta(audio: "pb_n_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "née", enGriego: "nᴇ"),
                    Palabra(palabra: "nuage", enGriego: "nɥaʒ")
              ],
              pronuciacion: "n-",
              explicacion: """
                              Al incio de una palabra transcribe el sonido
                          """,
              imagenFonema: "n",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_n_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "animaux", enGriego: "a.ni.mo"),
                    Palabra(palabra: "une", enGriego: "yn")
              ],
              pronuciacion: "-n-",
              explicacion: """
                              Entre vocales transcribe el sonido
                          """,
              imagenFonema: "n",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "somnoler", enGriego: "som.no.lᴇ"),
                    Palabra(palabra: "apnée", enGriego: "a.pnᴇ")
              ],
              pronuciacion: "-n-",
              explicacion: """
                              Después de una consonante transcribe el sonido
                          """,
              imagenFonema: "n",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_n_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "année", enGriego: "a.nᴇ"),
                    Palabra(palabra: "connu", enGriego: "ko.ny")
              ],
              pronuciacion: "-nn-",
              explicacion: """
                              Entre vocales (excepto en el grupo enn- al inicio de una palabra) transcriben el sonido
                          """,
              imagenFonema: "n",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ennuyeux", enGriego: "ɑ̃.nɥi.jɶ"),
                    Palabra(palabra: "ennui", enGriego: "ɑ̃.nɥi")
              ],
              pronuciacion: "enn-",
              explicacion: """
                              Al inicio de una palabra, en transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: "La segunda n forma parte de la sílaba que sigue."
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ils prennent", enGriego: "il.pʀᴇn"),
                    Palabra(palabra: "ancienne", enGriego: "ɑ̃.sjᴇn")
              ],
              pronuciacion: "enne",
              explicacion: """
                              transcriben los sonidos
                          """,
              imagenFonema: "ᴇn",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_n_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "plan", enGriego: "plɑ̃"),
                    Palabra(palabra: "chant", enGriego: "ʃɑ̃")
              ],
              pronuciacion: "an",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto n) transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ton", enGriego: "tõ"),
                    Palabra(palabra: "pont", enGriego: "põ")
              ],
              pronuciacion: "an",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto n) transcriben el sonido
                          """,
              imagenFonema: "õ",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "pain", enGriego: "pɛ̃"),
                    Palabra(palabra: "plein", enGriego: "plɛ̃"),
                    Palabra(palabra: "vin", enGriego: "vɛ̃"),
                    Palabra(palabra: "un", enGriego: "ɛ̃"),
                    Palabra(palabra: "syntaxe", enGriego: "sɛ̃.taks")
              ],
              pronuciacion: "ain, ein, in, un o yn",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto n) transcriben el sonido
                          """,
              imagenFonema: "ɛ̃",
              imagenConsejo: "e_retro_varias-letras_n2",
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "loin", enGriego: "lwɛ̃"),
                    Palabra(palabra: "joindre", enGriego: "ʒwɛ̃dʀ")
              ],
              pronuciacion: "oin",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto n)
                          """,
              imagenFonema: "wɛ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_n_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "entre", enGriego: "ɑ̃tʀ"),
                    Palabra(palabra: "je pense", enGriego: "jɶ.pɑ̃s"),
              ],
              pronuciacion: "en",
              explicacion: """
                              Seguidas de una consonante (excepto en el grupo -ent al final de una palabra) transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "examen", enGriego: "ᴇ.gza.mɛ̃"),
                    Palabra(palabra: "bien", enGriego: "bjɛ̃"),
              ],
              pronuciacion: "-en",
              explicacion: """
                              Al final de una palabra transcriben el sonido
                          """,
              imagenFonema: "ɛ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_n_06",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "elles traversent", enGriego: "ᴇl.tʀa.vᴇʀs"),
                    Palabra(palabra: "elles parlaient", enGriego: "ᴇl.paʀ.lᴇ"),
              ],
              pronuciacion: "-ent",
              explicacion: """
                              Al final de un verbo conjugado en la tercera persona del plural no transcriben ningún sonido
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "il vient", enGriego: "il.vjɛ̃")
              ],
              pronuciacion: "-ent",
              explicacion: """
                              Al final de un verbo conjugado en la tercera persona del singular transcriben el sonido
                          """,
              imagenFonema: "ɛ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "cent", enGriego: "sɑ̃"),
                    Palabra(palabra: "patient", enGriego: "pa.sjɑ̃"),
                    Palabra(palabra: "doucement", enGriego: "dus.mɑ̃")
              ],
              pronuciacion: "-ent",
              explicacion: """
                              Al final de un sustantivo, un adjetivo o un adverbio transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_n_07",
          silabas: [
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

    static let tarjetasP:[Tarjeta] = [
        
        Tarjeta(audio: "pb_p_o1",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "papa", enGriego: "pa.pa")
              ],
              pronuciacion: "p",
              explicacion: """
                              Seguida de vocal transcribe el sonido
                          """,
              imagenFonema: "p",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "place", enGriego: "plas")
              ],
              pronuciacion: "p",
              explicacion: """
                              Seguida de consonante excepto h, -ps al final de una palabra o -pt al final de un verbo conjugado transcribe el sonido
                          """,
              imagenFonema: "p",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "photo", enGriego: "fo.to")
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
        
        Tarjeta(audio: "pb_p_o2",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "stop", enGriego: "stop")
              ],
              pronuciacion: "-oup",
              explicacion: """
                              Al final de una palabra excepto en los grupos -oup o -amp transcribe el sonido
                          """,
              imagenFonema: "p",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "beaucoup", enGriego: "bo.ku")
              ],
              pronuciacion: "-amp",
              explicacion: """
                              Al final de una palabra, p no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "champ", enGriego: "ʃɑ̃")
              ],
              pronuciacion: "-amp",
              explicacion: """
                              Al final de una palabra, p no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]

    static let tarjetasQ:[Tarjeta] = [

    ]

    static let tarjetasR:[Tarjeta] = [

    ]

    static let tarjetasS:[Tarjeta] = [

    ]
    
}

/*
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
*/
