//
//  TriviaViewController.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Trivia{
    let letra: String
    let audio: String
    let respuesta: String
    let incorrecta1: String
    let incorrecta2: String
}

extension Data{
    
    static let trivias: [Trivia] = [
        Trivia(letra: "so",
               audio: "115",
               respuesta: "personne",
               incorrecta1: "chanson",
               incorrecta2: "dessous"),
        Trivia(letra: "sᴇ",
               audio: "113",
               respuesta: "passé",
               incorrecta1: "exposé",
               incorrecta2: "musée"),
        Trivia(letra: "ga",
               audio: "regarde",
               respuesta: "42",
               incorrecta1: "vulgaire",
               incorrecta2: "gant"),
        Trivia(letra: "fɑ̃",
               audio: "37",
               respuesta: "enfant",
               incorrecta1: "infâme",
               incorrecta2: "profane"),
        Trivia(letra: "lᴇ",
               audio: "63",
               respuesta: "haleine",
               incorrecta1: "talent",
               incorrecta2: "le"),
        Trivia(letra: "ku",
               audio: "15",
               respuesta: "beaucoup",
               incorrecta1: "aucun",
               incorrecta2: "accueil"),
        Trivia(letra: "ʃᴇ",
               audio: "153",
               respuesta: "fourchette",
               incorrecta1: "cauchemar",
               incorrecta2: "fraicheur"),
        Trivia(letra: "vu",
               audio: "146",
               respuesta: "avouer",
               incorrecta1: "revue",
               incorrecta2: "imprévu"),
        Trivia(letra: "sõ",
               audio: "119",
               respuesta: "leçon",
               incorrecta1: "maison",
               incorrecta2: "raison"),
        Trivia(letra: "s&Œ&",
               audio: "112",
               respuesta: "danseur",
               incorrecta1: "peser",
               incorrecta2: "oiseau"),
        Trivia(letra: "põ",
               audio: "99",
               respuesta: "réponse",
               incorrecta1: "aéroport",
               incorrecta2: "espoir"),
        Trivia(letra: "ma",
               audio: "71",
               respuesta: "image",
               incorrecta1: "semaine",
               incorrecta2: "animaux"),
        Trivia(letra: "no",
               audio: "85",
               respuesta: "anneau",
               incorrecta1: "mignon",
               incorrecta2: "tournoi"),
        Trivia(letra: "ʒa",
               audio: "51",
               respuesta: "déjà",
               incorrecta1: "magasin",
               incorrecta2: "royal"),
        Trivia(letra: "k&Œ&",
               audio: "12",
               respuesta: "liqueur",
               incorrecta1: "acquérir",
               incorrecta2: "fréquent"),
        Trivia(letra: "dɑ̃",
               audio: "28",
               respuesta: "évident",
               incorrecta1: "madame",
               incorrecta2: "soudain"),
        Trivia(letra: "fᴇ",
               audio: "33",
               respuesta: "chauffer",
               incorrecta1: "feu",
               incorrecta2: "girafe"),
        
        
        Trivia(letra: "ʒᴇ",
               audio: "53",
               respuesta: "charger",
               incorrecta1: "enjeu",
               incorrecta2: "argent"),
        Trivia(letra: "lɑ̃",
               audio: "68",
               respuesta: "talent",
               incorrecta1: "solaire",
               incorrecta2: "vilain"),
        Trivia(letra: "p&Œ&",
               audio: "92",
               respuesta: "thérapeutique",
               incorrecta1: "expérience",
               incorrecta2: "chapeau"),
        Trivia(letra: "ʀᴇ",
               audio: "103",
               respuesta: "opérer",
               incorrecta1: "sculpture",
               incorrecta2: "transparent"),
        
        Trivia(letra: "ʀy",
               audio: "107",
               respuesta: "disparues",
               incorrecta1: "heureuse",
               incorrecta2: "autoroute"),
        
        
        Trivia(letra: "no",
               audio: "85",
               respuesta: "anneau",
               incorrecta1: "mignon",
               incorrecta2: "tournoi"),
        Trivia(letra: "ʒa",
               audio: "51",
               respuesta: "déjà",
               incorrecta1: "magasin",
               incorrecta2: "royal"),
        
        
        Trivia(letra: "k&Œ&",
               audio: "12",
               respuesta: "liqueur",
               incorrecta1: "acquérir",
               incorrecta2: "fréquent"),
        Trivia(letra: "dɑ̃",
               audio: "28",
               respuesta: "évident",
               incorrecta1: "madame",
               incorrecta2: "soudain"),
        Trivia(letra: "fᴇ",
               audio: "33",
               respuesta: "chauffer",
               incorrecta1: "feu",
               incorrecta2: "girafe"),
    
    ]
}

class TriviaViewController: UICollectionViewController {
    
    private let stack: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 10
        stack.alignment = .center
        return stack
    }()
    
    init(collection: UICollectionViewLayout) {
        super.init(collectionViewLayout: collection)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Trivia"
        collectionView.backgroundColor = .colorFondoTarjetasPalabrasEnBoca
        // Do any additional setup after loading the view.
    }

    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(false, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.setToolbarHidden(true, animated: false)
    }
    
    
    
    private var puntaje: UIBarButtonItem = {
        return UIBarButtonItem(title: "Puntos: 0",style: .plain, target: nil, action: nil)
    }()
    
    private var tiempo: UIBarButtonItem = {
        return UIBarButtonItem(title: "Tiempo: 1:00",style: .plain, target: nil, action: nil)
    }()
    
    private var flexibleSpace: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    }()
    func configuracionToolBar(){
        let items = [puntaje,flexibleSpace,tiempo]
        self.toolbarItems = items
        self.navigationController?.setToolbarHidden(false, animated: true)
        self.navigationController?.toolbar.isTranslucent = false
        self.navigationController?.toolbar.barTintColor = .colorTabBarPalabrasEnBoca
        self.navigationController?.toolbar.tintColor = .white
    }
}
