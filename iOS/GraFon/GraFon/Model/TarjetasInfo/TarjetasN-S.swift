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
              pronuciacion: "-p",
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
              pronuciacion: "-oup",
              explicacion: """
                              Al final de una palabra, p no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
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
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_p_o3",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "temps", enGriego: "tɑ̃"),
                    Palabra(palabra: "corps", enGriego: "koʀ"),
                    Palabra(palabra: "tu romps", enGriego: "ty.ʀõ")
              ],
              pronuciacion: "-ps",
              explicacion: """
                              Al final de una palabra \n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        Tarjeta(audio: "pb_p_o4",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "il corrompt", enGriego: "il.ko.ʀõ")
              ],
              pronuciacion: "-pt",
              explicacion: """
                              Al final de un verbo conjugado no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        Tarjeta(audio: "pb_p_o5",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "appliquer", enGriego: "a.pli.kᴇ")
              ],
              pronuciacion: "-pp-",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "p",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]

    static let tarjetasQ:[Tarjeta] = [
        Tarjeta(audio: "pb_q_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "quatre", enGriego: "katʀ"),
                    Palabra(palabra: "équipe", enGriego: "ᴇ.kip"),
                    Palabra(palabra: "phonétique", enGriego: "fo.nᴇ.tik"),
              ],
              pronuciacion: "qu",
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
        
        Tarjeta(audio: "pb_q_02",
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
              imagenConsejo: "e_retro_varias-letras_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]

    static let tarjetasR:[Tarjeta] = [
        Tarjeta(audio: "pb_r_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "rire", enGriego: "ʀiʀ"),
                    Palabra(palabra: "bar", enGriego: "baʀ")
              ],
              pronuciacion: "r",
              explicacion: """
                              (Excepto en el caso del grupo -er al final de una palabra) \n transcribe el sonido
                          """,
              imagenFonema: "ʀ",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "aimer", enGriego: "ᴇ.mᴇ"),
                    Palabra(palabra: "infirmier", enGriego: "ɛ̃.fir.mjᴇ")
              ],
              pronuciacion: "-er",
              explicacion: """
                              Al final de una palabra \n transcriben el sonido
                          """,
              imagenFonema: "ᴇ",
              imagenConsejo: "e_retro_3Ob_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_r_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "terre", enGriego: "tᴇʀ"),
                    Palabra(palabra: "arrivé", enGriego: "a.ʀi.vᴇ")
              ],
              pronuciacion: "-rr-",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "ʀ",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]

    static let tarjetasS:[Tarjeta] = [
        Tarjeta(audio: "pb_s_o1",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "sa", enGriego: "sa"),
                    Palabra(palabra: "stupide", enGriego: "sty.pid")
              ],
              pronuciacion: "s-",
              explicacion: """
                              Al inicio de una palabra (excepto en el grupo sch-) \n transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "schéma", enGriego: "ʃᴇ.ma")
              ],
              pronuciacion: "sch-",
              explicacion: """
                              Al inicio de una palabra \n \n transcriben el sonido
                          """,
              imagenFonema: "ʃ",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_s_o2",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "base", enGriego: "baz"),
                    Palabra(palabra: "cousine", enGriego: "ku.zin")
              ],
              pronuciacion: "-s-",
              explicacion: """
                              Entre dos vocales
                              (excepto en el grupo res- al inicio de una palabra seguido de una vocal) \n\n transcribe el sonido
                          """,
              imagenFonema: "z",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "resalir", enGriego: "ʀɶ.sa.liʀ"),
                    Palabra(palabra: "resituer", enGriego: "ʀɶ.si.tɥᴇ")
              ],
              pronuciacion: "res-",
              explicacion: """
                              Al inicio de una palabra y seguidas de una vocal, \n \n s transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_s_o3",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "dispute", enGriego: "dis.pyt")
              ],
              pronuciacion: "s",
              explicacion: """
                              Antes de una consonante \n \n transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            
            Silaba(
              palabras: [
                    Palabra(palabra: "éclipse", enGriego: "ᴇ.klips"),
                    Palabra(palabra: "danse", enGriego: "dɑ̃s"),
              ],
              pronuciacion: "-s-",
              explicacion: """
                              Después de una consonante
                              (excepto en el grupo trans- seguido de una vocal) \n \n transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            
            Silaba(
              palabras: [
                    Palabra(palabra: "transitif", enGriego: "tʀɑ̃.zi.tif")
              ],
              pronuciacion: "trans-",
              explicacion: """
                              Seguido de una vocal, \n \n s transcribe el sonido
                          """,
              imagenFonema: "z",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_s_o4",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "gros", enGriego: "gʀo"),
                Palabra(palabra: "bas", enGriego: "ba"),
                Palabra(palabra: "amis", enGriego: "a.mi"),
                Palabra(palabra: "tu parles", enGriego: "ty.paʀl"),
              ],
              pronuciacion: "-s",
              explicacion: """
                              Al final de una palabra \n \n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_s_o5",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "tasse", enGriego: "tas"),
                Palabra(palabra: "stress", enGriego: "stʀᴇs"),
              ],
              pronuciacion: "ss",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_s_o6",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "fascicule", enGriego: "fa.si.kyl"),
                Palabra(palabra: "descendre", enGriego: "dᴇ.sɑ̃.dʀ"),
                Palabra(palabra: "scyphozoaire", enGriego: "si.fo.zo.ᴇʀ")
              ],
              pronuciacion: "sc",
              explicacion: """
                              Seguidas de e, i, y \n \n transcriben el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            
            Silaba(
              palabras: [
                    Palabra(palabra: "scandale", enGriego: "skɑ̃.dal"),
                    Palabra(palabra: "horoscope", enGriego: "o.ʀo.skop"),
                    Palabra(palabra: "sculpture", enGriego: "skyl.tyʀ")
              ],
              pronuciacion: "sc",
              explicacion: """
                              Seguidas de a, o, u \n \n transcriben los sonidos
                          """,
              imagenFonema: "sk",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_s_o7",
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
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
    ]
    
}

