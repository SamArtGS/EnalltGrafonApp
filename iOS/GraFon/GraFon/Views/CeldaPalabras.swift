//
//  CeldaPalabras.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 2021-05-03.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

class CeldaPalabras: UICollectionViewCell {
    
    var silabasVolteadas: [[Palabra]] = [[
        Palabra(palabra: "le*s l*ivres", enGriego:"lᴇ.livʀ"),
        Palabra(palabra: "le*s é*tudiantes", enGriego: "lᴇ.zᴇ.ty.djɑ̃t"),
        Palabra(palabra: "quel*s f*ilms", enGriego: "kᴇl.film"),
        Palabra(palabra: "quel*s a*cteurs", enGriego:"kᴇl.zak.t&Œ&ʀ"),
        Palabra(palabra: "grand*s p*rojets", enGriego: "gʀɑ̃.pʀo.ʒᴇ"),
        Palabra(palabra: "grand*s a*rbres", enGriego: "gʀɑ̃.zaʀbʀ"),
    ],
    [
        Palabra(palabra: "*un d*oute", enGriego: "ɛ̃.dut"),
        Palabra(palabra: "*un e*nfant", enGriego: "ɛ̃.nɑ̃.fɑ̃"),
        Palabra(palabra: "*aucun r*ésultat", enGriego: "o.kɛ̃.ʀᴇ.zyl.ta"),
        Palabra(palabra: "*aucun e*ffort", enGriego: "o.kɛ̃.nᴇ.foʀ"),
    ],
    [
        Palabra(palabra: "*en F*rance", enGriego: "ɑ̃.fʀɑ̃s"),
        Palabra(palabra: "*en A*rgentine", enGriego: "ɑ̃.naʀ.ʒɑ̃.tin"),
        Palabra(palabra: "*en p*lastique", enGriego: "ɑ̃.plas.tik"),
        Palabra(palabra: "*en o*r", enGriego: "ɑ̃.noʀ"),
        Palabra(palabra: "*en t*rois fois", enGriego: "ɑ̃.tʀwa.fwa"),
        Palabra(palabra: "*en u*ne fois", enGriego: "ɑ̃.nyn.fwa"),
    ],
    [
        Palabra(palabra: "elle*s v*isitent", enGriego: "ᴇl.vi.zit"),
        Palabra(palabra: "elle*s a*iment", enGriego: "ᴇl.zᴇm"),
        Palabra(palabra: "nou*s p*arlons", enGriego: "nu.paʀ.lõ"),
        Palabra(palabra: "nou*s h*abitons", enGriego: "nu.za.bi.tõ"),
        Palabra(palabra: "je le*s t*rouve", enGriego: "ʒ&Œ&.lᴇ.tʀuv"),
        Palabra(palabra: "je le*s a*ime", enGriego: "ʒ&Œ&.lᴇ.zᴇm"),
    ],
    [
        Palabra(palabra: "ºelleºªs tªºe proposentº", enGriego: "ᴇl.t&Œ&.pʀo.poz"),
        Palabra(palabra: "elle*s y* pensent", enGriego: "ᴇl.zi.pɑ̃s"),
        Palabra(palabra: "vou*s l*ui parlez", enGriego: "vu.lɥi.paʀ.lᴇ"),
        Palabra(palabra: "vou*s en* voulez ", enGriego: "vu.zɑ̃.vu.lᴇ")
    ],
    [
        Palabra(palabra: "va*s-y*", enGriego: "va.zi"),
        Palabra(palabra: "allon*s-y*", enGriego: "a.lõ.zi"),
        Palabra(palabra: "prene*z-en*", enGriego: "pʀ&Œ&.nᴇ.zɑ̃")
    ],
    [
        Palabra(palabra: "répon*d-il*?", enGriego: "ʀᴇ.põ.til"),
        Palabra(palabra: "pleu*t-il*?", enGriego: "pl&Œ&.til"),
        Palabra(palabra: "ºsonºªt-ilsª ºd’accord?º", enGriego: "sõ.til.da.koʀ"),
        Palabra(palabra: "par*t-elle*?", enGriego: "paʀ.tᴇl"),
        Palabra(palabra: "mangen*t-elles*?", enGriego: "mɑ̃ʒ.tᴇl"),
        Palabra(palabra: "atten*d-on*?", enGriego: "a.tɑ̃.tõ")
    ],
    [
        Palabra(palabra: "*on t*raverse", enGriego: "õ.tʀa.vᴇʀs"),
        Palabra(palabra: "*on é*coute", enGriego: "õ.nᴇ.kut"),
        Palabra(palabra: "*on p*ense", enGriego: "õ.pɑ̃s"),
        Palabra(palabra: "*on h*ésite", enGriego: "õ.nᴇ.zit")
    ],
    [
        Palabra(palabra: "*on y* va", enGriego: "õ.ni.va"),
        Palabra(palabra: "*on en* parle", enGriego: "õ.nɑ̃.paʀl")
    ],
    [
        Palabra(palabra: "tu *en m*anges", enGriego: "ty.ɑ̃.mɑ̃ʒ"),
        Palabra(palabra: "tu *en a*chètes", enGriego: "ty.ɑ̃.na.ʃᴇt"),
        Palabra(palabra: "*en p*artant", enGriego: "ɑ̃.paʀ.tɑ̃"),
        Palabra(palabra: "*en h*ésitant", enGriego: "ɑ̃.nᴇ.zi.tɑ̃"),
    ],
    [
        Palabra(palabra: "tu *en m*anges", enGriego: "ty.ɑ̃.mɑ̃ʒ"),
        Palabra(palabra: "tu *en a*chètes", enGriego: "ty.ɑ̃.na.ʃᴇt"),
        Palabra(palabra: "*en p*artant", enGriego: "ɑ̃.paʀ.tɑ̃"),
        Palabra(palabra: "*en h*ésitant", enGriego: "ɑ̃.nᴇ.zi.tɑ̃"),
    ]
    ]
    
    var mezclado: Bool = false
    var cualEsVoletada: Int? {
        didSet{
            guard cualEsVoletada != nil else {
                return
            }
            mezclado = true
        }
    }
    
    
    lazy var texto: String = ""
    
    var palabrasEnTarjeta: Tarjeta? {
        didSet {
            texto.removeAll()
            guard let destapado = palabrasEnTarjeta else { return }
            
            
            switch destapado {
            case Data.grupoPalabras[0].tarjetas![0]:
                for palabra in silabasVolteadas[0]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
                
            case Data.grupoPalabras[0].tarjetas![1]:
                for palabra in silabasVolteadas[1]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
                
            case Data.grupoPalabras[0].tarjetas![3]:
                for palabra in silabasVolteadas[2]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            
            case Data.grupoPalabras[1].tarjetas![0]:
                for palabra in silabasVolteadas[3]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            case Data.grupoPalabras[1].tarjetas![1]:
                for palabra in silabasVolteadas[4]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            case Data.grupoPalabras[1].tarjetas![2]:
                for palabra in silabasVolteadas[5]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            case Data.grupoPalabras[1].tarjetas![3]:
                for palabra in silabasVolteadas[6]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            case Data.grupoPalabras[1].tarjetas![4]:
                for palabra in silabasVolteadas[7]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            case Data.grupoPalabras[1].tarjetas![5]:
                for palabra in silabasVolteadas[8]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            case Data.grupoPalabras[1].tarjetas![6]:
                for palabra in silabasVolteadas[9]{
                    texto.append(palabra.palabra)
                    texto.append("\n")
                }
            default:
                for silaba in destapado.silabas{
                    for palabra in silaba.palabras{
                        texto.append(palabra.palabra)
                        texto.append("\n")
                    }
                }
                break
            }
            palabrerio.text = texto
            
        }
    }
    
    private let imagenPergamino: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "icons8-paper")
        return imageView
    }()
    
    let palabrerio: UILabelPersonalizado = {
        let etiqueta = UILabelPersonalizado()
        etiqueta.font = .Roboto(.italic, size: Tamanio.letraCafeTarjetasMenu)
        etiqueta.textColor = .colorLetras
        etiqueta.translatesAutoresizingMaskIntoConstraints = false
        etiqueta.numberOfLines = 0
        etiqueta.textAlignment = .left
        etiqueta.sizeToFit()
        etiqueta.contentMode = .scaleAspectFit
        return etiqueta
    }()
    
    func configurarConstraints(){
        translatesAutoresizingMaskIntoConstraints = false
        contentMode = .scaleAspectFit
        imagenPergamino.addSubview(palabrerio)
        addSubview(imagenPergamino)
        
        NSLayoutConstraint.activate([
            imagenPergamino.topAnchor.constraint(equalTo: topAnchor),
            imagenPergamino.leadingAnchor.constraint(equalTo: leadingAnchor),
            imagenPergamino.trailingAnchor.constraint(equalTo: trailingAnchor),
            imagenPergamino.bottomAnchor.constraint(equalTo: bottomAnchor),
            palabrerio.topAnchor.constraint(equalTo: imagenPergamino.topAnchor),
            palabrerio.leadingAnchor.constraint(equalTo: imagenPergamino.leadingAnchor, constant: 10),
            palabrerio.trailingAnchor.constraint(equalTo: imagenPergamino.trailingAnchor),
            palabrerio.bottomAnchor.constraint(equalTo: imagenPergamino.bottomAnchor),
        ])
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurarConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Se reclama Celda de tarjeta")
    }
}
