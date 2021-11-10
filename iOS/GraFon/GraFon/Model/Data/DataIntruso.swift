//
//  DataIntruso.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 8/24/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

extension Data{
    
    static let hojasImagenes: [HojaImagen] = [
        HojaImagen(imagenNormal: "n2_jgo_hoja_01",
                   imagenBien: "n2_jgo_hoja_01_acierto",
                   imagenQuebrada: "n2_jgo_hoja_01_perdida"),
        HojaImagen(imagenNormal: "n2_jgo_hoja_02",
                   imagenBien: "n2_jgo_hoja_02_acierto",
                   imagenQuebrada: "n2_jgo_hoja_02_perdida"),
        HojaImagen(imagenNormal: "n2_jgo_hoja_03",
                   imagenBien: "n2_jgo_hoja_03_acierto",
                   imagenQuebrada: "n2_jgo_hoja_03_perdida"),
        HojaImagen(imagenNormal: "n2_jgo_hoja_04",
                   imagenBien: "n2_jgo_hoja_04_acierto",
                   imagenQuebrada: "n2_jgo_hoja_04_perdida"),
        HojaImagen(imagenNormal: "n2_jgo_hoja_05",
                   imagenBien: "n2_jgo_hoja_05_acierto",
                   imagenQuebrada: "n2_jgo_hoja_05_perdida"),
        HojaImagen(imagenNormal: "n2_jgo_hoja_06",
                   imagenBien: "n2_jgo_hoja_06_acierto",
                   imagenQuebrada: "n2_jgo_hoja_06_perdida")
    ]
    
    static let intrusos:[ContenidoHoja] = [
        
        //HOJAS Õ
        //
            //BIEN
        ContenidoHoja(palabra: "tome",      sonido: 1),
        ContenidoHoja(palabra: "somnoler",  sonido: 1),
        ContenidoHoja(palabra: "connaitre", sonido: 1),
        ContenidoHoja(palabra: "oppressé",  sonido: 1),
        ContenidoHoja(palabra: "automne",   sonido: 1),
        ContenidoHoja(palabra: "pomme",     sonido: 1),
        ContenidoHoja(palabra: "monsieur",  sonido: 1),
        ContenidoHoja(palabra: "poste",     sonido: 1),
        ContenidoHoja(palabra: "opprimé",   sonido: 1),
        ContenidoHoja(palabra: "connu",     sonido: 1),
        ContenidoHoja(palabra: "immoral",   sonido: 1),
        ContenidoHoja(palabra: "insomnie",  sonido: 1),
        ContenidoHoja(palabra: "domino",    sonido: 1),
        ContenidoHoja(palabra: "morale",    sonido: 1),
        ContenidoHoja(palabra: "bonne",     sonido: 1),
        ContenidoHoja(palabra: "bonus",     sonido: 1),
        ContenidoHoja(palabra: "bonnet",    sonido: 1),
        ContenidoHoja(palabra: "bonheur",   sonido: 1),
        ContenidoHoja(palabra: "comité",    sonido: 1),
        ContenidoHoja(palabra: "fromage",   sonido: 1),
        
            //MAL
        ContenidoHoja(palabra: "carton",    sonido: -1),
        ContenidoHoja(palabra: "ton",       sonido: -1),
        ContenidoHoja(palabra: "prénom",    sonido: -1),
        ContenidoHoja(palabra: "sombre",    sonido: -1),
        ContenidoHoja(palabra: "pronom",    sonido: -1),
        ContenidoHoja(palabra: "thon",      sonido: -1),
        ContenidoHoja(palabra: "bon",       sonido: -1),
        ContenidoHoja(palabra: "pont",      sonido: -1),
        ContenidoHoja(palabra: "on",        sonido: -1),
        ContenidoHoja(palabra: "nom",       sonido: -1),
        ContenidoHoja(palabra: "mon",       sonido: -1),
        ContenidoHoja(palabra: "onde",      sonido: -1),
        ContenidoHoja(palabra: "ronde",     sonido: -1),
        ContenidoHoja(palabra: "pompe",     sonido: -1),
        ContenidoHoja(palabra: "bombe",     sonido: -1),
        ContenidoHoja(palabra: "plomb",     sonido: -1),
        ContenidoHoja(palabra: "ombre",     sonido: -1),
        ContenidoHoja(palabra: "donc",      sonido: -1),
        ContenidoHoja(palabra: "blonde",    sonido: -1),
        ContenidoHoja(palabra: "avion",     sonido: -1),
        ContenidoHoja(palabra: "camion",    sonido: -1),
        ContenidoHoja(palabra: "breton",    sonido: -1),
        ContenidoHoja(palabra: "bronzé",    sonido: -1),
        ContenidoHoja(palabra: "action",    sonido: -1),
        ContenidoHoja(palabra: "son",       sonido: -1),
        ContenidoHoja(palabra: "blouson",   sonido: -1),
        ContenidoHoja(palabra: "annonce",   sonido: -1),
        ContenidoHoja(palabra: "boisson",   sonido: -1),
        ContenidoHoja(palabra: "combat",    sonido: -1),
        ContenidoHoja(palabra: "compris",   sonido: -1),
        
        //LISTA Ã
        ContenidoHoja(palabra: "chat",      sonido: 2),
        ContenidoHoja(palabra: "salle",     sonido: 2),
        ContenidoHoja(palabra: "pâte",      sonido: 2),
        ContenidoHoja(palabra: "âge",       sonido: 2),
        ContenidoHoja(palabra: "tâches",    sonido: 2),
        ContenidoHoja(palabra: "grâce",     sonido: 2),
        ContenidoHoja(palabra: "travail",   sonido: 2),
        ContenidoHoja(palabra: "détail",    sonido: 2),
        ContenidoHoja(palabra: "grammatical",    sonido: 2),
        ContenidoHoja(palabra: "amie",           sonido: 2),
        ContenidoHoja(palabra: "dame",           sonido: 2),
        ContenidoHoja(palabra: "amnésie",        sonido: 2),
        ContenidoHoja(palabra: "année",          sonido: 2),
        ContenidoHoja(palabra: "animal",         sonido: 2),
        ContenidoHoja(palabra: "banane",         sonido: 2),
        ContenidoHoja(palabra: "examen",         sonido: 2),
        ContenidoHoja(palabra: "bien",           sonido: 2),
        ContenidoHoja(palabra: "rien",           sonido: 2),
        ContenidoHoja(palabra: "chien",          sonido: 2),
        ContenidoHoja(palabra: "moyen",          sonido: 2),
        
        ContenidoHoja(palabra: "camp",      sonido: -2),
        ContenidoHoja(palabra: "champ",     sonido: -2),
        ContenidoHoja(palabra: "jambe",     sonido: -2),
        ContenidoHoja(palabra: "chambre",   sonido: -2),
        ContenidoHoja(palabra: "ample",     sonido: -2),
        ContenidoHoja(palabra: "lampe",     sonido: -2),
        ContenidoHoja(palabra: "diamant",   sonido: -2),
        ContenidoHoja(palabra: "ambulant",  sonido: -2),
        ContenidoHoja(palabra: "emporter",  sonido: -2),
        ContenidoHoja(palabra: "emploi",    sonido: -2),
        ContenidoHoja(palabra: "employé",   sonido: -2),
        ContenidoHoja(palabra: "tympan",    sonido: -2),
        ContenidoHoja(palabra: "toucan",    sonido: -2),
        ContenidoHoja(palabra: "dimanche",  sonido: -2),
        ContenidoHoja(palabra: "planche",   sonido: -2),
        ContenidoHoja(palabra: "dans",      sonido: -2),
        ContenidoHoja(palabra: "sans",      sonido: -2),
        ContenidoHoja(palabra: "écran",     sonido: -2),
        ContenidoHoja(palabra: "en",        sonido: -2),
        ContenidoHoja(palabra: "entre",     sonido: -2),
        ContenidoHoja(palabra: "centre",    sonido: -2),
        ContenidoHoja(palabra: "penser",    sonido: -2),
        ContenidoHoja(palabra: "censure",   sonido: -2),
        ContenidoHoja(palabra: "absence",   sonido: -2),
        ContenidoHoja(palabra: "cent",      sonido: -2),
        ContenidoHoja(palabra: "patient",   sonido: -2),
        ContenidoHoja(palabra: "absent",    sonido: -2),
        ContenidoHoja(palabra: "carence",   sonido: -2),
        ContenidoHoja(palabra: "cohérent",  sonido: -2),
        ContenidoHoja(palabra: "client",    sonido: -2),
        
        
        
        //LISTA ɛ̃
        ContenidoHoja(palabra: "deviner",   sonido: 3),
        ContenidoHoja(palabra: "inutile",   sonido: 3),
        ContenidoHoja(palabra: "inné",      sonido: 3),
        ContenidoHoja(palabra: "aimer",     sonido: 3),
        ContenidoHoja(palabra: "saine",     sonido: 3),
        ContenidoHoja(palabra: "humaine",   sonido: 3),
        ContenidoHoja(palabra: "veinard",   sonido: 3),
        ContenidoHoja(palabra: "baleine",   sonido: 3),
        ContenidoHoja(palabra: "pleine",    sonido: 3),
        ContenidoHoja(palabra: "immigré",   sonido: 3),
        ContenidoHoja(palabra: "imaginer",  sonido: 3),
        ContenidoHoja(palabra: "victime",   sonido: 3),
        ContenidoHoja(palabra: "synonyme",  sonido: 3),
        ContenidoHoja(palabra: "hymne",     sonido: 3),
        ContenidoHoja(palabra:"gymnastique",sonido: 3),
        ContenidoHoja(palabra: "abdomen",   sonido: 3),
        ContenidoHoja(palabra: "pollen",    sonido: 3),
        ContenidoHoja(palabra: "moyenne",   sonido: 3),
        ContenidoHoja(palabra: "citoyenne", sonido: 3),
        ContenidoHoja(palabra: "patrimoine",sonido: 3),
        
        
        ContenidoHoja(palabra: "vin",       sonido: -3),
        ContenidoHoja(palabra: "vingt",     sonido: -3),
        ContenidoHoja(palabra: "inviter",   sonido: -3),
        ContenidoHoja(palabra: "incertain", sonido: -3),
        ContenidoHoja(palabra: "pincer",    sonido: -3),
        ContenidoHoja(palabra: "faim",      sonido: -3),
        ContenidoHoja(palabra: "pain",      sonido: -3),
        ContenidoHoja(palabra: "humain",    sonido: -3),
        ContenidoHoja(palabra: "ainsi",     sonido: -3),
        ContenidoHoja(palabra: "plein",     sonido: -3),
        ContenidoHoja(palabra: "peintre",   sonido: -3),
        ContenidoHoja(palabra: "sein",      sonido: -3),
        ContenidoHoja(palabra: "imbécile",  sonido: -3),
        ContenidoHoja(palabra: "impossible",sonido: -3),
        ContenidoHoja(palabra: "important", sonido: -3),
        ContenidoHoja(palabra: "simple",    sonido: -3),
        ContenidoHoja(palabra: "syndicat",  sonido: -3),
        ContenidoHoja(palabra: "symbole",   sonido: -3),
        ContenidoHoja(palabra: "syntaxe",   sonido: -3),
        ContenidoHoja(palabra: "symphonie", sonido: -3),
        ContenidoHoja(palabra: "thym",      sonido: -3),
        ContenidoHoja(palabra: "bien",      sonido: -3),
        ContenidoHoja(palabra: "chien",     sonido: -3),
        ContenidoHoja(palabra: "chilien",   sonido: -3),
        ContenidoHoja(palabra: "examen",    sonido: -3),
        ContenidoHoja(palabra: "européen",  sonido: -3),
        ContenidoHoja(palabra: "lycéen",    sonido: -3),
        ContenidoHoja(palabra: "moyen",     sonido: -3),
        ContenidoHoja(palabra: "loin",      sonido: -3),
        ContenidoHoja(palabra: "coin",      sonido: -3),
        
        
        
        //LISTA Œ
        ContenidoHoja(palabra: "les",       sonido: 4),
        ContenidoHoja(palabra: "mes",       sonido: 4),
        ContenidoHoja(palabra: "tes",       sonido: 4),
        ContenidoHoja(palabra: "ses",       sonido: 4),
        ContenidoHoja(palabra: "sienne",    sonido: 4),
        ContenidoHoja(palabra: "moyenne",   sonido: 4),
        ContenidoHoja(palabra: "ancienne",  sonido: 4),
        ContenidoHoja(palabra: "samedi",    sonido: 4),
        ContenidoHoja(palabra: "cette",     sonido: 4),
        ContenidoHoja(palabra: "lettre",    sonido: 4),
        ContenidoHoja(palabra: "verre",     sonido: 4),
        ContenidoHoja(palabra: "peau",      sonido: 4),
        ContenidoHoja(palabra: "coercitif", sonido: 4),
        ContenidoHoja(palabra: "coexister", sonido: 4),
        ContenidoHoja(palabra: "chez",      sonido: 4),
        ContenidoHoja(palabra: "exquis",    sonido: 4),
        ContenidoHoja(palabra: "Noël",      sonido: 4),
        ContenidoHoja(palabra: "coopérer",  sonido: 4),
        ContenidoHoja(palabra: "insomnie",  sonido: 4),
        ContenidoHoja(palabra: "pôle",      sonido: 4),
        
        
        ContenidoHoja(palabra: "le",        sonido: -4),
        ContenidoHoja(palabra: "me",        sonido: -4),
        ContenidoHoja(palabra: "je",        sonido: -4),
        ContenidoHoja(palabra: "degré",     sonido: -4),
        ContenidoHoja(palabra: "que",       sonido: -4),
        ContenidoHoja(palabra: "reprendre", sonido: -4),
        ContenidoHoja(palabra: "dessous",   sonido: -4),
        ContenidoHoja(palabra: "tristement",sonido: -4),
        ContenidoHoja(palabra: "mercredi",  sonido: -4),
        ContenidoHoja(palabra: "peu",       sonido: -4),
        ContenidoHoja(palabra: "euro",      sonido: -4),
        ContenidoHoja(palabra: "européen",  sonido: -4),
        ContenidoHoja(palabra: "devoir",    sonido: -4),
        ContenidoHoja(palabra: "ennuyeux",  sonido: -4),
        ContenidoHoja(palabra: "erreur",    sonido: -4),
        ContenidoHoja(palabra: "ressource", sonido: -4),
        ContenidoHoja(palabra: "ressembler",sonido: -4),
        ContenidoHoja(palabra: "ressentir", sonido: -4),
        ContenidoHoja(palabra: "monsieur",  sonido: -4),
        ContenidoHoja(palabra: "ceux",      sonido: -4),
        ContenidoHoja(palabra: "généreux",  sonido: -4),
        ContenidoHoja(palabra: "bleu",      sonido: -4),
        ContenidoHoja(palabra: "mieux",     sonido: -4),
        ContenidoHoja(palabra: "adieu",     sonido: -4),
        ContenidoHoja(palabra: "sœur",      sonido: -4),
        ContenidoHoja(palabra: "cœur",      sonido: -4),
        ContenidoHoja(palabra: "accueil",   sonido: -4),
        ContenidoHoja(palabra: "œuf",       sonido: -4),
        ContenidoHoja(palabra: "heure",     sonido: -4),
        
        
        //LISTA ᴇ
        ContenidoHoja(palabra: "table",       sonido: 5),
        ContenidoHoja(palabra: "amie",        sonido: 5),
        ContenidoHoja(palabra: "encre",       sonido: 5),
        ContenidoHoja(palabra: "annonce",     sonido: 5),
        ContenidoHoja(palabra: "absence",     sonido: 5),
        ContenidoHoja(palabra: "petit",       sonido: 5),
        ContenidoHoja(palabra: "tristement",  sonido: 5),
        ContenidoHoja(palabra: "entre",       sonido: 5),
        ContenidoHoja(palabra: "centre",      sonido: 5),
        ContenidoHoja(palabra: "lent",        sonido: 5),
        ContenidoHoja(palabra: "censure",     sonido: 5),
        ContenidoHoja(palabra: "vent",        sonido: 5),
        ContenidoHoja(palabra: "bien",        sonido: 5),
        ContenidoHoja(palabra: "rien",        sonido: 5),
        ContenidoHoja(palabra: "chien",       sonido: 5),
        ContenidoHoja(palabra: "lien",        sonido: 5),
        ContenidoHoja(palabra: "ceux",        sonido: 5),
        ContenidoHoja(palabra: "cœur",        sonido: 5),
        ContenidoHoja(palabra: "glace",       sonido: 5),
        ContenidoHoja(palabra: "emploi",      sonido: 5),
        
        //MAL
        ContenidoHoja(palabra: "mexicaine",  sonido: -5),
        ContenidoHoja(palabra: "exiger",     sonido: -5),
        ContenidoHoja(palabra: "les",        sonido: -5),
        ContenidoHoja(palabra: "tes",        sonido: -5),
        ContenidoHoja(palabra: "ses",        sonido: -5),
        ContenidoHoja(palabra: "européenne", sonido: -5),
        ContenidoHoja(palabra: "moyenne",    sonido: -5),
        ContenidoHoja(palabra: "chienne",    sonido: -5),
        ContenidoHoja(palabra: "lycéenne",   sonido: -5),
        ContenidoHoja(palabra: "elle",       sonido: -5),
        ContenidoHoja(palabra: "effort",     sonido: -5),
        ContenidoHoja(palabra: "essai",      sonido: -5),
        ContenidoHoja(palabra: "estomac",    sonido: -5),
        ContenidoHoja(palabra: "dilemme",    sonido: -5),
        ContenidoHoja(palabra: "terre",      sonido: -5),
        ContenidoHoja(palabra: "belle",      sonido: -5),
        ContenidoHoja(palabra: "lettre",     sonido: -5),
        ContenidoHoja(palabra: "air",        sonido: -5),
        ContenidoHoja(palabra: "aigu",       sonido: -5),
        ContenidoHoja(palabra: "mais",       sonido: -5),
        ContenidoHoja(palabra: "balai",      sonido: -5),
        ContenidoHoja(palabra: "maison",     sonido: -5),
        ContenidoHoja(palabra: "pair",       sonido: -5),
        ContenidoHoja(palabra: "horaire",    sonido: -5),
        ContenidoHoja(palabra: "fait",       sonido: -5),
        ContenidoHoja(palabra: "mère",       sonido: -5),
        ContenidoHoja(palabra: "fête",       sonido: -5),
        ContenidoHoja(palabra: "treize",     sonido: -5),
        ContenidoHoja(palabra: "pays",       sonido: -5),
        ContenidoHoja(palabra: "payer",      sonido: -5),
        
        
        
        //LISTA o
        ContenidoHoja(palabra: "ou",       sonido: 6),
        ContenidoHoja(palabra: "nous",     sonido: 6),
        ContenidoHoja(palabra: "où",       sonido: 6),
        ContenidoHoja(palabra: "trouer",   sonido: 6),
        ContenidoHoja(palabra: "courir",   sonido: 6),
        ContenidoHoja(palabra: "coupon",   sonido: 6),
        ContenidoHoja(palabra: "mon",      sonido: 6),
        ContenidoHoja(palabra: "pont",     sonido: 6),
        ContenidoHoja(palabra: "sombre",   sonido: 6),
        ContenidoHoja(palabra: "bon",      sonido: 6),
        ContenidoHoja(palabra: "mois",     sonido: 6),
        ContenidoHoja(palabra: "roi",      sonido: 6),
        ContenidoHoja(palabra: "fois",     sonido: 6),
        ContenidoHoja(palabra: "loin",     sonido: 6),
        ContenidoHoja(palabra: "coin",     sonido: 6),
        ContenidoHoja(palabra: "choix",    sonido: 6),
        ContenidoHoja(palabra: "voyage",   sonido: 6),
        ContenidoHoja(palabra: "citoyen",  sonido: 6),
        ContenidoHoja(palabra: "sœur",     sonido: 6),
        ContenidoHoja(palabra: "œuvre",    sonido: 6),
        
        //MAL
        ContenidoHoja(palabra: "au",         sonido: -6),
        ContenidoHoja(palabra: "eau",        sonido: -6),
        ContenidoHoja(palabra: "cause",      sonido: -6),
        ContenidoHoja(palabra: "aussi",      sonido: -6),
        ContenidoHoja(palabra: "beau",       sonido: -6),
        ContenidoHoja(palabra: "chaud",      sonido: -6),
        ContenidoHoja(palabra: "tableau",    sonido: -6),
        ContenidoHoja(palabra: "morceau",    sonido: -6),
        ContenidoHoja(palabra: "berceau",    sonido: -6),
        ContenidoHoja(palabra: "faux",       sonido: -6),
        ContenidoHoja(palabra: "accord",     sonido: -6),
        ContenidoHoja(palabra: "tome",       sonido: -6),
        ContenidoHoja(palabra: "loto",       sonido: -6),
        ContenidoHoja(palabra: "opprimé",    sonido: -6),
        ContenidoHoja(palabra: "connu",      sonido: -6),
        ContenidoHoja(palabra: "pomme",      sonido: -6),
        ContenidoHoja(palabra: "optique",    sonido: -6),
        ContenidoHoja(palabra: "coopérer",   sonido: -6),
        ContenidoHoja(palabra: "égoïste",    sonido: -6),
        ContenidoHoja(palabra: "coercitif",  sonido: -6),
        ContenidoHoja(palabra: "insomnie",   sonido: -6),
        ContenidoHoja(palabra: "bonne",      sonido: -6),
        ContenidoHoja(palabra: "pôle",       sonido: -6),
        ContenidoHoja(palabra: "porte",      sonido: -6),
        ContenidoHoja(palabra: "note",       sonido: -6),
        ContenidoHoja(palabra: "zone",       sonido: -6),
        ContenidoHoja(palabra: "koala",      sonido: -6),
        ContenidoHoja(palabra: "Noël",       sonido: -6),
        ContenidoHoja(palabra: "adorer",     sonido: -6),
        ContenidoHoja(palabra: "haute",      sonido: -6),
        
        
        
        //LISTA a
        ContenidoHoja(palabra: "pain",     sonido: 7),
        ContenidoHoja(palabra: "faim",     sonido: 7),
        ContenidoHoja(palabra: "aimer",    sonido: 7),
        ContenidoHoja(palabra: "mais",     sonido: 7),
        ContenidoHoja(palabra: "haut",     sonido: 7),
        ContenidoHoja(palabra: "chaud",    sonido: 7),
        ContenidoHoja(palabra: "cause",    sonido: 7),
        ContenidoHoja(palabra: "autre",    sonido: 7),
        ContenidoHoja(palabra: "eau",      sonido: 7),
        ContenidoHoja(palabra: "peau",     sonido: 7),
        ContenidoHoja(palabra: "beau",     sonido: 7),
        ContenidoHoja(palabra: "jambe",    sonido: 7),
        ContenidoHoja(palabra: "camp",     sonido: 7),
        ContenidoHoja(palabra: "champ",    sonido: 7),
        ContenidoHoja(palabra: "plan",     sonido: 7),
        ContenidoHoja(palabra: "océan",    sonido: 7),
        ContenidoHoja(palabra: "chant",    sonido: 7),
        ContenidoHoja(palabra: "plante",   sonido: 7),
        ContenidoHoja(palabra: "pays",     sonido: 7),
        ContenidoHoja(palabra: "pays",     sonido: 7),
    
        //MAL
        ContenidoHoja(palabra: "yoga",          sonido: -7),
        ContenidoHoja(palabra: "acte",          sonido: -7),
        ContenidoHoja(palabra: "affecter",      sonido: -7),
        ContenidoHoja(palabra: "adulte",        sonido: -7),
        ContenidoHoja(palabra: "image",         sonido: -7),
        ContenidoHoja(palabra: "chat",          sonido: -7),
        ContenidoHoja(palabra: "salle",         sonido: -7),
        ContenidoHoja(palabra: "car",           sonido: -7),
        ContenidoHoja(palabra: "camion",        sonido: -7),
        ContenidoHoja(palabra: "madame",        sonido: -7),
        ContenidoHoja(palabra: "drame",         sonido: -7),
        ContenidoHoja(palabra: "pâtes",         sonido: -7),
        ContenidoHoja(palabra: "âge",           sonido: -7),
        ContenidoHoja(palabra: "tâches",        sonido: -7),
        ContenidoHoja(palabra: "grâce",         sonido: -7),
        ContenidoHoja(palabra: "travail",       sonido: -7),
        ContenidoHoja(palabra: "détail",        sonido: -7),
        ContenidoHoja(palabra: "vitrail",       sonido: -7),
        ContenidoHoja(palabra: "ailleurs",      sonido: -7),
        ContenidoHoja(palabra: "taille",        sonido: -7),
        ContenidoHoja(palabra: "amie",          sonido: -7),
        ContenidoHoja(palabra: "maïs",          sonido: -7),
        ContenidoHoja(palabra: "année",         sonido: -7),
        ContenidoHoja(palabra: "annoter",       sonido: -7),
        ContenidoHoja(palabra: "animal",        sonido: -7),
        ContenidoHoja(palabra: "banane",        sonido: -7),
        ContenidoHoja(palabra: "aborder",       sonido: -7),
        ContenidoHoja(palabra: "amnésie",       sonido: -7),
        ContenidoHoja(palabra: "dame",          sonido: -7),
        ContenidoHoja(palabra: "grammatical",   sonido: -7),
        
        
        
        
        //LISTA y
        ContenidoHoja(palabra: "nous",     sonido: 8),
        ContenidoHoja(palabra: "où",     sonido: 8),
        ContenidoHoja(palabra: "acteur",    sonido: 8),
        ContenidoHoja(palabra: "mieux",     sonido: 8),
        ContenidoHoja(palabra: "adieu",     sonido: 8),
        ContenidoHoja(palabra: "deux",    sonido: 8),
        ContenidoHoja(palabra: "humble",    sonido: 8),
        ContenidoHoja(palabra: "qui",    sonido: 8),
        ContenidoHoja(palabra: "cou",      sonido: 8),
        ContenidoHoja(palabra: "fourmi",     sonido: 8),
        ContenidoHoja(palabra: "sous",     sonido: 8),
        ContenidoHoja(palabra: "vous",    sonido: 8),
        ContenidoHoja(palabra: "gout",     sonido: 8),
        ContenidoHoja(palabra: "fou",    sonido: 8),
        ContenidoHoja(palabra: "couter",     sonido: 8),
        ContenidoHoja(palabra: "louer",    sonido: 8),
        ContenidoHoja(palabra: "moustique",    sonido: 8),
        ContenidoHoja(palabra: "jour",   sonido: 8),
        ContenidoHoja(palabra: "roue",     sonido: 8),
        ContenidoHoja(palabra: "bout",     sonido: 8),
    
        //MAL
        ContenidoHoja(palabra: "tu",            sonido: -8),
        ContenidoHoja(palabra: "utile",         sonido: -8),
        ContenidoHoja(palabra: "ému",           sonido: -8),
        ContenidoHoja(palabra: "reçu",          sonido: -8),
        ContenidoHoja(palabra: "sur",           sonido: -8),
        ContenidoHoja(palabra: "tribu",         sonido: -8),
        ContenidoHoja(palabra: "perdu",         sonido: -8),
        ContenidoHoja(palabra: "exclu",         sonido: -8),
        ContenidoHoja(palabra: "bus",           sonido: -8),
        ContenidoHoja(palabra: "annuler",       sonido: -8),
        ContenidoHoja(palabra: "musique",       sonido: -8),
        ContenidoHoja(palabra: "amuser",        sonido: -8),
        ContenidoHoja(palabra: "connu",         sonido: -8),
        ContenidoHoja(palabra: "venue",         sonido: -8),
        ContenidoHoja(palabra: "rue",           sonido: -8),
        ContenidoHoja(palabra: "unir",          sonido: -8),
        ContenidoHoja(palabra: "jury",          sonido: -8),
        ContenidoHoja(palabra: "lune",          sonido: -8),
        ContenidoHoja(palabra: "prune",         sonido: -8),
        ContenidoHoja(palabra: "tribune",       sonido: -8),
        ContenidoHoja(palabra: "une",           sonido: -8),
        ContenidoHoja(palabra: "humain",        sonido: -8),
        ContenidoHoja(palabra: "plume",         sonido: -8),
        ContenidoHoja(palabra: "voiture",       sonido: -8),
        ContenidoHoja(palabra: "salut",         sonido: -8),
        ContenidoHoja(palabra: "cruel",         sonido: -8),
        ContenidoHoja(palabra: "mûr",           sonido: -8),
        ContenidoHoja(palabra: "volume",        sonido: -8),
        ContenidoHoja(palabra: "costume",       sonido: -8),
        ContenidoHoja(palabra: "union",         sonido: -8),
        
        
        
        
        //LISTA u
        ContenidoHoja(palabra: "au",     sonido: 9),
        ContenidoHoja(palabra: "beau",     sonido: 9),
        ContenidoHoja(palabra: "cause",    sonido: 9),
        ContenidoHoja(palabra: "eau",     sonido: 9),
        ContenidoHoja(palabra: "ému",     sonido: 9),
        ContenidoHoja(palabra: "fatiguant",    sonido: 9),
        ContenidoHoja(palabra: "gauche",    sonido: 9),
        ContenidoHoja(palabra: "humain",    sonido: 9),
        ContenidoHoja(palabra: "humble",      sonido: 9),
        ContenidoHoja(palabra: "jeune",     sonido: 9),
        ContenidoHoja(palabra: "lundi",     sonido: 9),
        ContenidoHoja(palabra: "parfum",    sonido: 9),
        ContenidoHoja(palabra: "peu",     sonido: 9),
        ContenidoHoja(palabra: "plume",    sonido: 9),
        ContenidoHoja(palabra: "quand",     sonido: 9),
        ContenidoHoja(palabra: "reçu",    sonido: 9),
        ContenidoHoja(palabra: "tu",    sonido: 9),
        ContenidoHoja(palabra: "un",   sonido: 9),
        ContenidoHoja(palabra: "une",     sonido: 9),
        ContenidoHoja(palabra: "utile",     sonido: 9),
    
        //MAL
        ContenidoHoja(palabra: "ou",          sonido: -9),
        ContenidoHoja(palabra: "nous",          sonido: -9),
        ContenidoHoja(palabra: "où",      sonido: -9),
        ContenidoHoja(palabra: "trouer",   sonido: -9),
        ContenidoHoja(palabra: "gouts",        sonido: -9),
        ContenidoHoja(palabra: "dessous",         sonido: -9),
        ContenidoHoja(palabra: "courir",          sonido: -9),
        ContenidoHoja(palabra: "coupon",         sonido: -9),
        ContenidoHoja(palabra: "couple",           sonido: -9),
        ContenidoHoja(palabra: "couper",        sonido: -9),
        ContenidoHoja(palabra: "couleur",        sonido: -9),
        ContenidoHoja(palabra: "bouton",         sonido: -9),
        ContenidoHoja(palabra: "boulot",         sonido: -9),
        ContenidoHoja(palabra: "oublier",           sonido: -9),
        ContenidoHoja(palabra: "cousin",        sonido: -9),
        ContenidoHoja(palabra: "tourner",         sonido: -9),
        ContenidoHoja(palabra: "yaourt",       sonido: -9),
        ContenidoHoja(palabra: "aout",        sonido: -9),
        ContenidoHoja(palabra: "mouton",       sonido: -9),
        ContenidoHoja(palabra: "avouer",      sonido: -9),
        ContenidoHoja(palabra: "autour",        sonido: -9),
        ContenidoHoja(palabra: "amour",          sonido: -9),
        ContenidoHoja(palabra: "ajouter",          sonido: -9),
        ContenidoHoja(palabra: "couleur",         sonido: -9),
        ContenidoHoja(palabra: "beaucoup",       sonido: -9),
        ContenidoHoja(palabra: "jour",        sonido: -9),
        ContenidoHoja(palabra: "tour",        sonido: -9),
        ContenidoHoja(palabra: "retour",       sonido: -9),
        ContenidoHoja(palabra: "nourrir",       sonido: -9),
        ContenidoHoja(palabra: "journal",          sonido: -9)
        
    ]
    
    static let sonidosDisponiblesIntrusos: [SonidoActualIntruso] = [
        SonidoActualIntruso(letra: "õ", tipo: 1, sonido: "intruso_01"),
        SonidoActualIntruso(letra: "ɑ̃", tipo: 2, sonido: "intruso_02"),
        SonidoActualIntruso(letra: "ɛ̃", tipo: 3, sonido: "intruso_03"),
        SonidoActualIntruso(letra: "Œ", tipo: 4, sonido: "intruso_04"),
        SonidoActualIntruso(letra: "ᴇ", tipo: 5, sonido: "intruso_05"),
        SonidoActualIntruso(letra: "o", tipo: 6, sonido: "intruso_06"),
        SonidoActualIntruso(letra: "a", tipo: 7, sonido: "intruso_07"),
        SonidoActualIntruso(letra: "y", tipo: 8, sonido: "intruso_08"),
        SonidoActualIntruso(letra: "u", tipo: 9, sonido: "intruso_09")
    ]
}
