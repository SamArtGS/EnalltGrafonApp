//
//  DataGruposDePalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/8/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import Foundation

extension Data{
    
    static let sinSonidoGP: String = "ico_sin-sonido_n3"
    
    
    static let grupoPalabras:[GrupoPalabras] = [
        GrupoPalabras(identificador: 1, letra: "Grupos de palabras 1", imagenGrupo: "1a_n3", tarjetas:
        [
            Tarjeta(audio: "mp_g1_01",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "le*s l*ivres", enGriego:"lᴇ.livʀ"),
                        Palabra(palabra: "quel*s f*ilms", enGriego: "kᴇl.film"),
                        Palabra(palabra: "grand*s p*rojets", enGriego: "gʀɑ̃.pʀo.ʒᴇ")
                  ],
                  pronuciacion: "-s",
                  explicacion: """
                                  Al final de una palabra seguida de un sustantivo que empieza con consonante (excepto ~h~) \n\n no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
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
                                  Al final de una palabra seguida de un sustantivo que empieza con vocal o ~h~ \n\n indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: "retro_3A1-gpo1_n3",
                  textodeAbajo: nil
                )
              ],
              excepciones: [
                Palabra(palabra: "hongrois", enGriego: "õ.gʀwa"),
                Palabra(palabra: "haïtien", enGriego: "a.i.sjɛ̃"),
                Palabra(palabra: "haschich", enGriego: "a.∫i∫"),
                Palabra(palabra: "hall", enGriego: "ol"),
                Palabra(palabra: "halo", enGriego: "a.lo"),
                Palabra(palabra: "hamac", enGriego: "a.mak"),
                Palabra(palabra: "hamburger", enGriego: "ɑ̃.b&Œ&ʀ.g&Œ&ʀ"),
                Palabra(palabra: "hamster", enGriego: "ams.tᴇʀ"),
                Palabra(palabra: "hanche", enGriego: "ɑ̃∫"),
                Palabra(palabra: "handicap", enGriego: "ɑ̃.di.kap"),
                Palabra(palabra: "haricot", enGriego: "a.ʀi.ko"),
                Palabra(palabra: "harpe", enGriego: "aʀp"),
                Palabra(palabra: "hasard", enGriego: "a.zaʀ"),
                Palabra(palabra: "hausse", enGriego: "os"),
                Palabra(palabra: "haut", enGriego: "o"),
                Palabra(palabra: "hernie", enGriego: "ᴇʀ.ni"),
                Palabra(palabra: "héros", enGriego: "ᴇ.ʀo"),
                Palabra(palabra: "hibou", enGriego: "i.bu"),
                Palabra(palabra: "hiérarchie", enGriego: "jᴇ.ʀaʀ.∫i"),
                Palabra(palabra: "hiéroglyphe", enGriego: "jᴇ.ʀo.glif"),
                Palabra(palabra: "hippie", enGriego: "i.pi"),
                Palabra(palabra: "homard", enGriego: "o.maʀ"),
                Palabra(palabra: "hors-d’oeuvre", enGriego: "oʀ.d&Œ&vʀ"),
                Palabra(palabra: "hotdog", enGriego: "ot.dog"),
                Palabra(palabra: "hyène", enGriego: "jᴇn"),
              ]
            ),
            Tarjeta(audio: "mp_g1_02",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "*un d*oute", enGriego: "ɛ̃.dut"),
                        Palabra(palabra: "*aucun r*ésultat", enGriego: "o.kɛ̃.ʀᴇ.zyl.ta")
                  ],
                  pronuciacion: "un¿,¿ aucun",
                  explicacion: """
                                  Antes de un sustantivo que empieza con consonante (excepto ~h~) \n\n ~un~ transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                        Palabra(palabra: "*un* enfant", enGriego: "ɛ̃.nɑ̃.fɑ̃"),
                        Palabra(palabra: "*aucun* effort", enGriego: "o.kɛ̃.nᴇ.foʀ")
                  ],
                  pronuciacion: "un¿,¿ aucun",
                  explicacion: """
                                  Antes de un sustantivo que empieza con vocal o ~h \n\n un~ transcriben el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: "e indican la formación de una nueva sílaba que empieza con el sonido \n #n#"
                )
              ],
              excepciones: [
                Palabra(palabra: "hongrois", enGriego: "õ.gʀwa"),
                Palabra(palabra: "haïtien", enGriego: "a.i.sjɛ̃"),
                Palabra(palabra: "haschich", enGriego: "a.∫i∫"),
                Palabra(palabra: "hall", enGriego: "ol"),
                Palabra(palabra: "halo", enGriego: "a.lo"),
                Palabra(palabra: "hamac", enGriego: "a.mak"),
                Palabra(palabra: "hamburger", enGriego: "ɑ̃.b&Œ&ʀ.g&Œ&ʀ"),
                Palabra(palabra: "hamster", enGriego: "ams.tᴇʀ"),
                Palabra(palabra: "handicap", enGriego: "ɑ̃.di.kap"),
                Palabra(palabra: "haricot", enGriego: "a.ʀi.ko"),
                
                Palabra(palabra: "hasard", enGriego: "a.zaʀ"),
                Palabra(palabra: "haut", enGriego: "o"),
                Palabra(palabra: "héros", enGriego: "ᴇ.ʀo"),
                Palabra(palabra: "hibou", enGriego: "i.bu"),
                Palabra(palabra: "hiéroglyphe", enGriego: "jᴇ.ʀo.glif"),
                Palabra(palabra: "hippie", enGriego: "i.pi"),
                Palabra(palabra: "homard", enGriego: "o.maʀ"),
                Palabra(palabra: "hors-d’oeuvre", enGriego: "oʀ.d&Œ&vʀ"),
                Palabra(palabra: "hotdog", enGriego: "ot.dog")
              ]
            ),
            Tarjeta(audio: "mp_g1_03",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "*son c*opain", enGriego: "sõ.ko.pɛ̃")
                  ],
                  pronuciacion: "mon, ton, son",
                  explicacion: """
                                  Antes de un sustantivo que empieza con consonante \n ~on~ transcriben el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "*mon a*mi", enGriego: "mõ.na.mi"),
                    Palabra(palabra: "*ton a*vocat", enGriego: "tõ.na.vo.ka"),
                  ],
                  pronuciacion: "mon, ton, son",
                  explicacion: """
                                  Antes de un sustantivo que empieza con vocal o ~h \n\n on~ transcriben el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: """
                    e indican la formación de una nueva sílaba que empieza con el sonido \n #n#
                """
                )
              ],
              excepciones: [
                 
                   Palabra(palabra: "hongrois", enGriego: "õ.gʀwa"),
                   Palabra(palabra: "haïtien", enGriego: "a.i.sjɛ̃"),
                   Palabra(palabra: "haschich", enGriego: "a.∫i∫"),
                   Palabra(palabra: "hall", enGriego: "ol"),
                   Palabra(palabra: "halo", enGriego: "a.lo"),
                   Palabra(palabra: "hamac", enGriego: "a.mak"),
                   Palabra(palabra: "hamburger", enGriego: "ɑ̃.b&Œ&ʀ.g&Œ&ʀ"),
                   Palabra(palabra: "hamster", enGriego: "ams.tᴇʀ"),
                   Palabra(palabra: "handicap", enGriego: "ɑ̃.di.kap"),
                   Palabra(palabra: "haricot", enGriego: "a.ʀi.ko"),
                   Palabra(palabra: "hasard", enGriego: "a.zaʀ"),
                   Palabra(palabra: "haut", enGriego: "o"),
                   Palabra(palabra: "héros", enGriego: "ᴇ.ʀo"),
                   Palabra(palabra: "hibou", enGriego: "i.bu"),
                   Palabra(palabra: "hiéroglyphe", enGriego: "jᴇ.ʀo.glif"),
                   Palabra(palabra: "hippie", enGriego: "i.pi"),
                   Palabra(palabra: "homard", enGriego: "o.maʀ"),
                   Palabra(palabra: "hors-d’oeuvre", enGriego: "oʀ.d&Œ&vʀ"),
                   Palabra(palabra: "hotdog", enGriego: "ot.dog")
                
              ]
            ),
            Tarjeta(audio: "mp_g1_04",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "*en F*rance", enGriego: "ɑ̃.fʀɑ̃s"),
                        Palabra(palabra: "*en p*lastique", enGriego: "ɑ̃.plas.tik"),
                        Palabra(palabra: "*en t*rois fois", enGriego: "ɑ̃.tʀwa.fwa"),
                  ],
                  pronuciacion: "en",
                  explicacion: """
                                  Antes de una palabra que empieza con consonante (excepto ~h~) \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɑ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                        Palabra(palabra: "*en A*rgentine", enGriego: "ɑ̃.naʀ.ʒɑ̃.tin"),
                        Palabra(palabra: "*en o*r", enGriego: "ɑ̃.noʀ"),
                        Palabra(palabra: "*en u*ne fois", enGriego: "ɑ̃.nyn.fwa"),
                  ],
                  pronuciacion: "en",
                  explicacion: """
                                  Antes de una palabra que empieza con vocal o ~h~ \n\n transcriben el sonido
                              """,
                  imagenFonema: "ɑ̃",
                  imagenConsejo: nil,
                  textodeAbajo: """
                    e indican la formación de una nueva sílaba que empieza con el sonido \n #n#
                    """
                )
              ],
              excepciones: [
                Palabra(palabra: "en haut", enGriego: "ɑ̃.o"),
                Palabra(palabra: "en hauteur", enGriego: "ɑ̃.o.t&Œ&ʀ")
              
              ]
            ),
        ],
                      otrosCasos: [
                          Silaba(
                            palabras: [
                                  Palabra(palabra: "*petit a*mi", enGriego: "p&Œ&.ti.ta.mi")
                            ],
                            pronuciacion: "petit",
                            explicacion: """
                                            Antes de un sustantivo que empieza con vocal o ~h \n\n t~ indica la formación de una nueva sílaba\n que empieza con el sonido
                                        """,
                            imagenFonema: "t",
                            imagenConsejo: nil,
                            textodeAbajo: nil
                          ),
                          Silaba(
                          palabras: [
                                Palabra(palabra: "*bon é*tat", enGriego: "bo.nᴇ.ta")
                          ],
                          pronuciacion: "bon",
                          explicacion: """
                                          Antes de un sustantivo que empieza con vocal o ~h~ \n\n transcribe los sonidos
                                      """,
                          imagenFonema: "bo",
                          imagenConsejo: nil,
                          textodeAbajo: "~n~ indica la formación de una \n nueva sílaba que empieza con el sonido \n #n#"
                        ),
                        
                        Silaba(
                          palabras: [
                                Palabra(palabra: "*très i*mportant", enGriego: "tʀᴇ.zɛ̃.poʀ.tɑ̃"),
                                Palabra(palabra: "*plus a*gréable", enGriego: "ply.za.gʀᴇ.abl"),
                                Palabra(palabra: "*moins é*vident", enGriego: "mwɛ̃.zᴇ.vi.dɑ̃"),
                          ],
                          pronuciacion: "très, plus, moins",
                          explicacion: """
                                          Antes de un adjetivo que empieza con vocal o ~h \n\n s~ indica la formación de una nueva sílaba que empieza con el sonido
                                      """,
                          imagenFonema: "z",
                          imagenConsejo: nil,
                          textodeAbajo: nil
                        ),
                        
                        
                        Silaba(
                          palabras: [
                                Palabra(palabra: "*quand o*n", enGriego: "kɑ̃.tõ"),
                                Palabra(palabra: "*grand a*ppartement", enGriego: "gʀɑ̃.ta.paʀ.t&Œ&.mɑ̃")
                          ],
                          pronuciacion: "quand, grand",
                          explicacion: """
                                          Antes de una palabra que empieza con vocal o ~h \n\n d~ indica la formación de una nueva sílaba que empieza con el sonido
                                      """,
                          imagenFonema: "t",
                          imagenConsejo: nil,
                          textodeAbajo: nil
                        ),
                        
                        Silaba(
                          palabras: [
                                Palabra(palabra: "*dernier é*pisode", enGriego: "dᴇʀ.njᴇ.ʀᴇ.pi.zod"),
                                Palabra(palabra: "*premier é*tage", enGriego: "pʀ&Œ&.mjᴇ.ʀᴇ.taʒ"),
                                Palabra(palabra: "*léger a*ccent", enGriego: "lᴇ.ʒᴇ.ʀa.ksɑ̃")
                          ],
                          pronuciacion: "premier, dernier, léger",
                          explicacion: """
                                          Antes de un sustantivo que empieza con vocal o ~h \n\n r~ indica la formación de una nueva \n sílaba que empieza con el sonido
                                      """,
                          imagenFonema: "ʀ",
                          imagenConsejo: nil,
                          textodeAbajo: nil
                        ),
                        
                        
                        Silaba(
                          palabras: [
                                Palabra(palabra: "*bien a*imable", enGriego: "bjɛ̃.nᴇ.mabl")
                          ],
                          pronuciacion: "bien",
                          explicacion: """
                                          Antes de un adjetivo que empieza con vocal o ~h \n\n ien~ transcriben el sonido
                                      """,
                          imagenFonema: "jɛ̃",
                          imagenConsejo: nil,
                          textodeAbajo: "e indican la formación de una nueva \n sílaba que empieza con el sonido \n #n#"
                        ),
                        
                        Silaba(
                          palabras: [
                                Palabra(palabra: "*ancien é*lève", enGriego: "ɑ̃.sjᴇ.nᴇ.lᴇv")
                          ],
                          pronuciacion: "ancien",
                          explicacion: """
                                          Antes de un sustantivo que empieza con vocal o ~h \n\n ien~ transcriben el sonido
                                      """,
                          imagenFonema: "jᴇ",
                          imagenConsejo: nil,
                          textodeAbajo: "indica la formación de una nueva sílaba que empieza con el sonido \n\n #n#"
                        ),
                      ],
                      otrosGrupos: [
                        Palabra(palabra: "avant-hier", enGriego: "a.vɑ̃.tjᴇʀ"),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "accent aigu ", enGriego: "a.ksɑ̃.tᴇ.gy"),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "comment allez-vous ?", enGriego: "ko.mɑ̃.ta.lᴇ.vu"),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "de mieux en mieux", enGriego: "d&Œ&.mj&Œ&.zɑ̃.mj&Œ&"),
                        Palabra(palabra: "de moins en moins", enGriego: "d&Œ&.mwɛ̃.zɑ̃.mwɛ̃"),
                        Palabra(palabra: "de temps en temps", enGriego: "d&Œ&.tɑ̃.zɑ̃.tɑ̃"),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "en plein air", enGriego: "ɑ̃.plᴇ.nᴇʀ"),
                        Palabra(palabra: "en plein été", enGriego: "ɑ̃.plᴇ.nᴇ.tᴇ"),
                        Palabra(palabra: "en plein hiver", enGriego: "ɑ̃.plᴇ.ni.vᴇʀ"),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "on en a", enGriego: "õ.nɑ̃.na"),
                        Palabra(palabra: "petit à petit", enGriego: "p&Œ&.ti.ta.p&Œ&.ti"),
                        Palabra(palabra: "mot à mot", enGriego: "mo.ta.mo"),
                        Palabra(palabra: "tout à coup", enGriego: "tu.ta.ku"),
                        Palabra(palabra: "tout à  fait", enGriego: "tu.ta.fᴇ"),
                        Palabra(palabra: "tout à l’heure", enGriego: "tu.ta.l&Œ&ʀ"),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "Les Champs-Élysées", enGriego: "lᴇ.∫ɑ̃.zᴇ.li.zᴇ"),
                        Palabra(palabra: "Les États-Unis", enGriego: "lᴇ.zᴇ.ta.zy.ni"),
                        Palabra(palabra: "Les Nations-Unies", enGriego: "lᴇ.na.sjõ.zy.ni"),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "", enGriego: ""),
                        Palabra(palabra: "Moyen Âge", enGriego: "mwa.jᴇ.naʒ"),
                        Palabra(palabra: "Moyen Orient", enGriego: "mwa.jᴇ.no.ʀjɑ̃"),
                      ]
        
        
        ),
        GrupoPalabras(identificador: 2, letra: "Grupos de palabras 2", imagenGrupo: "2a_n3", tarjetas: [
            Tarjeta(audio: "mp_g2_01",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "elle*s v*isitent", enGriego: "ᴇl.vi.zit"),
                        Palabra(palabra: "nou*s p*arlons", enGriego: "nu.paʀ.lõ"),
                        Palabra(palabra: "je le*s t*rouve", enGriego: "ʒ&Œ&.lᴇ.tʀuv"),
                  ],
                  pronuciacion: "-s",
                  explicacion: """
                                  Al final de ~elles~, ~ils~, ~nous~, ~vous~, ~les~, seguida de un verbo que empieza con consonante (excepto ~h~) \n\n no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                        Palabra(palabra: "elle*s a*iment", enGriego: "ᴇl.zᴇm"),
                        Palabra(palabra: "nou*s h*abitons", enGriego: "nu.za.bi.tõ"),
                        Palabra(palabra: "je le*s a*ime", enGriego: "ʒ&Œ&.lᴇ.zᴇm"),
                  ],
                  pronuciacion: "-s",
                  explicacion: """
                                  Al final de ~elles~, ~ils~, ~nous~, ~vous~, ~les~, seguida de un verbo que empieza con vocal o ~h~ \n\n indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: "retro_3A1-gpo2_n3",
                  textodeAbajo: nil
                )
              ],
              excepciones: [
                Palabra(palabra: "ils hurlent", enGriego: "il.yʀl"),
                Palabra(palabra: "ils harcèlent", enGriego: "il.aʀ.sᴇl"),
              ]
            ),
            Tarjeta(audio: "mp_g2_02",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "ºelleºªs tªºe proposentº", enGriego: "ᴇl.tɶ.pʀo.poz"),
                        Palabra(palabra: "vou*s l*ui parlez", enGriego: "vu.lɥi.paʀ.lᴇ")
                  ],
                  pronuciacion: "-s",
                  explicacion: """
                              Al final de ~elles~, ~ils~, ~nous~, ~vous~, ~les~, seguida de un pronombre que empieza con consonante \n\n no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                        Palabra(palabra: "elle*s y* pensent", enGriego: "ᴇl.zi.pɑ̃s"),
                        Palabra(palabra: "vou*s en* voulez", enGriego: "vu.zɑ̃.vu.lᴇ")
                  ],
                  pronuciacion: "-s",
                  explicacion: """
                              Al final de ~elles~, ~ils~, ~nous~, ~vous~, ~les~, seguida de ~y~ o ~en~ \n\n indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                )
              ],
              excepciones: nil
            ),
            Tarjeta(audio: "mp_g2_03",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "vas*-y*", enGriego: "va.zi"),
                        Palabra(palabra: "allons*-y*", enGriego: "a.lõ.zi"),
                        Palabra(palabra: "prene*z-en*", enGriego: "pʀ&Œ&.nᴇ.zɑ̃")
                  ],
                  pronuciacion: "-s ¿o¿ -z",
                  explicacion: """
                              Al final de un verbo en imperativo seguido de ~y~ o ~en~ \n\n indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "mp_g2_04",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "répon*d-il* ?", enGriego: "ʀᴇ.põ.til"),
                        Palabra(palabra: "pleu*t-il* ?", enGriego: "pl&Œ&.til"),
                        Palabra(palabra: "ºsonºªt-ilsª ºd’accord ?º", enGriego: "sõ.til.da.koʀ"),
                        Palabra(palabra: "par*t-elle* ?", enGriego: "paʀ.tᴇl"),
                        Palabra(palabra: "mangen*t-elles* ?", enGriego: "mɑ̃ʒ.tᴇl"),
                        Palabra(palabra: "atten*d-on* ?", enGriego: "a.tɑ̃.tõ")
                  ],
                  pronuciacion: "-d ¿o¿ -t",
                  explicacion: """
                              Al final de un verbo seguido de ~il~, ~ils~, ~elle~, ~elles~, ~on~ \n\n indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "t",
                  imagenConsejo: "retro_3D-gpo2_n3",
                  textodeAbajo: nil
                )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "mp_g2_05",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "*on t*raverse", enGriego: "õ.tʀa.vᴇʀs"),
                        Palabra(palabra: "*on p*ense", enGriego: "õ.pɑ̃s")
                  ],
                  pronuciacion: "on",
                  explicacion: """
                              Antes de un verbo que empieza con consonante (excepto ~h~) \n\n transcribe el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                        Palabra(palabra: "*on é*coute", enGriego: "õ.nᴇ.kut"),
                        Palabra(palabra: "*on h*ésite", enGriego: "õ.nᴇ.zit")
                  ],
                  pronuciacion: "on",
                  explicacion: """
                              Antes de un verbo que empieza con vocal o ~h~ \n\n transcribe el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: "e indica la formación de una nueva sílaba que empieza con el sonido \n #n#"
                )
              ],
              excepciones: [
                Palabra(palabra: "on hurlait", enGriego: "õ.yʀ.lᴇ")
              ]
            ),
            
            Tarjeta(audio: "mp_g2_06",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "*on y* va", enGriego: "õ.ni.va"),
                        Palabra(palabra: "*on en* parle", enGriego: "õ.nɑ̃.paʀl")
                  ],
                  pronuciacion: "on",
                  explicacion: """
                              Antes de ~y~ o ~en~ \n\n transcribe el sonido
                              """,
                  imagenFonema: "õ",
                  imagenConsejo: nil,
                  textodeAbajo: "e indica la formación de una nueva sílaba que empieza con el sonido \n\n #n#"
                )
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "mp_g2_07",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "tu *en m*anges", enGriego: "ty.ɑ̃.mɑ̃ʒ"),
                        Palabra(palabra: "*en p*artant", enGriego: "ɑ̃.paʀ.tɑ̃")
                  ],
                  pronuciacion: "en",
                  explicacion: """
                              Antes de un verbo que empieza con consonante (excepto ~h~) \n\n
                              transcribe el sonido
                              """,
                  imagenFonema: "ɑ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                        Palabra(palabra: "tu *en a*chètes", enGriego: "ty.ɑ̃.na.∫ᴇt"),
                        Palabra(palabra: "*en h*ésitant", enGriego: "ɑ̃.nᴇ.zi.tɑ̃")
                  ],
                  pronuciacion: "en",
                  explicacion: """
                              Antes de un verbo que empieza con vocal o ~h~ \n transcribe el sonido
                              """,
                  imagenFonema: "ɑ̃",
                  imagenConsejo: nil,
                  textodeAbajo: "e indica la formación de una nueva sílaba que empieza con el sonido \n\n #n#"
                ),
              ],
              excepciones: [
                Palabra(palabra: "en hurlant", enGriego: "ɑ̃.yʀ.lɑ̃")
              ]
            )
        
        ]),
        
        
        // MARK: GRUPO 3 --------------------------------------------------------------------
        // ----------------------------------------------------------------------------------
        
        
        GrupoPalabras(identificador: 3, letra: "Grupos de palabras 3", imagenGrupo: "2b_n3", tarjetas:[
                      
            Tarjeta(audio: "mp_g3_01",
              silabas: [
                Silaba(
                  palabras: [
                        Palabra(palabra: "*un*", enGriego: "ɛ̃")
                  ],
                  pronuciacion: "un",
                  explicacion: """
                                  transcribe el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "*un an*", enGriego: "ɛ̃.nɑ̃"),
                    Palabra(palabra: "*un euro*", enGriego: "ɛ̃.n&Œ&.ʀo")
                  ],
                  pronuciacion: "un",
                  explicacion: """
                                 Antes de ~an~ y ~euro~ \n\n transcribe el sonido
                              """,
                  imagenFonema: "ɛ̃",
                  imagenConsejo: nil,
                  textodeAbajo: "e indica la formación de una nueva sílaba que empieza con el sonido \n \n #n#"
                )
              ],
              excepciones: nil
            ),
            Tarjeta(audio: "mp_g3_02",
              silabas: [
                Silaba(
                  palabras: [
                    Palabra(palabra: "deu*x*", enGriego: "d&Œ&")
                  ],
                  pronuciacion: "deux",
                  explicacion: """
                                ~x~ no transcribe ningún sonido
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "deu*x ans*", enGriego: "d&Œ&.zɑ̃"),
                    Palabra(palabra: "deu*x heures*", enGriego: "d&Œ&.z&Œ&ʀ"),
                    Palabra(palabra: "deu*x euros*", enGriego: "d&Œ&.z&Œ&.ʀo")
                  ],
                  pronuciacion: "deux",
                  explicacion: """
                                 Antes de ~ans~, ~heures~, ~euros~ \n\n ~x~ indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: "retro_3B-gpo3_n3",
                  textodeAbajo: nil
                ),
              ],
              excepciones: nil
            ),
            Tarjeta(audio: "mp_g3_03",
              silabas: [
                Silaba(
                  palabras: [
                    Palabra(palabra: "troi*s*", enGriego: "tʀwa")
                  ],
                  pronuciacion: "trois",
                  explicacion: """
                                ~s~ no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "troi*s ans*", enGriego: "tʀwa.zɑ̃"),
                    Palabra(palabra: "troi*s heures*", enGriego: "tʀwa.z&Œ&ʀ"),
                    Palabra(palabra: "troi*s euros*", enGriego: "tʀwa.z&Œ&.ʀo")
                  ],
                  pronuciacion: "trois",
                  explicacion: """
                                 Antes de ~ans~, ~heures~, ~euros~ \n\n ~s~ indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
              ],
              excepciones: nil
            ),
            
            
            Tarjeta(audio: "mp_g3_04",
              silabas: [
                Silaba(
                  palabras: [
                    Palabra(palabra: "si*x*", enGriego: "sis")
                  ],
                  pronuciacion: "six",
                  explicacion: """
                                ~x~ transcribe el sonido
                              """,
                  imagenFonema: "s",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "si*x ans*", enGriego: "si.zɑ̃"),
                    Palabra(palabra: "si*x heures*", enGriego: "si.z&Œ&ʀ"),
                    Palabra(palabra: "si*x euros*", enGriego: "si.z&Œ&.ʀo")
                  ],
                  pronuciacion: "six",
                  explicacion: """
                                 Antes de ~ans~, ~heures~, ~euros~ \n\n ~x~ indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "si*x d*ollars", enGriego: "si.do.laʀ")
                  ],
                  pronuciacion: "six",
                  explicacion: """
                                 Antes de una consonante \n\n ~x~ no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: "retro_3D-gpo3_n3",
                  textodeAbajo: nil
                ),
              ],
              excepciones: nil
            ),
            
            
            Tarjeta(audio: "mp_g3_05",
              silabas: [
                Silaba(
                  palabras: [
                    Palabra(palabra: "hui*t*", enGriego: "ɥit")
                  ],
                  pronuciacion: "huit",
                  explicacion: """
                                ~t~ transcribe el sonido
                              """,
                  imagenFonema: "t",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "hui*t ans*", enGriego: "ɥi.tɑ̃"),
                    Palabra(palabra: "hui*t heures*", enGriego: "ɥi.t&Œ&ʀ"),
                    Palabra(palabra: "hui*t euros*", enGriego: "ɥi.t&Œ&.ʀo")
                  ],
                  pronuciacion: "huit",
                  explicacion: """
                                 Antes de ~ans~, ~heures~, ~euros~ \n\n ~t~ indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "t",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "hui*t p*esos", enGriego: "ɥi.pᴇ.zos")
                  ],
                  pronuciacion: "huit",
                  explicacion: """
                                 Antes de una consonante \n\n ~t~ no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
              ],
              excepciones: nil
            ),
            
            
            Tarjeta(audio: "mp_g3_06",
              silabas: [
                Silaba(
                  palabras: [
                    Palabra(palabra: "neu*f*", enGriego: "n&Œ&f")
                  ],
                  pronuciacion: "neuf",
                  explicacion: """
                                ~f~ transcribe el sonido
                              """,
                  imagenFonema: "f",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "neu*f euros*", enGriego: "n&Œ&.f&Œ&.ʀo")
                  ],
                  pronuciacion: "neuf ",
                  explicacion: """
                                 Antes de ~euros~ \n\n ~f~ indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "f",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "neu*f ans*", enGriego: "n&Œ&.vɑ̃"),
                    Palabra(palabra: "neu*f heures*", enGriego: "n&Œ&.v&Œ&ʀ"),
                  ],
                  pronuciacion: "neuf",
                  explicacion: """
                                 Antes de ~ans~ y ~heures~ \n\n ~f~ indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "v",
                  imagenConsejo: "retro_3F-gpo3_n3",
                  textodeAbajo: nil
                ),
              ],
              excepciones: nil
            ),
            
            
            Tarjeta(audio: "mp_g3_07",
              silabas: [
                Silaba(
                  palabras: [
                    Palabra(palabra: "di*x*", enGriego: "dis")
                  ],
                  pronuciacion: "dix",
                  explicacion: """
                                ~x~ transcribe el sonido
                              """,
                  imagenFonema: "s",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "di*x ans*", enGriego: "di.zɑ̃"),
                    Palabra(palabra: "di*x heures*", enGriego: "di.z&Œ&ʀ"),
                    Palabra(palabra: "di*x euros*", enGriego: "di.z&Œ&.ʀo")
                  ],
                  pronuciacion: "dix",
                  explicacion: """
                                 Antes de ~ans~, ~heures~, ~euros~ 	\n\n ~x~ indica la formación de una nueva sílaba que empieza con el sonido
                              """,
                  imagenFonema: "z",
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "di*x c*entimes", enGriego: "di.sɑ̃.tim")
                  ],
                  pronuciacion: "dix",
                  explicacion: """
                                 Antes de una consonante \n\n ~x~ no transcribe ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
              ],
              excepciones: nil
            ),
            
            Tarjeta(audio: "mp_g3_08",
              silabas: [
                Silaba(
                  palabras: [
                    Palabra(palabra: "vin*gt*", enGriego: "vɛ̃")
                  ],
                  pronuciacion: "vingt",
                  explicacion: """
                                ~gt~ no transcriben ningún sonido.
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: nil
                ),
                Silaba(
                  palabras: [
                    Palabra(palabra: "vin*gt ans*", enGriego: "vɛ̃.tɑ̃"),
                    Palabra(palabra: "vin*gt heures*", enGriego: "vɛ̃.t&Œ&ʀ"),
                    Palabra(palabra: "vin*gt euros*", enGriego: "vɛ̃.t&Œ&.ʀo")
                  ],
                  pronuciacion: "vingt",
                  explicacion: """
                                 Antes de ~ans~, ~heures~, ~euros~ \n\n ~g~ no transcribe ningún sonido
                              """,
                  imagenFonema: sinSonidoGP,
                  imagenConsejo: nil,
                  textodeAbajo: "~t~ indica la formación de una nueva sílaba que empieza con el sonido \n\n #t#"
                )
              ],
              excepciones: nil
            ),
            
            
        ]
        ),
        
    ]
}



extension Data{
    
    static let loteria1:Loteria = Loteria(parejasLoteria: [
        ParejaLoteria(sonido: "lot1_01", palabra: "aucun intérêt"),
        ParejaLoteria(sonido: "lot1_02", palabra: "aucun doute"),
        ParejaLoteria(sonido: "lot1_03", palabra: "des sportifs"),
        ParejaLoteria(sonido: "lot1_04", palabra: "des féministes"),
        ParejaLoteria(sonido: "lot1_05", palabra: "des ennemis"),
        ParejaLoteria(sonido: "lot1_06", palabra: "des artistes"),
        ParejaLoteria(sonido: "lot1_07", palabra: "en face"),
        ParejaLoteria(sonido: "lot1_08", palabra: "en hiver"),
        ParejaLoteria(sonido: "lot1_09", palabra: "en Italie"),
        ParejaLoteria(sonido: "lot1_10", palabra: "grands yeux"),
        ParejaLoteria(sonido: "lot1_11", palabra: "grands magasins"),
        ParejaLoteria(sonido: "lot1_12", palabra: "les autres"),
        ParejaLoteria(sonido: "lot1_13", palabra: "les femmes"),
        ParejaLoteria(sonido: "lot1_14", palabra: "moins bien"),
        ParejaLoteria(sonido: "lot1_15", palabra: "moins important"),
        ParejaLoteria(sonido: "lot1_16", palabra: "mon amour"),
        ParejaLoteria(sonido: "lot1_17", palabra: "ton frère"),
        ParejaLoteria(sonido: "lot1_18", palabra: "son amie"),
        ParejaLoteria(sonido: "lot1_19", palabra: "un film"),
        ParejaLoteria(sonido: "lot1_20", palabra: "un homme"),
        ParejaLoteria(sonido: "lot1_21", palabra: "bon exemple"),
        ParejaLoteria(sonido: "lot1_22", palabra: "bien informé"),
        ParejaLoteria(sonido: "lot1_23", palabra: "plus âgé"),
        ParejaLoteria(sonido: "lot1_24", palabra: "dernier étage"),
        ParejaLoteria(sonido: "lot1_25", palabra: "quelles idées"),
        ParejaLoteria(sonido: "lot1_26", palabra: "ils pleurent"),
        ParejaLoteria(sonido: "lot1_27", palabra: "elles adorent"),
        ParejaLoteria(sonido: "lot1_28", palabra: "je les connais"),
        ParejaLoteria(sonido: "lot1_29", palabra: "je les aime"),
        ParejaLoteria(sonido: "lot1_30", palabra: "nous sommes 43"),
        ParejaLoteria(sonido: "lot1_31", palabra: "vous avez raison"),
        ParejaLoteria(sonido: "lot1_32", palabra: "elles entrent"),
        ParejaLoteria(sonido: "lot1_33", palabra: "tu entres"),
        ParejaLoteria(sonido: "lot1_34", palabra: "elles y pensent"),
        ParejaLoteria(sonido: "lot1_35", palabra: "ils en achètent"),
        ParejaLoteria(sonido: "lot1_36", palabra: "elles se lèvent"),
        ParejaLoteria(sonido: "lot1_37", palabra: "ils me parlent"),
        ParejaLoteria(sonido: "lot1_38", palabra: "allez-y"),
        ParejaLoteria(sonido: "lot1_39", palabra: "prends-en"),
        ParejaLoteria(sonido: "lot1_40", palabra: "elles hésitent"),
        ParejaLoteria(sonido: "lot1_41", palabra: "ils cuisinent"),
        ParejaLoteria(sonido: "lot1_42", palabra: "on insiste"),
        ParejaLoteria(sonido: "lot1_43", palabra: "on arrive"),
        ParejaLoteria(sonido: "lot1_44", palabra: "on chante"),
        ParejaLoteria(sonido: "lot1_45", palabra: "on craque"),
        ParejaLoteria(sonido: "lot1_46", palabra: "on en a envie"),
        ParejaLoteria(sonido: "lot1_47", palabra: "on y croit"),
        ParejaLoteria(sonido: "lot1_48", palabra: "en attendant"),
        ParejaLoteria(sonido: "lot1_49", palabra: "j'en veux"),
        ParejaLoteria(sonido: "lot1_50", palabra: "on a le trac")
    ])
    
    static let loteria2:Loteria = Loteria(parejasLoteria: [
        ParejaLoteria(sonido: "lot2_01", palabra: "31 ans"),
        ParejaLoteria(sonido: "lot2_02", palabra: "21 ans"),
        ParejaLoteria(sonido: "lot2_03", palabra: "1 an"),
        ParejaLoteria(sonido: "lot2_04", palabra: "1 €"),
        ParejaLoteria(sonido: "lot2_05", palabra: "＄1"),
        ParejaLoteria(sonido: "lot2_06", palabra: "22 h"),
        ParejaLoteria(sonido: "lot2_07", palabra: "2 h"),
        ParejaLoteria(sonido: "lot2_08", palabra: "2 €"),
        ParejaLoteria(sonido: "lot2_09", palabra: "32 ans"),
        ParejaLoteria(sonido: "lot2_10", palabra: "22 ans"),
        ParejaLoteria(sonido: "lot2_11", palabra: "22"),
        ParejaLoteria(sonido: "lot2_12", palabra: "2"),
        ParejaLoteria(sonido: "lot2_13", palabra: "23 ans"),
        ParejaLoteria(sonido: "lot2_14", palabra: "3h"),
        ParejaLoteria(sonido: "lot2_15", palabra: "23h"),
        ParejaLoteria(sonido: "lot2_16", palabra: "3"),
        ParejaLoteria(sonido: "lot2_17", palabra: "33 ans"),
        ParejaLoteria(sonido: "lot2_18", palabra: "3 ans"),
        ParejaLoteria(sonido: "lot2_19", palabra: "6"),
        ParejaLoteria(sonido: "lot2_20", palabra: "26 ans"),
        ParejaLoteria(sonido: "lot2_21", palabra: "6 ans"),
        ParejaLoteria(sonido: "lot2_22", palabra: "＄6"),
        ParejaLoteria(sonido: "lot2_23", palabra: "6 €"),
        ParejaLoteria(sonido: "lot2_24", palabra: "6 h"),
        ParejaLoteria(sonido: "lot2_25", palabra: "8"),
        ParejaLoteria(sonido: "lot2_26", palabra: "18 ans"),
        ParejaLoteria(sonido: "lot2_27", palabra: "28 ans"),
        ParejaLoteria(sonido: "lot2_28", palabra: "18 h"),
        ParejaLoteria(sonido: "lot2_29", palabra: "8 h"),
        ParejaLoteria(sonido: "lot2_30", palabra: "8 €"),
        ParejaLoteria(sonido: "lot2_31", palabra: "＄8"),
        ParejaLoteria(sonido: "lot2_32", palabra: "＄19"),
        ParejaLoteria(sonido: "lot2_33", palabra: "9"),
        ParejaLoteria(sonido: "lot2_34", palabra: "19"),
        ParejaLoteria(sonido: "lot2_35", palabra: "19 ans"),
        ParejaLoteria(sonido: "lot2_36", palabra: "9 ans"),
        ParejaLoteria(sonido: "lot2_37", palabra: "29 ans"),
        ParejaLoteria(sonido: "lot2_38", palabra: "9 h"),
        ParejaLoteria(sonido: "lot2_39", palabra: "9 €"),
        ParejaLoteria(sonido: "lot2_40", palabra: "70 ans"),
        ParejaLoteria(sonido: "lot2_41", palabra: "10 ans"),
        ParejaLoteria(sonido: "lot2_42", palabra: "10"),
        ParejaLoteria(sonido: "lot2_43", palabra: "10 h"),
        ParejaLoteria(sonido: "lot2_44", palabra: "＄10"),
        ParejaLoteria(sonido: "lot2_45", palabra: "10 €"),
        ParejaLoteria(sonido: "lot2_46", palabra: "20"),
        ParejaLoteria(sonido: "lot2_47", palabra: "20 ans"),
        ParejaLoteria(sonido: "lot2_48", palabra: "20 h"),
        ParejaLoteria(sonido: "lot2_49", palabra: "＄20"),
        ParejaLoteria(sonido: "lot2_50", palabra: "20 €")
    ])
}
