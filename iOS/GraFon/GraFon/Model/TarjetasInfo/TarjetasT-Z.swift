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
                    Palabra(palabra: "*t*able", enGriego: "tabl")
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
                    Palabra(palabra: "invi*té*", enGriego: "ɛ̃.vi.tᴇ"),
                    Palabra(palabra: "sor*ti*e", enGriego: "soʀ.ti"),
                    Palabra(palabra: "nous visi*ti*ons", enGriego: "nu.vi.si.tjõ")
              ],
              pronuciacion: "-t-",
              explicacion: """
                              Seguida de una vocal \n
                              - excepto en el grupo $-tion-$ en sustantivo y adjetivo.\n
                              - excepto en los grupos -tieu-, -tiel-, -tia- \n\n transcribe el sonido
                          """,
              imagenFonema: "t",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "sta*tion*", enGriego: "sta.sjõ"),
                    Palabra(palabra: "na*tion*al", enGriego: "na.sjo.nal"),
                    Palabra(palabra: "supersti*tieu*se", enGriego: "sy.pᴇʀ.sti.sj&Œ&z"),
                    Palabra(palabra: "confiden*tiel*", enGriego: "kõ.fi.dɑ̃.sjᴇl"),
                    Palabra(palabra: "ini*tia*tive", enGriego: "i.ni.sja.tiv")
              ],
              pronuciacion: "-tion-",
              explicacion: """
                            en sustantivo y adjetivo, \n#-tieu-#, \n#-tiel-#, \n#-tia-#, \n\n $t$ transcribe el sonido
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
                    Palabra(palabra: "elles von*t*", enGriego: "ᴇl.võ"),
                    Palabra(palabra: "peti*t*", enGriego: "p&Œ&.ti")
              ],
              pronuciacion: "-t",
              explicacion: """
                              Al final de una palabra \n\n no transcribe ningún sonido
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "sorb*et*", enGriego: "soʀ.bᴇ"),
                    Palabra(palabra: "elle perm*et*", enGriego: "ᴇl.pᴇʀ.mᴇ")
              ],
              pronuciacion: "-et",
              explicacion: """
                              Al final de una palabra \n\n transcriben el sonido
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
                    Palabra(palabra: "asp*ect*", enGriego: "as.pᴇ"),
                    Palabra(palabra: "resp*ect*", enGriego: "ʀᴇs.pᴇ")
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
                    Palabra(palabra: "dir*ect*", enGriego: "di.ʀᴇkt"),
                    Palabra(palabra: "corr*ect*", enGriego: "ko.ʀᴇkt")
              ],
              pronuciacion: "-ect",
              explicacion: """
                              Al final de una palabra y precedidas de una consonante (excepto $p$) \n\n transcriben los sonidos
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
                    Palabra(palabra: "lune*tt*es", enGriego: "ly.nᴇt"),
                    Palabra(palabra: "wa*tt*", enGriego: "wat")
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
                    Palabra(palabra: "*v*êtement", enGriego: "vᴇt.mɑ̃"),
                    Palabra(palabra: "uni*v*ers", enGriego: "y.ni.vᴇʀ"),
                    Palabra(palabra: "a*v*eugle", enGriego: "a.v&Œ&gl")
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
                    Palabra(palabra: "*w*eekend", enGriego: "wi.kᴇnd"),
                    Palabra(palabra: "sand*w*ich", enGriego: "sɑ̃.dwitʃ")
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
                    Palabra(palabra: "intervi*ew*", enGriego: "ɛ̃.tᴇʀ.vju")
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
                    Palabra(palabra: "bungal*ow*", enGriego: "bɛ̃.ga.lo")
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
                    Palabra(palabra: "*x*énophobe", enGriego: "ksᴇ.no.fob")
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
                Palabra(palabra: "pai*x*", enGriego: "pᴇ"),
                Palabra(palabra: "bateau*x*", enGriego: "ba.to"),
                Palabra(palabra: "je veu*x*", enGriego: "ʒ&Œ&.v&Œ&")
              ],
              pronuciacion: "-x",
              explicacion: """
                              Al inicio de una palabra \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2", //NO hay no existe
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_X_02",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "ta*x*i", enGriego: "ta.ksi"),
                Palabra(palabra: "me*x*icaine", enGriego: "mᴇ.ksi.kᴇn"),
                Palabra(palabra: "te*x*te", enGriego: "tᴇkst"),
                Palabra(palabra: "e*x*posé", enGriego: "ᴇ.kspo.zᴇ")
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
                Palabra(palabra: "*exa*men", enGriego: "ᴇ.gza.mɛ̃"),
                Palabra(palabra: "*exh*austif", enGriego: "ᴇ.gzos.tif")
              ],
              pronuciacion: "-x-",
              explicacion: """
                              En los grupos:
                              \n$ex-$ + vocal al inicio de una palabra
                              \n$exh-$ al inicio de una palabra \n\n transcribe los sonidos
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
                    Palabra(palabra: "*z*one", enGriego: "zon"),
                    Palabra(palabra: "bron*z*er", enGriego: "bʀõ.zᴇ")
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
                    Palabra(palabra: "ra*z*", enGriego: "ʀa")
              ],
              pronuciacion: "-z",
              explicacion: """
                              Al final de una palabra (excepto precedida de $t$) \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ch*ez*", enGriego: "ʃᴇ"),
                    Palabra(palabra: "vous parl*ez*", enGriego: "vu.paʀ.lᴇ")
              ],
              pronuciacion: "-ez",
              explicacion: """
                              Al final de una palabra \n\n no transcriben el sonido
                          """,
              imagenFonema: "ᴇ",
              imagenConsejo: "z_retro_3Bb_n2",
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "quar*tz*", enGriego: "kwaʀts")
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
                Palabra(palabra: "pi*zz*a", enGriego: "pi.dza"),
                Palabra(palabra: "papara*zz*i", enGriego: "pa.pa.ʀa.dzi")
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
