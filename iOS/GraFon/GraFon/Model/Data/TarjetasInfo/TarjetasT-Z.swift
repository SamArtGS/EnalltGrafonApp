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
        Tarjeta(audio: "pb_T_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*t*able", enGriego: "tabl")
              ],
              pronuciacion: "t-",
              explicacion: """
                              Al inicio de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "t",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_T_02",
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
                              - excepto en el grupo $-tion-$ en sustantivo y adjetivo\n
                              - excepto en los grupos $-tieu-$, $-tiel-$, $-tia-$ \n\n transcribe el sonido
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
                            en sustantivo y adjetivo, \n%-tieu-%, \n%-tiel-%, \n%-tia-%, \n\n $t$ transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "acrobatie", enGriego: "a.kʀo.ba.si"),
            Palabra(palabra: "aristocratie", enGriego: "a.ʀi.sto.kʀa.si"),
            Palabra(palabra: "bureaucratie", enGriego: "by.ʀo.kʀa.si"),
            Palabra(palabra: "démocratie", enGriego: "dᴇ.mo.kʀa.si"),
            Palabra(palabra: "diplomatie", enGriego: "di.plo.ma.si"),
            Palabra(palabra: "idiotie", enGriego: "i.djo.si"),
            Palabra(palabra: "ineptie", enGriego: "i.nᴇ.psi"),
            Palabra(palabra: "minutie", enGriego: "mi.ny.si"),
            Palabra(palabra: "péripétie", enGriego: "pᴇ.ʀi.pᴇ.si"),
            Palabra(palabra: "prophétie", enGriego: "pʀo.fᴇ.si"),
            Palabra(palabra: "suprématie", enGriego: "sy.pʀᴇ.ma.si"),
            Palabra(palabra: "technocratie", enGriego: "tᴇ.kno.kʀa.si"),
            Palabra(palabra: "balbutier", enGriego: "bal.by.sjᴇ"),
            Palabra(palabra: "initier", enGriego: "i.ni.sjᴇ"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "haïtien", enGriego: "a.i.sjɛ̃"),
            Palabra(palabra: "tahitien", enGriego: "ta.i.sjɛ̃"),
            Palabra(palabra: "égyptien", enGriego: "ᴇ.ʒip.sjɛ̃"),
            Palabra(palabra: "vénitien", enGriego: "vᴇ.ni.sjɛ̃"),
            Palabra(palabra: "patient", enGriego: "pa.sjɑ̃"),
            Palabra(palabra: "impatient", enGriego: "ɛ̃.pa.sjɑ̃"),
            Palabra(palabra: " ", enGriego: " "),
            
            Palabra(palabra: "bestial", enGriego: "bᴇs.tjal"),
            Palabra(palabra: "bestiaire", enGriego: "bᴇs.tjᴇʀ"),
            Palabra(palabra: "christianisme ", enGriego: "kʀis.tja.nism"),
            Palabra(palabra: "vestiaire", enGriego: "vᴇs.tjᴇʀ"),
            Palabra(palabra: " ", enGriego: " "),
            
            Palabra(palabra: "question", enGriego: "kᴇs.tjõ"),
            Palabra(palabra: "digestion", enGriego: "di.ʒᴇs.tjõ"),
            Palabra(palabra: "suggestion", enGriego: "sy.gʒᴇs.tjõ"),
            Palabra(palabra: "combustion", enGriego: "kõ.bys.tjõ"),
            Palabra(palabra: "autogestion", enGriego: "o.to.ʒᴇs.tjõ"),
            Palabra(palabra: " ", enGriego: " "),
          ]
        ),
        
        Tarjeta(audio: "pb_t_03",
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
          excepciones: [
          Palabra(palabra: "mat", enGriego: "mat"),
          Palabra(palabra: "sept", enGriego: "sᴇt"),
          Palabra(palabra: "net", enGriego: "nᴇt"),
          Palabra(palabra: "dot", enGriego: "dot"),
          Palabra(palabra: "aout ", enGriego: "ut"),
        
          
          Palabra(palabra: "but", enGriego: "byt"),
          Palabra(palabra: "brut", enGriego: "bʀyt"),
          Palabra(palabra: "chut", enGriego: "∫yt"),
          Palabra(palabra: "zut", enGriego: "zyt")
        ]
        ),
        
        Tarjeta(audio: "pb_T_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "asp*ect*", enGriego: "as.pᴇ"),
                    Palabra(palabra: "resp*ect*", enGriego: "ʀᴇs.pᴇ")
              ],
              pronuciacion: "-ect",
              explicacion: """
                              Al final de una palabra y precedidas de $p$\n\n transcriben el sonido
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
        
        Tarjeta(audio: "pb_T_05",
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
        Tarjeta(audio: "pb_v_01",
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
        Tarjeta(audio: "pb_w_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*w*eekend", enGriego: "wi.kᴇnd"),
                    Palabra(palabra: "sand*w*ich", enGriego: "sɑ̃.dwit∫")
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
                              Al final de una palabra \n\n transcriben el sonido
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
                              Al final de una palabra \n\n transcriben el sonido
                          """,
              imagenFonema: "o",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "wagon", enGriego: "va.gõ"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "crawl", enGriego: "kʀol"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "bowling", enGriego: "bu.liŋ"),
            Palabra(palabra: "clown", enGriego: "klun"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "interviewer", enGriego: "ɛ̃.tᴇʀ.vju.vᴇ"),
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "rickshaw", enGriego: "ʀi.k∫o")
          ]
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
                              Al final de una palabra \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2", //NO hay no existe
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "six", enGriego: "sis"),
            Palabra(palabra: "dix", enGriego: "dis"),
            Palabra(palabra: "coccyx", enGriego: "ko.ksis"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "max", enGriego: "maks"),
            Palabra(palabra: "inox", enGriego: "i.noks"),
            Palabra(palabra: "silex", enGriego: "si.lᴇks"),
            Palabra(palabra: "onyx", enGriego: "o.niks"),
            Palabra(palabra: "latex", enGriego: "la.tᴇks"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "pharynx", enGriego: "fa.ʀɛ̃ks"),
            Palabra(palabra: "cortex", enGriego: "koʀ.tᴇks"),
            Palabra(palabra: "larynx", enGriego: "la.ʀɛ̃ks"),
            Palabra(palabra: "thorax", enGriego: "to.ʀaks"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "index", enGriego: "ɛ̃.dᴇks"),
            Palabra(palabra: "furax", enGriego: "fy.ʀaks"),
            Palabra(palabra: "codex", enGriego: "ko.dᴇks"),
            Palabra(palabra: "relax", enGriego: "ʀᴇ.laks"),
            Palabra(palabra: "reflex", enGriego: "ʀᴇ.flᴇks"),
            Palabra(palabra: "duplex", enGriego: "dy.plᴇks"),
            Palabra(palabra: "climax", enGriego: "kli.maks")
          ]
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
                              Excepto en los grupos:\n
                              $ex-$ + vocal al inicio de una palabra\n
                              $exh-$ al inicio de una palabra
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
          excepciones: [
            Palabra(palabra: "soixante", enGriego: "swa.sɑ̃t"),
            Palabra(palabra: "deuxième", enGriego: "d&Œ&.zjᴇm"),
            Palabra(palabra: "sixième", enGriego: "si.zjᴇm"),
            Palabra(palabra: "dixième", enGriego: "di.zjᴇm"),
            Palabra(palabra: "dix-huit", enGriego: "di.zyit"),
            Palabra(palabra: "dix-neuf", enGriego: "di.zn&Œ&f"),
            Palabra(palabra: "hexagone", enGriego: "ᴇ.gza.gon")
          ]
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
                    Palabra(palabra: "ch*ez*", enGriego: "∫ᴇ"),
                    Palabra(palabra: "vous parl*ez*", enGriego: "vu.paʀ.lᴇ")
              ],
              pronuciacion: "-ez",
              explicacion: """
                              Al final de una palabra \n\n transcriben el sonido
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
          excepciones: [
            Palabra(palabra: "gaz", enGriego: "gaz")
          ]
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
          excepciones: [
            Palabra(palabra: "jazz", enGriego: "dʒaz"),
            Palabra(palabra: "jacuzzi", enGriego: "ʒa.ky.zi"),
            Palabra(palabra: "puzzle", enGriego: "p&Œ&zl")
          ]
        ),
        
        
    ]
    
}
