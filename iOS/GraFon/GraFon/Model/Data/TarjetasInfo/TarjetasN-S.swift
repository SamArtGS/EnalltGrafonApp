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
                    Palabra(palabra: "*n*ée", enGriego: "nᴇ"),
                    Palabra(palabra: "*n*uage", enGriego: "nɥaʒ")
              ],
              pronuciacion: "n-",
              explicacion: """
                              Al inicio de una palabra \n\n transcribe el sonido
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
                    Palabra(palabra: "*ani*maux", enGriego: "a.ni.mo"),
                    Palabra(palabra: "*une*", enGriego: "yn")
              ],
              pronuciacion: "-n-",
              explicacion: """
                              Entre vocales \n\n transcribe el sonido
                          """,
              imagenFonema: "n",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "so*mn*oler", enGriego: "som.no.lᴇ"),
                    Palabra(palabra: "a*pn*ée", enGriego: "a.pnᴇ")
              ],
              pronuciacion: "-n-",
              explicacion: """
                              Después de una consonante \n\n transcribe el sonido
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
                    Palabra(palabra: "*anné*e", enGriego: "a.nᴇ"),
                    Palabra(palabra: "c*onnu*", enGriego: "ko.ny")
              ],
              pronuciacion: "-nn-",
              explicacion: """
                              Entre vocales (excepto en el grupo $enn-$ al inicio de una palabra) \n\n transcriben el sonido
                          """,
              imagenFonema: "n",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*enn*uyeux", enGriego: "ɑ̃.nɥi.j&Œ&"),
                    Palabra(palabra: "*enn*ui", enGriego: "ɑ̃.nɥi")
              ],
              pronuciacion: "enn-",
              explicacion: """
                              Al inicio de una palabra, \n\n $en$ transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: "La segunda $n$ forma parte de la sílaba que sigue."
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ils pr*enne*nt", enGriego: "il.pʀᴇn"),
                    Palabra(palabra: "anci*enne*", enGriego: "ɑ̃.sjᴇn")
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
          excepciones: [
            Palabra(palabra: "ennemi", enGriego: "ᴇn.mi")
          ]
        ),
        
        
        Tarjeta(audio: "pb_n_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "pl*an*", enGriego: "plɑ̃"),
                    Palabra(palabra: "ch*ant*", enGriego: "ʃɑ̃")
              ],
              pronuciacion: "an",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto $n$) \n\n transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "t*on*", enGriego: "tõ"),
                    Palabra(palabra: "p*ont*", enGriego: "põ")
              ],
              pronuciacion: "on",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto $n$) \n\n transcriben el sonido
                          """,
              imagenFonema: "õ",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "p*ain*", enGriego: "pɛ̃"),
                    Palabra(palabra: "pl*ein*", enGriego: "plɛ̃"),
                    Palabra(palabra: "v*in*", enGriego: "vɛ̃"),
                    Palabra(palabra: "*un*", enGriego: "ɛ̃"),
                    Palabra(palabra: "*synt*axe", enGriego: "sɛ̃.taks")
              ],
              pronuciacion: "ain, ein, in, un ¿o¿ yn",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto $n$) \n\n transcriben el sonido
                          """,
              imagenFonema: "ɛ̃",
              imagenConsejo: "e_retro_varias-letras_n2",
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "l*oin*", enGriego: "lwɛ̃"),
                    Palabra(palabra: "j*oind*re", enGriego: "ʒwɛ̃dʀ")
              ],
              pronuciacion: "oin",
              explicacion: """
                              Al final de una palabra o seguidas de una consonante (exepto $n$) \n\n transcriben los sonidos
                          """,
              imagenFonema: "wɛ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "fan", enGriego: "fan"),
            Palabra(palabra: "monsieur", enGriego: "m&Œ&.sj&Œ&"),
            Palabra(palabra: "in", enGriego: "in"),
            Palabra(palabra: "gin", enGriego: "dʒin"),
            Palabra(palabra: "fun", enGriego: "f&Œ&n"),
            Palabra(palabra: "acupuncture", enGriego: "a.ky.põ.ktyʀ")
          ]
        ),
        
        Tarjeta(audio: "pb_n_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*ent*re", enGriego: "ɑ̃tʀ"),
                    Palabra(palabra: "je *pens*e", enGriego: "j&Œ&.pɑ̃s"),
              ],
              pronuciacion: "en",
              explicacion: """
                              Seguidas de una consonante (excepto en el grupo -ent al final de una palabra) \n\n transcriben el sonido
                          """,
              imagenFonema: "ɑ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "exam*en*", enGriego: "ᴇ.gza.mɛ̃"),
                    Palabra(palabra: "bi*en*", enGriego: "bjɛ̃"),
              ],
              pronuciacion: "-en",
              explicacion: """
                              Al final de una palabra \n\n transcriben el sonido
                          """,
              imagenFonema: "ɛ̃",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "agenda", enGriego: "a.ʒɛ̃.da"),
            Palabra(palabra: "appendicite", enGriego: "a.pɛ̃.di.sit"),
            Palabra(palabra: "benjamin", enGriego: "bɛ̃.ja.mɛ̃"),
            Palabra(palabra: "bienvenu", enGriego: "bjɛ̃.v&Œ&.ny"),
            Palabra(palabra: "ginseng", enGriego: "ʒin.sᴇŋg"),
            Palabra(palabra: "pentagone", enGriego: "pɛ̃.ta.gon"),
            Palabra(palabra: "placenta", enGriego: "pla.sɛ̃.ta"),
            Palabra(palabra: "referendum", enGriego: "ʀᴇ.fᴇ.ʀɛ̃.dom"),
            Palabra(palabra: "suspense", enGriego: "sys.pᴇns"),
            Palabra(palabra: "weekend", enGriego: "wi.kᴇnd"),
            Palabra(palabra: "abdomen", enGriego: "ab.do.mᴇn"),
            Palabra(palabra: "amen", enGriego: "a.mᴇn"),
            Palabra(palabra: "éden", enGriego: "ᴇ.dᴇn"),
            Palabra(palabra: "gluten", enGriego: "gly.tᴇn"),
            Palabra(palabra: "hymen", enGriego: "i.mᴇn"),
            Palabra(palabra: "larsen", enGriego: "laʀ.sᴇn"),
            Palabra(palabra: "open", enGriego: "o.pᴇn"),
            Palabra(palabra: "pollen", enGriego: "po.lᴇn"),
            Palabra(palabra: "spécimen", enGriego: "spᴇ.si.mᴇn")
          ]
        ),
        
        Tarjeta(audio: "pb_n_06",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "elles travers*ent*", enGriego: "ᴇl.tʀa.vᴇʀs"),
                    Palabra(palabra: "elles parlai*ent*", enGriego: "ᴇl.paʀ.lᴇ"),
              ],
              pronuciacion: "-ent",
              explicacion: """
                              Al final de un verbo conjugado en la tercera persona del plural \n\n no transcriben ningún sonido
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "il vi*ent*", enGriego: "il.vjɛ̃")
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
                    Palabra(palabra: "c*ent*", enGriego: "sɑ̃"),
                    Palabra(palabra: "pati*ent*", enGriego: "pa.sjɑ̃"),
                    Palabra(palabra: "doucem*ent*", enGriego: "dus.mɑ̃")
              ],
              pronuciacion: "-ent",
              explicacion: """
                              Al final de un sustantivo, un adjetivo o un adverbio \n\n transcriben el sonido
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
          excepciones: nil
        )
        
    ]

    static let tarjetasP:[Tarjeta] = [
        
        Tarjeta(audio: "pb_p_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*papa*", enGriego: "pa.pa")
              ],
              pronuciacion: "p",
              explicacion: """
                              Seguida de vocal \n\n transcribe el sonido
                          """,
              imagenFonema: "p",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*pl*ace", enGriego: "plas")
              ],
              pronuciacion: "p",
              explicacion: """
                              Seguida de consonante excepto $h$, $-ps$ al final de una palabra o $-pt$ al final de un verbo conjugado \n\n transcribe el sonido
                          """,
              imagenFonema: "p",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*ph*oto", enGriego: "fo.to")
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
          excepciones: [
            Palabra(palabra: "compte", enGriego: "kõt"),
            Palabra(palabra: "comptable", enGriego: "kõ.tabl"),
            Palabra(palabra: "sept", enGriego: "sᴇt"),
            Palabra(palabra: "baptiser ", enGriego: "ba.ti.zᴇ"),
            Palabra(palabra: "baptême", enGriego: "ba.tᴇm"),
            Palabra(palabra: "sculpter", enGriego: "skyl.tᴇ"),
            Palabra(palabra: "sculpteur", enGriego: "skyl.t&Œ&ʀ"),
          ]
        ),
        
        Tarjeta(audio: "pb_p_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "sto*p*", enGriego: "stop")
              ],
              pronuciacion: "-p",
              explicacion: """
                              Al final de una palabra excepto en los grupos $-oup$ o $-amp$ \n\n transcribe el sonido
                          """,
              imagenFonema: "p",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "beauc*oup*", enGriego: "bo.ku")
              ],
              pronuciacion: "-oup",
              explicacion: """
                              Al final de una palabra, \n $p$ no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "ch*amp*", enGriego: "ʃɑ̃")
              ],
              pronuciacion: "-amp",
              explicacion: """
                              Al final de una palabra, \n\n $p$ no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "drap", enGriego: "dʀa"),
            Palabra(palabra: "trop", enGriego: "tʀo"),
            Palabra(palabra: "sirop", enGriego: "si.ʀo"),
            Palabra(palabra: "galop ", enGriego: "ga.lo"),
            Palabra(palabra: "vamp", enGriego: "vɑ̃p")
          ]
        ),
        
        Tarjeta(audio: "pb_p_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "tem*ps*", enGriego: "tɑ̃"),
                    Palabra(palabra: "cor*ps*", enGriego: "koʀ"),
                    Palabra(palabra: "tu rom*ps*", enGriego: "ty.ʀõ")
              ],
              pronuciacion: "-ps",
              explicacion: """
                              Al final de una palabra \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "chips", enGriego: "ʃips"),
            Palabra(palabra: "laps", enGriego: "laps"),
            Palabra(palabra: "clips", enGriego: "klips"),
            Palabra(palabra: "forceps ", enGriego: "foʀ.seps")
          ]
        ),
        Tarjeta(audio: "pb_p_04",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "il corrom*pt*", enGriego: "il.ko.ʀõ")
              ],
              pronuciacion: "-pt",
              explicacion: """
                              Al final de un verbo conjugado \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        Tarjeta(audio: "pb_p_05",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "a*pp*liquer", enGriego: "a.pli.kᴇ")
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
                    Palabra(palabra: "*qu*atre", enGriego: "katʀ"),
                    Palabra(palabra: "é*qu*ipe", enGriego: "ᴇ.kip"),
                    Palabra(palabra: "phonéti*qu*e", enGriego: "fo.nᴇ.tik"),
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
          excepciones: [
              Palabra(palabra: "piqure", enGriego: "pi.kyʀ"),
              Palabra(palabra: "craqure", enGriego: "kʀa.kyʀ"),
              Palabra(palabra: "aquarelle", enGriego: "a.kwa.ʀᴇl"),
              Palabra(palabra: "aquatique ", enGriego: "a.kwa.tik"),
            Palabra(palabra: "aquarium", enGriego: "a.kwa.ʀjom"),
            Palabra(palabra: "aquifère", enGriego: "a.kɥi.fᴇʀ"),
            Palabra(palabra: "équilatéral", enGriego: "ᴇ.kɥi.la.tᴇ.ʀal"),
            Palabra(palabra: "requiem ", enGriego: "ʀᴇ.kɥi.ᴇm"),
          ]
        ),
        
        Tarjeta(audio: "pb_q_02",
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
                    Palabra(palabra: "*rir*e", enGriego: "ʀiʀ"),
                    Palabra(palabra: "ba*r*", enGriego: "baʀ")
              ],
              pronuciacion: "r",
              explicacion: """
                              (Excepto en el caso del grupo $-er$ al final de una palabra) \n\n transcribe el sonido
                          """,
              imagenFonema: "ʀ",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "aim*er*", enGriego: "ᴇ.mᴇ"),
                    Palabra(palabra: "infirmi*er*", enGriego: "ɛ̃.fir.mjᴇ")
              ],
              pronuciacion: "-er",
              explicacion: """
                              Al final de una palabra \n\n transcriben el sonido
                          """,
              imagenFonema: "ᴇ",
              imagenConsejo: "e_retro_3Ob_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "monsieur", enGriego: "m&Œ&.sj&Œ&"),
            Palabra(palabra: "messieurs", enGriego: "mᴇ.sjɶ"),
            Palabra(palabra: "alzheimer", enGriego: "al.zaj.mᴇʀ"),
            Palabra(palabra: "amer", enGriego: "a.mᴇʀ"),
            Palabra(palabra: "cancer", enGriego: "kɑ̃.sᴇʀ"),
            Palabra(palabra: "cher", enGriego: "ʃᴇʀ"),
            Palabra(palabra: "enfer", enGriego: "ɑ̃.fᴇʀ"),
            Palabra(palabra: "fer", enGriego: "fᴇʀ"),
            Palabra(palabra: "fier", enGriego: "fjᴇʀ"),
            Palabra(palabra: "hamster", enGriego: "ams.tᴇʀ"),
            Palabra(palabra: "hier", enGriego: "jᴇʀ"),
            Palabra(palabra: "hiver", enGriego: "i.vᴇʀ"),
            Palabra(palabra: "hyper", enGriego: "i.pᴇʀ"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "kasher", enGriego: "ka.ʃᴇʀ"),
            Palabra(palabra: "mer", enGriego: "mᴇʀ"),
            Palabra(palabra: "polyester", enGriego: "po.ljᴇs.tᴇʀ"),
            Palabra(palabra: "super", enGriego: "sy.pᴇʀ"),
            Palabra(palabra: "ver", enGriego: "vᴇʀ"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "bestseller", enGriego: "bᴇst.sᴇ.lᴇʀ"),
            Palabra(palabra: "bulldozer", enGriego: "byl.do.zᴇʀ"),
            Palabra(palabra: "charter", enGriego: "ʃaʀ.tᴇʀ"),
            Palabra(palabra: "cluster", enGriego: "klɶs.tɶʀ"),
            Palabra(palabra: "corner", enGriego: "koʀ.nᴇʀ"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "crooner", enGriego: "kʀu.nɶʀ"),
            Palabra(palabra: "cutter", enGriego: "kɶ.tɶʀ"),
            Palabra(palabra: "designer", enGriego: "di.zaj.nɶʀ"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "docker", enGriego: "do.kᴇʀ"),
            Palabra(palabra: "gangster", enGriego: "gɑ̃g.stᴇʀ"),
            Palabra(palabra: "geyser", enGriego: "ʒᴇ.zᴇʀ"),
            Palabra(palabra: "globe-trotter", enGriego: "glob.tʀo.tɶʀ"),
            Palabra(palabra: "hamburger", enGriego: "ɑ̃.bɶʀ.gɶʀ"),
            Palabra(palabra: "joker", enGriego: "dʒo.kᴇʀ"),
            Palabra(palabra: "master", enGriego: "mas.tᴇʀ"),
            Palabra(palabra: "poker", enGriego: "po.kᴇʀ"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "revolver", enGriego: "ʀᴇ.vol.vᴇʀ"),
            Palabra(palabra: "rocker", enGriego: "ʀo.kɶʀ"),
            Palabra(palabra: "roller", enGriego: "ʀo.lɶʀ"),
            Palabra(palabra: "scooter", enGriego: "sku.tɶʀ"),
            Palabra(palabra: "sweater", enGriego: "swᴇ.tɶʀ"),
            Palabra(palabra: "toner", enGriego: "to.nᴇʀ"),
            Palabra(palabra: "water", enGriego: "wa.tᴇʀ")
          
          ]
        ),
        
        Tarjeta(audio: "pb_r_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "te*rr*e", enGriego: "tᴇʀ"),
                    Palabra(palabra: "a*rr*ivé", enGriego: "a.ʀi.vᴇ")
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
    //- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //HASTA AQUÍ
    // --- - - - - - - - - - - - - - - - - - - - - - - - - - - -  --
    static let tarjetasS:[Tarjeta] = [
        Tarjeta(audio: "pb_s_01",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "*s*a", enGriego: "sa"),
                    Palabra(palabra: "*s*tupide", enGriego: "sty.pid")
              ],
              pronuciacion: "s-",
              explicacion: """
                              Al inicio de una palabra (excepto en el grupo $sch-$) \n\n transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*sch*éma", enGriego: "ʃᴇ.ma")
              ],
              pronuciacion: "sch-",
              explicacion: """
                              Al inicio de una palabra \n\n transcriben el sonido
                          """,
              imagenFonema: "ʃ",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_s_02",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "b*ase*", enGriego: "baz"),
                    Palabra(palabra: "co*usi*ne", enGriego: "ku.zin")
              ],
              pronuciacion: "-s-",
              explicacion: """
                              Entre dos vocales
                              (excepto en el grupo $res-$ al inicio de una palabra seguido de una vocal) \n\n transcribe el sonido
                          """,
              imagenFonema: "z",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            Silaba(
              palabras: [
                    Palabra(palabra: "*resa*lir", enGriego: "ʀ&Œ&.sa.liʀ"),
                    Palabra(palabra: "*resi*tuer", enGriego: "ʀ&Œ&.si.tɥᴇ")
              ],
              pronuciacion: "res-",
              explicacion: """
                              Al inicio de una palabra y seguidas de una vocal, \n\n $s$ transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "abasourdir", enGriego: "a.ba.suʀ.diʀ"),
            Palabra(palabra: "aseptiser", enGriego: "a.sᴇp.ti.zᴇ "),
            Palabra(palabra: "asexué", enGriego: "a.sᴇ.ksɥᴇ"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "asocial", enGriego: "a.so.sjal"),
            Palabra(palabra: "biosynthèse", enGriego: "bjo.sɛ̃.tᴇz"),
            Palabra(palabra: "cosignataire", enGriego: "ko.si.nja.tᴇʀ "),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "carrousel", enGriego: "ka.ʀu.sᴇl"),
            Palabra(palabra: "entresol", enGriego: "aɑ̃.tʀ&Œ&.sol"),
            Palabra(palabra: "parasol", enGriego: "pa.ʀa.sol"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "parasoleil", enGriego: "pa.ʀa.so.lᴇj"),
            Palabra(palabra: "photosensible", enGriego: "fo.to.sɑ̃.sibl"),
            Palabra(palabra: "préséance", enGriego: "pʀᴇ.sᴇ.ɑ̃s"),
            Palabra(palabra: "présupposer", enGriego: "pʀᴇ.sy.po.zᴇ"),
            Palabra(palabra: "presupposition", enGriego: "pʀᴇ.sy.po.zᴇ"),
            Palabra(palabra: "vraisemblable", enGriego: "vʀᴇ.sɑ̃.blabl"),
            Palabra(palabra: "vraisemblance", enGriego: "vʀᴇ.sɑ̃.blɑ̃s"),
            Palabra(palabra: " ", enGriego: " "),
            
            Palabra(palabra: "bisexué", enGriego: "bi.sᴇ.ksɥᴇ"),
            Palabra(palabra: "hétérosexuel", enGriego: "ᴇ.tᴇ.ʀo.sᴇ.ksɥᴇl"),
            Palabra(palabra: "homosexuel", enGriego: "o.mo.sᴇ.ksɥᴇl"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "aérosol", enGriego: "a.ᴇ.ʀo.sol"),
            
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "antisocial", enGriego: "ɑ̃.ti.so.sjal"),
            Palabra(palabra: "antisémite", enGriego: "ɑ̃.ti.sᴇ.mit"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "asymétrie", enGriego: "a.si.mᴇ.tʀi"),
            Palabra(palabra: "asynchrone", enGriego: "a.sɛ̃.kʀon"),
            Palabra(palabra: "asyntaxique", enGriego: "a.sɛ̃.ta.ksik"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "contresens", enGriego: "kõ.tʀ&Œ&.sɑ̃s"),
            Palabra(palabra: "contresigné", enGriego: "kõ.tʀ&Œ&.si.njᴇ"),
            Palabra(palabra: "asyntaxique", enGriego: "a.sɛ̃.ta.ksik"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "extrascolaire", enGriego: "ᴇks.tʀa.sko.lᴇʀ"),
            Palabra(palabra: "extrasensible", enGriego: "ᴇks.tʀa.sɑ̃.sibl"),
            Palabra(palabra: "extrasensoriel", enGriego: "ᴇks.tʀa.sɑ̃.so.ʀjᴇl"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "microsystème", enGriego: "mi.kʀo.sis.tᴇm"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "multiservice", enGriego: "myl.ti.sᴇʀ.vis"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "polysémique", enGriego: "po.li.sᴇ.mik"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "suprasensible", enGriego: "sy.pʀa.sɑ̃.sibl"),
            Palabra(palabra: "suprasegmental", enGriego: "sy.pʀa.sᴇg.mɑ̃.tal"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "ultrasensible", enGriego: "yl.tʀa.sɑ̃.sibl"),
            Palabra(palabra: "ultrason", enGriego: "yl.tʀa.sõ"),
            
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "bisyllabe", enGriego: "bi.si.lab"),
            Palabra(palabra: "trisyllabe", enGriego: "tri.si.lab"),
            Palabra(palabra: "tétrasyllabe", enGriego: "tᴇ.tra.si.lab"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: " ", enGriego: " "),
          ]
        ),
        
        Tarjeta(audio: "pb_s_03",
          silabas: [
            Silaba(
              palabras: [
                    Palabra(palabra: "di*sp*ute", enGriego: "dis.pyt")
              ],
              pronuciacion: "s",
              explicacion: """
                              Antes de una consonante \n\n transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            
            Silaba(
              palabras: [
                    Palabra(palabra: "écli*ps*e", enGriego: "ᴇ.klips"),
                    Palabra(palabra: "da*ns*e", enGriego: "dɑ̃s"),
              ],
              pronuciacion: "-s-",
              explicacion: """
                              Después de una consonante
                              (excepto en el grupo $trans-$ seguido de una vocal) \n\n transcribe el sonido
                          """,
              imagenFonema: "s",
              imagenConsejo: nil,
              textodeAbajo: nil
            ),
            
            Silaba(
              palabras: [
                    Palabra(palabra: "*transi*tif", enGriego: "tʀɑ̃.zi.tif")
              ],
              pronuciacion: "trans-",
              explicacion: """
                              Seguido de una vocal, \n\n $s$ transcribe el sonido
                          """,
              imagenFonema: "z",
              imagenConsejo: nil,
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "alsacien", enGriego: "al.za.sjɛ̃"),
            Palabra(palabra: "subsister", enGriego: "syb.zis.tᴇ"),
            Palabra(palabra: "subsitance", enGriego: "syb.zis.tɑ̃s")
          ]
        ),
        
        Tarjeta(audio: "pb_s_04",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "gro*s*", enGriego: "gʀo"),
                Palabra(palabra: "ba*s*", enGriego: "ba"),
                Palabra(palabra: "ami*s*", enGriego: "a.mi"),
                Palabra(palabra: "tu parle*s*", enGriego: "ty.paʀl"),
              ],
              pronuciacion: "-s",
              explicacion: """
                              Al final de una palabra \n\n no transcribe ningún sonido.
                          """,
              imagenFonema: sinSonido,
              imagenConsejo: "e_retro_3Eb_n2",
              textodeAbajo: nil
            )
          ],
          excepciones: [
            Palabra(palabra: "albatros", enGriego: "al.ba.tʀos"),
            Palabra(palabra: "albinos", enGriego: "al.bi.nos"),
            Palabra(palabra: "cosmos", enGriego: "kos.mos"),
            Palabra(palabra: "os", enGriego: "os"),
            Palabra(palabra: "rhinocéros", enGriego: "ʀi.no.sᴇ.ʀos"),
            Palabra(palabra: "thermos", enGriego: "tᴇʀ.mos"),
            Palabra(palabra: " ", enGriego: " "),
            
            Palabra(palabra: "alias", enGriego: "a.ljas"),
            Palabra(palabra: "ananas", enGriego: "a.na.nas"),
            Palabra(palabra: "as", enGriego: "as"),
            Palabra(palabra: "atlas", enGriego: "a.tlas"),
            Palabra(palabra: " ", enGriego: " "),
            
            Palabra(palabra: "anus", enGriego: "a.nys"),
            Palabra(palabra: "autobus", enGriego: "o.to.bys"),
            Palabra(palabra: "blocus", enGriego: "blo.kys"),
            Palabra(palabra: "bonus", enGriego: "bo.nys"),
            Palabra(palabra: "cactus", enGriego: "kak.tys"),
            Palabra(palabra: "campus", enGriego: "kɑ̃.pys"),
            Palabra(palabra: "corpus", enGriego: "koʀ.pys"),
            Palabra(palabra: "cursus", enGriego: "kyʀ.sys"),
            Palabra(palabra: " ", enGriego: " "),
            
            Palabra(palabra: "eucalyptus", enGriego: "&Œ&.ka.lip.tys"),
            Palabra(palabra: "fœtus", enGriego: "fᴇ.tys"),
            Palabra(palabra: "infarctus", enGriego: "ɛ̃.faʀk.tys"),
            Palabra(palabra: "lapsus", enGriego: "lap.sys"),
            Palabra(palabra: "phallus", enGriego: "fa.lys"),
            Palabra(palabra: "plus", enGriego: "plys"),
            Palabra(palabra: "processus", enGriego: "pʀo.sᴇ.sys"),
            Palabra(palabra: "prospectus", enGriego: "pʀo.spᴇk.tys"),
            Palabra(palabra: "sinus", enGriego: "si.nys"),
            Palabra(palabra: "stimulus", enGriego: "sti.my.lys"),
            Palabra(palabra: "terminus", enGriego: "tᴇʀ.mi.nys"),
            Palabra(palabra: "tonus", enGriego: "to.nys"),
            Palabra(palabra: "uterus", enGriego: "y.tᴇ.ʀys"),
            Palabra(palabra: "virus", enGriego: "vi.ʀys"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "bis", enGriego: "bis"),
            Palabra(palabra: "cannabis", enGriego: "ka.na.bis"),
            Palabra(palabra: "cassis", enGriego: "ka.sis"),
            Palabra(palabra: "clitoris", enGriego: "kli.to.ʀis"),
            Palabra(palabra: "fils", enGriego: "fis"),
            Palabra(palabra: "gratis", enGriego: "gʀa.tis"),
            Palabra(palabra: "iris", enGriego: "i.ʀis"),
            Palabra(palabra: "jadis", enGriego: "ʒa.dis"),
            Palabra(palabra: "maïs", enGriego: "ma.is"),
            Palabra(palabra: "métis", enGriego: "mᴇ.tis"),
            Palabra(palabra: "oasis", enGriego: "o.a.sis"),
            Palabra(palabra: "pénis", enGriego: "pᴇ.nis"),
            Palabra(palabra: "pubis", enGriego: "py.bis"),
            Palabra(palabra: "synopsis", enGriego: "si.nop.sis"),
            Palabra(palabra: "tennis", enGriego: "tᴇ.nis"),
            Palabra(palabra: "tournevis", enGriego: "tuʀ.n&Œ&.vis"),
            Palabra(palabra: "vis", enGriego: "vis"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "contresens", enGriego: "kõ.tʀ&Œ&.sɑ̃s"),
            Palabra(palabra: "sens", enGriego: "tuʀ.n&Œ&.vis"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "couscous", enGriego: "kus.kus"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "exprès", enGriego: "ᴇks.pʀᴇs"),
            Palabra(palabra: "herpes", enGriego: "ᴇʀ.pᴇs"),
            Palabra(palabra: "palmarès", enGriego: "pal.ma.ʀᴇs"),
            Palabra(palabra: " ", enGriego: " "),
            
            Palabra(palabra: "mœurs", enGriego: "m&Œ&ʀs"),
            Palabra(palabra: " ", enGriego: " "),
            Palabra(palabra: "ours", enGriego: "uʀs"),
            Palabra(palabra: " ", enGriego: " "),
          ]
        ),
        
        
        Tarjeta(audio: "pb_s_05",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "ta*ss*e", enGriego: "tas"),
                Palabra(palabra: "stre*ss*", enGriego: "stʀᴇs"),
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
        
        Tarjeta(audio: "pb_s_06",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "fa*sci*cule", enGriego: "fa.si.kyl"),
                Palabra(palabra: "de*sce*ndre", enGriego: "dᴇ.sɑ̃.dʀ"),
                Palabra(palabra: "*scy*phozoaire", enGriego: "si.fo.zo.ᴇʀ")
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
                    Palabra(palabra: "*sca*ndale", enGriego: "skɑ̃.dal"),
                    Palabra(palabra: "horo*sco*pe", enGriego: "o.ʀo.skop"),
                    Palabra(palabra: "*scu*lpture", enGriego: "skyl.tyʀ")
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
          excepciones: [
            Palabra(palabra: "fasciste", enGriego: "fa.ʃist"),
            Palabra(palabra: "fascisme", enGriego: "fa.ʃism"),
          ]
        ),
        
        
        Tarjeta(audio: "pb_s_07",
          silabas: [
            Silaba(
              palabras: [
                Palabra(palabra: "*sché*ma", enGriego: "ʃᴇ.ma"),
                Palabra(palabra: "ha*sch*ich", enGriego: "a.ʃiʃ"),
                Palabra(palabra: "goula*sch*", enGriego: "gu.laʃ")
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
        )
        
        
    ]
    
}

