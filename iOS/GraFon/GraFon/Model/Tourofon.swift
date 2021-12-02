//
//  Tourofon.swift
//  GraFon
//
//  Created by Samuel Arturo Garrido Sánchez on 11/17/21.
//  Copyright © 2021 SamArtGS. All rights reserved.
//

import UIKit

struct Cita{
    let simbolo: String
    let texto:   String
    let autor:   String
    let obra:   String
    let cantidadSonidos: Int
}

extension Data{
    static let citas: [Cita] = [
        
        Cita(simbolo: "a", texto: "Tu parles, tu parles,\ntu dis, mais tu dis rien \nQue des mots en rafale \nsans but et sans liens", autor: "Amylie", obra: "Mes oreilles", cantidadSonidos: 4),
        
        Cita(simbolo: "a", texto: "Quand on pense...\nQu'il suffirait que les gens ne les achètent plus \npour que ça se vende pas !", autor: "Coluche", obra: "Misère", cantidadSonidos: 3),
        
        Cita(simbolo: "a", texto: "On ne nait pas femme,\non le devient.", autor: "Simone de Beauvoir", obra: "Le deuxième sexe", cantidadSonidos: 2),

        Cita(simbolo: "a", texto: "Aimer, ce n'est pas seulement aimer bien,\nc'est surtout comprendre.", autor: "Françoise Sagan", obra: "Un certain regard", cantidadSonidos: 1),

        Cita(simbolo: "ᴇ", texto: "Tiède est le vent\nChaud est le temps\nFraiche est ta peau\nDoux, le moment", autor: "Esther Granek", obra: "Vacances", cantidadSonidos: 5),

        Cita(simbolo: "ᴇ", texto: "La folie temporaire est\nla sœur  du courage à la guerre.", autor: "David Diop", obra: "Frère d’âme", cantidadSonidos: 3),

        Cita(simbolo: "ᴇ", texto: "Je te téléphone\nPrès du métro Rome\nParis, sous la pluie\nMe lasse et m'ennuie", autor: "Barbara", obra: "Gare De Lyon", cantidadSonidos: 5),

        Cita(simbolo: "ᴇ", texto: "Ou j'aimerais peut-être juste\nQue tu me regardes\nComme tu me regardais hier\nSans qu'ils nous regardent", autor: "Angèle", obra: "Tu me regardes", cantidadSonidos: 5),

        Cita(simbolo: "i", texto: "Leur politique extérieure\nnous fait saigner de l'intérieur", autor: "Kery James", obra: "Vivre ou mourir ensemble", cantidadSonidos: 2),

        Cita(simbolo: "i", texto: "L’anémone et l’ancolie\nOnt poussé dans le jardin\nOù dort la mélancolie\nEntre l’amour et le dédain", autor: "Guillaume Apollinaire", obra: "Clotilde", cantidadSonidos: 2),

        Cita(simbolo: "o", texto: "Nous détestons tous la violence.\nEt pourtant, elle nous aspire\net fait de nous ce qu'elle veut.", autor: "Maryse Condé", obra: "En attendant la montée des eaux", cantidadSonidos: 1),

    Cita(simbolo: "o", texto: "Chez nous c'est chez vous\nEt c'est un nouveau monde", autor: "Corneille", obra: "Nouveau monde", cantidadSonidos: 1),

        Cita(simbolo: "ɶ", texto: "Nos tâches tachent\ntour à tour\nles tours\nd’alentours.", autor: "Robert Desnos", obra: "Domaine Public", cantidadSonidos: 0),

        Cita(simbolo: "ɶ", texto: "Peu de bipèdes depuis Adam\nont mérité le nom d’homme.", autor: "Marguerite Yourcenar", obra: "L’œuvre au noir", cantidadSonidos: 4),

        Cita(simbolo: "u", texto: "Cher petit oreiller, doux et chaud\nsous ma tête,\nPlein de plume choisie, et blanc !\net fait pour moi !", autor: "Marceline Desbordes-Valmore", obra: "L’oreiller d’un enfant", cantidadSonidos: 3),

        Cita(simbolo: "u", texto: "Notre vie réelle est plus\nqu’aux trois quarts composée\nd’imagination et de fiction.", autor: "Simone Weil", obra: "La pesanteur et la grâce", cantidadSonidos: 0),

        Cita(simbolo: "u", texto: "Oublie-le vite\nOublie ce type\nViens, goute mes frites.", autor: "Valérie Lemercier", obra: "Goute mes Frites", cantidadSonidos: 3),

        Cita(simbolo: "y", texto: "La maison est notre coin du monde.\nC’est notre premier univers\net un véritable cosmos.", autor: "Gaston Bachelard", obra: "La poétique de l’espace", cantidadSonidos: 2),

        Cita(simbolo: "y", texto: "Oui, j'ai une vie privée...\nprivée de tout... c'est vrai,\nmais privée quand même.", autor: "Muriel Robin", obra: "Tout m’énerve", cantidadSonidos: 1),

    Cita(simbolo: "y", texto: "L'argent est un jeu\nqui ne passe pas de mode.", autor: "Colette", obra: "Chéri", cantidadSonidos: 0),

        Cita(simbolo: "ɑ̃", texto: "Un seul être vous manque et tout est dépeuplé.", autor: "Alphonse de Lamartine", obra: "L’isolement", cantidadSonidos: 1),

    Cita(simbolo: "ɑ̃", texto: "La langue dominante n’était donc déjà plus\nune simple langue. C’était une arme.", autor: "Patrick Chamoiseau", obra: "Le conteur, la nuit et le panier", cantidadSonidos: 3),

        Cita(simbolo: "ɑ̃", texto: "Je voudrais pas crever\nAvant d’avoir connu\nLes chiens noirs du Mexique\nQui dorment sans rêver", autor: "Boris Vian", obra: "Je voudrais pas crever", cantidadSonidos: 2),

        Cita(simbolo: "õ", texto: "J’ai eu tort de croire qu’il y eût un homme\ncapable de cacher ce qui flatte sa gloire. ", autor: "Mme de La Fayette", obra: "La Princesse de Clèves", cantidadSonidos: 0),

        Cita(simbolo: "õ", texto: "La révolte tue des hommes alors que\nla révolution détruit à la fois\ndes hommes et des principes. ", autor: "Albert Camus", obra: "L'homme révolté", cantidadSonidos: 1),

        Cita(simbolo: "ɛ̃", texto: "Certains jours, j’ai rêvé\nd’une gomme à effacer\nl’immondice humaine.", autor: "Louis Aragon", obra: "Journal du surréalisme", cantidadSonidos: 1),

        Cita(simbolo: "ɛ̃", texto: "Cet amour tout entier\nSi vivant encore\nEt tout ensoleillé\nC’est le tien\nC’est le mien", autor: "Jacques Prévert", obra: "Cet amour", cantidadSonidos: 2),

        Cita(simbolo: "ɛ̃", texto: "C’était un très vieux magicien\nQui sortait de son beau chapeau\nDes chimpanzés, des chats,\ndes chiens.", autor: "Juliette", obra: "Lapins", cantidadSonidos: 3),

    Cita(simbolo: "ɛ̃", texto: "C’est un blues mélancolique,\nUn blues nostalgique,\nUn blues indolent\nEt lent.", autor: "Léopold Sédar Senghor", obra: "Spleen", cantidadSonidos: 4),

        Cita(simbolo: "wa", texto: "Hé toi\nQu’est-ce que tu regardes ?\nT’as jamais vu une femme\nqui se bat\nSuis-moi…", autor: "Clara Luciani", obra: "La grenade", cantidadSonidos: 2),
        
        Cita(simbolo: "wa", texto: "Qui va sauver la mise quand il sera trop tard\nQuand on aura toute la mer à boire", autor: "Karim Ouellet", obra: "La mer à boire", cantidadSonidos: 1),

        Cita(simbolo: "ɥi", texto: "L'homme ne promène pas son chien,\nc'est lui qui est promené\npar son chien.", autor: "Michel Tournier", obra: "Le Miroir des idées", cantidadSonidos: 1),

        Cita(simbolo: "jᴇ", texto: "Non ! Rien de rien…\nNon ! Je ne regrette rien\nC'est payé, balayé, oublié\nJe me fous du passé !", autor: "Édith Piaf", obra: "Non ! Je ne regrette rien", cantidadSonidos: 3),

        Cita(simbolo: "s", texto: "Tout le passé est nécessaire\npour aimer le présent.", autor: "Annie Ernaux", obra: "Écrire la vie", cantidadSonidos: 3),

        Cita(simbolo: "s", texto: "Cette manie de qualifier de fous\nceux que l’on ne comprend pas !\nQuelle paresse mentale !", autor: "Amélie Nothomb", obra: "Cosmétique de l’ennemi", cantidadSonidos: 3),

        Cita(simbolo: "z", texto: "En tout être humain, il y a un lac,\na dit ma mère, une tristesse liquide\nque les oignons aident à vider ", autor: "Claudie Gallay", obra: "Une part de ciel", cantidadSonidos: 1),

        Cita(simbolo: "z", texto: "Sur les champs sur l’horizon\nSur les ailes des oiseaux\nEt sur le moulin des ombres\nJ’écris ton nom", autor: "Paul Éluard", obra: "Liberté", cantidadSonidos: 5),

        Cita(simbolo: "z", texto: "L'histoire est la science\ndes malheurs des hommes.", autor: "Raymond Queneau", obra: "Une histoire modèle", cantidadSonidos: 1),

        Cita(simbolo: "z", texto: "Je vous souhaite des rêves\nà n’en plus finir\net l’envie furieuse\nd’en réaliser quelques-uns.", autor: "Jacques Brel", obra: "Meilleurs vœux sur Europe 1", cantidadSonidos: 3),

        Cita(simbolo: "z", texto: "Tout le monde sait comment on fait les bébés\nMais personne sait comment on fait des papas", autor: "Stromae", obra: "Papaoutai", cantidadSonidos: 0)
    ]
}
