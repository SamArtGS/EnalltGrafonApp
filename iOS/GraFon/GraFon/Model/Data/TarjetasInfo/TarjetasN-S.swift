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
                              Al incio de una palabra \n\n transcribe el sonido
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
          excepciones: nil
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
              pronuciacion: "an",
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
              pronuciacion: "ain, ein, in, un o yn",
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
          excepciones: nil
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
          excepciones: nil
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
        
        Tarjeta(audio: "pb_p_o1",
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
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_p_o2",
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
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_p_o3",
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
          excepciones: nil
        ),
        Tarjeta(audio: "pb_p_o4",
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
        Tarjeta(audio: "pb_p_o5",
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
          excepciones: nil
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
          excepciones: nil
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

    static let tarjetasS:[Tarjeta] = [
        Tarjeta(audio: "pb_s_o1",
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
        
        
        Tarjeta(audio: "pb_s_o2",
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
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_s_o3",
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
          excepciones: nil
        ),
        
        Tarjeta(audio: "pb_s_o4",
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
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_s_o5",
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
        
        Tarjeta(audio: "pb_s_o6",
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
          excepciones: nil
        ),
        
        
        Tarjeta(audio: "pb_s_o7",
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
        ),
        
        
    ]
    
}

