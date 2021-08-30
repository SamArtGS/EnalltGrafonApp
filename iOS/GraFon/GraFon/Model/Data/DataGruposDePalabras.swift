//
//  DataGruposDePalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/8/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension Data{
    
    static let sinSonido: String = "ico_sin-sonido_n2"
    
    static let grupoPalabras:[GrupoPalabras] = [
        GrupoPalabras(identificador: 1, letra: "Grupo de palabras 1", imagenGrupo: "1a_n3", tarjetas:
        [
            Tarjeta(audio: "mp_g1_01",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "*le*s l*ivres", enGriego:"lᴇ.livʀ"),
                        Palabra(palabra: "quel*s f*ilms", enGriego: "kᴇl.film"),
                        Palabra(palabra: "grand*s p*rojets", enGriego: "gʀɑ̃.pʀo.ʒᴇ")
                  ],
                  pronuciacion: "-s",
                  explicacion: """
                                  Al final de una palabra seguida de un sustantivo que empieza con consonante (excepto $h$) \n\n no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonido,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                        Palabra(palabra: "le*s é*tudiantes", enGriego: "lᴇ.zᴇ.ty.djɑ̃t"),
                        Palabra(palabra: "quel*s a*cteurs", enGriego:"kᴇl.zak.t&Œ&ʀ"),
                        Palabra(palabra: "grand*s a*rbres", enGriego: "gʀɑ̃.zaʀbʀ"),
                  ],
                  pronuciacion: "-s",
                  explicacion: """
                                  Al final de una palabra seguida de un sustantivo que empieza con vocal o $h$ \n\n indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: "nil",
                  textodeAbajo: nil
                )
              ],
              excepciones: [
                Palabra(palabra: "hongrois", enGriego: "õ.gʀwa"),
                Palabra(palabra: "haïtien", enGriego: "a.i.sjɛ̃"),
                Palabra(palabra: "haschich", enGriego: "a.ʃiʃ"),
                Palabra(palabra: "hall", enGriego: "ol"),
                Palabra(palabra: "halo", enGriego: "a.lo"),
                Palabra(palabra: "hamac", enGriego: "a.mak"),
                Palabra(palabra: "hamburger", enGriego: "ɑ̃.b&Œ&ʀ.g&Œ&ʀ"),
                Palabra(palabra: "hamster", enGriego: "ams.tᴇʀ"),
                Palabra(palabra: "hanche", enGriego: "ɑ̃ʃ"),
                Palabra(palabra: "handicap", enGriego: "ɑ̃.di.kap"),
                
                Palabra(palabra: "haricot", enGriego: "a.ʀi.ko"),
                Palabra(palabra: "harpe", enGriego: "aʀp"),
                Palabra(palabra: "hasard", enGriego: "a.zaʀ"),
                Palabra(palabra: "hausse", enGriego: "os"),
                Palabra(palabra: "haut", enGriego: "o"),
                Palabra(palabra: "hernie", enGriego: "ᴇʀ.ni"),
                Palabra(palabra: "héros", enGriego: "ᴇ.ʀo"),
                Palabra(palabra: "hibou", enGriego: "i.bu"),
                Palabra(palabra: "hiérarchie", enGriego: "jᴇ.ʀaʀ.ʃi"),
                Palabra(palabra: "hiéroglyphe", enGriego: "jᴇ.ro.glif"),
                Palabra(palabra: "hippie", enGriego: "i.pi"),
                Palabra(palabra: "homard", enGriego: "o.maʀ"),
                Palabra(palabra: "hors-d’oeuvre", enGriego: "oʀ.d&Œ&vʀ"),
                Palabra(palabra: "hotdog", enGriego: "i.bu"),
                Palabra(palabra: "hyène", enGriego: "jᴇn"),
              ]
            ),
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
              excepciones: nil
            ),
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
              excepciones: nil
            ),
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
              excepciones: nil
            ),
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
              excepciones: nil
            )
                      
                      
                      
                      
                      
        ]),
        GrupoPalabras(identificador: 2, letra: "Grupo de palabras 2", imagenGrupo: "2a_n3", tarjetas: [
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
              excepciones: nil
            ),
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
              excepciones: nil
            )
        
        ]),
        GrupoPalabras(identificador: 3, letra: "Grupo de palabras 3", imagenGrupo: "2b_n3", tarjetas:[
                      
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
              excepciones: nil
            ),
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
              excepciones: nil
            )
        ]),

    ]
}
