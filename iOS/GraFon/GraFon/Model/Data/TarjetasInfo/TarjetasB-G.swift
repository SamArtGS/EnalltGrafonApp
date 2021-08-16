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
                    Palabra(palabra: "*b*leu", enGriego: "bl&Œ&"),
                    Palabra(palabra: "ta*b*le", enGriego: "tabl"),
                    Palabra(palabra: "clu*b*", enGriego: "kl&Œ&b"),
              ],
              pronuciacion: "b",
              explicacion: """
                              (Excepto antes de $s$ o $t$) \n\n transcribe el sonido
                          """,
              imagenFonema: "b",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "plomb", enGriego: "plõ")
          ]
        ),
        
        Tarjeta(audio: "pb_b_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "a*bs*ent", enGriego: "a.psɑ̃")
              ],
              pronuciacion: "-bs-",
              explicacion: """
                              transcriben los sonidos
                          """,
              imagenFonema: "ps",
              imagenConsejo: "b_retro_3Bb_n2",
              textodeAbajo: nil
            ),
            Silaba(
                palabras: [
                      Palabra(palabra: "o*bt*enir", enGriego: "o.pt&Œ&.niʀ")
                ],
                pronuciacion: "-bt-",
                explicacion: """
                                transcriben los sonidos
                            """,
                imagenFonema: "pt",
                imagenConsejo: nil,
                textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_b_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "sa*bb*atique", enGriego: "sa.ba.tik")
              ],
              pronuciacion: "-bb-",
              explicacion: """
                              transcriben el sonido
                          """,
              imagenFonema: "b",
              imagenConsejo: nil, // ME FALTA LA IMAGEN DE LAS OFERTA 2X1
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
                    Palabra(palabra: "*caca*o", enGriego: "ka.ka.o")
              ],
              pronuciacion: "c",
              explicacion: """
                              Seguida de $a$, $o$, $u$ \n\n transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*ceci*", enGriego: "s&Œ&.si")
              ],
              pronuciacion: "c",
              explicacion: """
                              Seguida de $e$, $i$, $y$, \n\n transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "o*ct*obre", enGriego: "ok.tobʀ")
              ],
              pronuciacion: "c",
              explicacion: """
                              Seguida de una consonante \n\n transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "sa*c*", enGriego: "sak")
              ],
              pronuciacion: "-c",
              explicacion: """
                              Al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "second", enGriego: "s&Œ&.gõ"),
            Palabra(palabra: "seconde", enGriego: "sɶ.gõd"),
            Palabra(palabra: "tabac", enGriego: "ta.ba"),
            Palabra(palabra: "estomac", enGriego: "ᴇs.to.ma"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "caoutchouc", enGriego: "kau.tʃu"),
            Palabra(palabra: "croc", enGriego: "kʀo"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "blanc", enGriego: "blɑ̃"),
            Palabra(palabra: "franc", enGriego: "fʀɑ̃"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "tronc", enGriego: "tʀõ"),
            Palabra(palabra: "porc", enGriego: "poʀ"),
          ]
        ),
        
        Tarjeta(audio: "pb_c_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "a*cco*rd", enGriego: "a.koʀ")
              ],
              pronuciacion: "-cc-",
              explicacion: """
                              Seguidas de $a$, $o$, $u$ \n\n transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "a*cci*dent", enGriego: "a.ksi.dɑ̃")
              ],
              pronuciacion: "-cc-",
              explicacion: """
                              Seguidas de $e$, $i$, $y$ \n\n transcriben los sonidos
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
                    Palabra(palabra: "*scè*ne", enGriego: "sᴇn")
              ],
              pronuciacion: "sc",
              explicacion: """
                              Seguidas de $e$, $i$, $y$ \n\n transcriben el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "e*sca*lier", enGriego: "ᴇ.ska.ljᴇ")
              ],
              pronuciacion: "sc",
              explicacion: """
                             Seguidas de $a$, $o$, $u$ \n\n transcriben los sonidos
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
                    Palabra(palabra: "*cha*t", enGriego: "ʃa")
              ],
              pronuciacion: "ch",
              explicacion: """
                              Seguidas de una vocal \n\n transcriben el sonido
                          """,
              imagenFonema: "ʃ",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "te*chn*ologie", enGriego: "tᴇ.kno.lo.ʒi")
              ],
              pronuciacion: "-ch-",
              explicacion: """
                             Seguidas de una consonante \n\n transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*psych*ologie", enGriego: "psi.ko.lo.ʒi")
              ],
              pronuciacion: "-ch-",
              explicacion: """
                            Precedidas de $psy$ \n\n transcriben el sonido
                          """,
              imagenFonema: "k",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
          
            Palabra(palabra: "chaos", enGriego: "ka.o"),
            Palabra(palabra: "charisme", enGriego: "ka.ʀism"),
            Palabra(palabra: "choléra", enGriego: "ko.lᴇ.ʀa"),
            Palabra(palabra: "chorale", enGriego: "ko.ʀal"),
            Palabra(palabra: "archaïque", enGriego: "aʀ.ka.ik"),
            Palabra(palabra: "archéologie", enGriego: "aʀ.kᴇo.lo.ʒi"),
            Palabra(palabra: "orchestre", enGriego: "oʀ.kᴇstʀ"),
            Palabra(palabra: "orchidée", enGriego: "oʀ.ki.dᴇ"),
            Palabra(palabra: "écho", enGriego: "ᴇ.ko"),
            Palabra(palabra: "sandwich", enGriego: "sɑ̃.dwiʃ"),
            Palabra(palabra: "scotch", enGriego: "skotʃ"),
            Palabra(palabra: "psychique", enGriego: "psi.ʃik"),
            Palabra(palabra: "psychisme", enGriego: "psi.ʃism"),
            Palabra(palabra: "psyché", enGriego: "psi.ʃᴇ")
          
          ]
        ),
        
        Tarjeta(audio: "pb_c_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "ti*ck*et", enGriego: "ti.kᴇ"),
                    Palabra(palabra: "ro*ck*", enGriego: "ʀok")
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
                    Palabra(palabra: "*sch*éma", enGriego: "ʃᴇ.ma"),
                    Palabra(palabra: "ha*sch*ich", enGriego: "a.ʃiʃ"),
                    Palabra(palabra: "goula*sch*", enGriego: "gu.laʃ")
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
                    Palabra(palabra: "a*cqu*érir", enGriego: "a.kᴇ.ʀiʀ"),
                    Palabra(palabra: "gre*cqu*e", enGriego: "gʀᴇk")
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
                    Palabra(palabra: "as*pect*", enGriego: "as.pᴇ"),
                    Palabra(palabra: "res*pect*", enGriego: "ʀᴇs.pᴇ")
              ],
              pronuciacion: "-ect",
              explicacion: """
                              Al final de una palabra y precedidas de $p$ \n\n transcriben el sonido
                          """,
              imagenFonema: "ᴇ",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "dir*ect*", enGriego: "di.ʀᴇkt"),
                    Palabra(palabra: "cor*rect*", enGriego: "ko.ʀᴇkt")
              ],
              pronuciacion: "-ect",
              explicacion: """
                              Al final de una palabra y precedidas de una consonante (excepto $p$) \n\n transcriben los sonidos
                          """,
              imagenFonema: "ᴇkt",
              imagenConsejo: nil, //ME FALTA LA IMAGEN DEL OFERTÓN 3X1
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "cont*act*", enGriego: "kõ.takt")
              ],
              pronuciacion: "act",
              explicacion: """
                              transcriben los sonidos
                          """,
              imagenFonema: "akt",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_c_09",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*ç*a", enGriego: "sa"),
                    Palabra(palabra: "gar*ç*on", enGriego: "gaʀ.sõ"),
                    Palabra(palabra: "re*ç*u", enGriego: "ʀ&Œ&.sy")
              ],
              pronuciacion: "ç",
              explicacion: """
                              transcribe el sonido
                          """,
              imagenFonema: "s",
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
                    Palabra(palabra: "*d*ate", enGriego: "dat"),
                    Palabra(palabra: "étu*d*e", enGriego: "ᴇ.tyd")
              ],
              pronuciacion: "d",
              explicacion: """
                              Excepto al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "d",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "nor*d*", enGriego: "noʀ")
              ],
              pronuciacion: "-d",
              explicacion: """
                              Al final de una palabra \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil, //ME FALTÓ LA DE NI SIQUIERA LO INTENTES
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "stand", enGriego: "stɑ̃d"),
            Palabra(palabra: "sud", enGriego: "syd")
          ]
        ),
        
        
        Tarjeta(audio: "pb_d_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "a*dd*ition", enGriego: "a.di.sjõ")
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
                    Palabra(palabra: "poi*ds*", enGriego: "pwa")
              ],
              pronuciacion: "-ds",
              explicacion: """
                              Al final de una palabra \n\n no transcriben ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2", //PARECE QUE NO HAY "MEME" DE LISA
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        )
    ]
    
    
    static let tarjetasF:[Tarjeta] = [
        Tarjeta(audio: "pb_f_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*f*emme", enGriego: "fam"),
                Palabra(palabra: "che*f*", enGriego: "ʃᴇf")
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
          excepciones: [
            Palabra(palabra: "clef", enGriego: "klᴇ"),
            Palabra(palabra: "nerf", enGriego: "nᴇʀ"),
            Palabra(palabra: "serf", enGriego: "sᴇʀ"),
            Palabra(palabra: "cerf", enGriego: "sᴇʀ"),
            Palabra(palabra: "chef-d’œuvre", enGriego: "ʃᴇ.d&Œ&vʀ"),
            
            Palabra(palabra: "", enGriego: ""),
            Palabra(palabra: "œufs", enGriego: "&Œ&"),
            Palabra(palabra: "bœufs", enGriego: "b&Œ&")
          ]
        ),
        
        Tarjeta(audio: "pb_f_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "o*ff*rir", enGriego: "o.fʀiʀ"),
                    Palabra(palabra: "blu*ff*", enGriego: "bl&Œ&f")
              ],
              pronuciacion: "ff",
              explicacion: """
                              transcriben el sonido
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
                    Palabra(palabra: "*ga*re", enGriego: "gaʀ"),
                    Palabra(palabra: "*go*ut", enGriego: "gu"),
                    Palabra(palabra: "ai*gu*", enGriego: "ᴇ.gy"),
                    Palabra(palabra: "ai*gü*e", enGriego: "ᴇ.gy"),
                    Palabra(palabra: "é*gl*ise", enGriego: "ᴇ.gliz")
              ],
              pronuciacion: "g",
              explicacion: """
                              Seguida de $a$, $o$, $u$, $ü$\n
                              o de una consonante (excepto $n$) \n\n transcribe el sonido
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
                    Palabra(palabra: "ca*ge*", enGriego: "kaʒ"),
                    Palabra(palabra: "*gi*rafe", enGriego: "ʒi.ʀaf"),
                    Palabra(palabra: "*gy*m", enGriego: "ʒim")
              ],
              pronuciacion: "g",
              explicacion: """
                              Seguida de  $e$, $i$, $y$ \n\n transcribe el sonido
                          """,
              imagenFonema: "ʒ",
              imagenConsejo: nil, //NO VEO IMAGEN DE RASURADORA :c
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "geisha", enGriego: "gᴇi.ʃa"),
            Palabra(palabra: "gestalt", enGriego: "gᴇʃ.talt"),
            Palabra(palabra: "yogi", enGriego: "jo.gi"),
            Palabra(palabra: "gin", enGriego: "dʒin"),
            Palabra(palabra: "ginseng", enGriego: "dʒin.sᴇŋ")
          ]
        ),
        
        
        Tarjeta(audio: "pb_g_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "a*gg*ravé", enGriego: "a.gʀa.vᴇ"),
                    Palabra(palabra: "jo*gg*ing", enGriego: "dʒo.giŋ")
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
          excepciones: [
            Palabra(palabra: "suggérer", enGriego: "syg.ʒᴇ.ʀᴇ"),
            Palabra(palabra: "suggestion", enGriego: "syg.ʒᴇs.tjõ"),
            Palabra(palabra: "suggestif", enGriego: "syg.ʒᴇs.tif")
          ]
        ),
        
        Tarjeta(audio: "pb_g_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "monta*gn*e", enGriego: "mõ.tanj")
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
          excepciones: [
            Palabra(palabra: "diagnostic", enGriego: "dja.gno.stik"),
            Palabra(palabra: "gnome", enGriego: "gnom"),
            Palabra(palabra: "stagner", enGriego: "sta.gnᴇ")
          ]
        ),
        
        Tarjeta(audio: "pb_g_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "hotdo*g*", enGriego: "ot.dog")
              ],
              pronuciacion: "-g",
              explicacion: """
                              Al final de una palabra \n\n transcribe el sonido
                          """,
              imagenFonema: "g",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "camp*ing*", enGriego: "kɑ̃.piŋ")
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
          excepciones: [
            Palabra(palabra: "long", enGriego: "lõ"),
            Palabra(palabra: "sang", enGriego: "lõ"),
            Palabra(palabra: "étang", enGriego: "ᴇ.tɑ̃"),
            
            Palabra(palabra: "hareng", enGriego: "a.ʀɑ̃"),
            Palabra(palabra: "joug", enGriego: "ʒu"),
            Palabra(palabra: "orang-outan", enGriego: "o.ʀɑ̃.u.tɑ̃"),
            Palabra(palabra: "poing", enGriego: "pwɛ̃")
          ]
        )
    ]
}
