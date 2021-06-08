//
//  TarjetasT-Z.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-19.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension tarjetas{
    
    static let tarjetasT:[Tarjeta] = [
        Tarjeta(audio: "Pb_T_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "table", enGriego: "tabl")
              ],
              pronuciacion: "t-",
              explicacion: """
                              Al inicio de una palabra transcribe el sonido
                          """,
              imagenFonema: "t",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "Pb_T_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "invité", enGriego: "ɛ̃.vi.tᴇ"),
                    Palabra(palabra: "sortie", enGriego: "soʀ.ti"),
                    Palabra(palabra: "nous visitions", enGriego: "nu.vi.si.tjõ")
              ],
              pronuciacion: "-t-",
              explicacion: """
                              Seguida de una vocal
                              - excepto en el grupo -tion- en sustantivo y adjetivo
                              - excepto en los grupos -tieu-, -tiel-, -tia- \n \n transcribe el sonido
                          """,
              imagenFonema: "t",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "station", enGriego: "sta.sjõ"),
                    Palabra(palabra: "national", enGriego: "na.sjo.nal"),
                    Palabra(palabra: "superstitieuse", enGriego: "sy.pᴇʀ.sti.sjɶz"),
                    Palabra(palabra: "confidentiel", enGriego: "kõ.fi.dɑ̃.sjᴇl"),
                    Palabra(palabra: "initiative", enGriego: "i.ni.sja.tiv")
              ],
              pronuciacion: "t-",
              explicacion: """
                              -tion- en sustantivo y adjetivo, -tieu-, -tiel-, -tia-, \n\n t transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "Pb_T_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "elles vont", enGriego: "ᴇl.võ"),
                    Palabra(palabra: "petit", enGriego: "pɶ.ti")
              ],
              pronuciacion: "-t",
              explicacion: """
                              Al final de una palabra no transcribe ningún sonido
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "sorbet", enGriego: "soʀ.bᴇ"),
                    Palabra(palabra: "elle permet", enGriego: "ᴇl.pᴇʀ.mᴇ")
              ],
              pronuciacion: "-et",
              explicacion: """
                              Al final de una palabra transcriben el sonido
                          """,
              imagenFonema: "ᴇ",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "Pb_T_04",
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
              imagenConsejo: nil,
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
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "Pb_T_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "lunettes", enGriego: "ly.nᴇt"),
                    Palabra(palabra: "watt", enGriego: "wat")
              ],
              pronuciacion: "tt",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "t",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]

    static let tarjetasV:[Tarjeta] = [
        Tarjeta(audio: "pb_u_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "vêtement", enGriego: "vᴇt.mɑ̃"),
                    Palabra(palabra: "univers", enGriego: "y.ni.vᴇʀ"),
                    Palabra(palabra: "aveugle", enGriego: "a.vɶgl")
              ],
              pronuciacion: "v",
              explicacion: """
                              transcribe el sonido
                          """,
              imagenFonema: "v",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]
    
    static let tarjetasW:[Tarjeta] = [
        Tarjeta(audio: "pb_w_o1",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "weekend", enGriego: "wi.kᴇnd"),
                    Palabra(palabra: "sandwich", enGriego: "sɑ̃.dwitʃ")
              ],
              pronuciacion: "w",
              explicacion: """
                              Excepto al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "w",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "interview", enGriego: "ɛ̃.tᴇʀ.vju")
              ],
              pronuciacion: "-ew",
              explicacion: """
                              Al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "u",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "bungalow", enGriego: "bɛ̃.ga.lo")
              ],
              pronuciacion: "-ow",
              explicacion: """
                              Al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "o",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
    ]
    
    
    static let tarjetasX:[Tarjeta] = [
        Tarjeta(audio: "pb_X_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "xénophobe", enGriego: "ksᴇ.no.fob")
              ],
              pronuciacion: "x",
              explicacion: """
                              Al inicio de una palabra \n\n transcribe los sonidos
                          """,
              imagenFonema: "ks",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                Palabra(palabra: "paix", enGriego: "pᴇ"),
                Palabra(palabra: "bateaux", enGriego: "ba.to"),
                Palabra(palabra: "je veux", enGriego: "ʒɶ.vɶ")
              ],
              pronuciacion: "-x",
              explicacion: """
                              Al inicio de una palabra \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_X_02",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "taxi", enGriego: "ta.ksi"),
                Palabra(palabra: "mexicaine", enGriego: "mᴇ.ksi.kᴇn"),
                Palabra(palabra: "texte", enGriego: "tᴇkst"),
                Palabra(palabra: "exposé", enGriego: "ᴇ.kspo.zᴇ")
              ],
              pronuciacion: "-x-",
              explicacion: """
                              Excepto en los grupos:
                              ex - + vocal al inicio de una palabra
                              exh- al inicio de una palabra
                          \n\n transcribe los sonidos
                          """,
              imagenFonema: "ks",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                Palabra(palabra: "examen", enGriego: "ᴇ.gza.mɛ̃"),
                Palabra(palabra: "exhaustif", enGriego: "ᴇ.gzos.tif")
              ],
              pronuciacion: "-x-",
              explicacion: """
                              En los grupos:
                              ex - + vocal al inicio de una palabra
                              exh- al inicio de una palabra \n\n no transcribe los sonidos
                          """,
              imagenFonema: "gz",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]
    
    
    static let tarjetasZ:[Tarjeta] = [
        
        Tarjeta(audio: "pb_z_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "zone", enGriego: "zon"),
                    Palabra(palabra: "bronzer", enGriego: "bʀõ.zᴇ")
              ],
              pronuciacion: "z",
              explicacion: """
                              Excepto al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "z",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_z_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "raz", enGriego: "ʀa")
              ],
              pronuciacion: "-z",
              explicacion: """
                              Al final de una palabra (excepto precedida de t) \n \n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "chez", enGriego: "ʃᴇ"),
                    Palabra(palabra: "vous parlez", enGriego: "vu.paʀ.lᴇ")
              ],
              pronuciacion: "-ez",
              explicacion: """
                              Al final de una palabra \n \n no transcriben el sonido
                          """,
              imagenFonema: "ᴇ",
              imagenConsejo: "z_retro_3Bb_n2",
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "quartz", enGriego: "kwaʀts")
              ],
              pronuciacion: "-tz",
              explicacion: """
                             Al final de una palabra \n\n transcriben los sonidos
                          """,
              imagenFonema: "ts",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_z_03",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "pizza", enGriego: "pi.dza"),
                Palabra(palabra: "paparazzi", enGriego: "pa.pa.ʀa.dzi")
              ],
              pronuciacion: "-zz-",
              explicacion: """
                              transcriben los sonidos
                          """,
              imagenFonema: "dz",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
    ]
    
}
