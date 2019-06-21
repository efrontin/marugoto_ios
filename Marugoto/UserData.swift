//
//  UserData.swift
//  Marugoto
//
//  Created by Spoon on 27/05/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation

class UserData {
    private static var instance:UserData? = nil
    
    var lessonList = [Lesson(nameLesson: "Hello Konnichiwa", detailsLesson: "Salutations", categoryLesson: "Japanese Nihongo", colorLesson: 1, soundTableLesson: [Song(nameSong: "Son leçon 1", filename: "002_1_1_2"), Song(nameSong: "Son leçon 1-1", filename: "002_1_1_2[1]_ohayoo"), Song(nameSong: "Son leçon 1-2", filename: "003_1_1_2[2]_konnichiwa"), Song(nameSong: "Son leçon 1-2", filename: "004_1_1_2[3]_konbanwa"), Song(nameSong: "Son leçon 1-2", filename: "005_1_1_2[4]_sayoonara"), Song(nameSong: "Son leçon 1-2", filename: "006_1_1_2[5]_osaki_ni"), Song(nameSong: "Son leçon 1-2", filename: "007_1_1_2[6]_arigatoo")]),
                      Lesson(nameLesson: "Hello Konnichiwa", detailsLesson: "Reconnaitre les caractères japonais", categoryLesson: "Japanese Nihongo", colorLesson : 1, soundTableLesson: [Song(nameSong: "Son leçon 2", filename: "sound_1" )]),
                      Lesson(nameLesson: "Pouvez-vous répéter s'il vous plait ?", detailsLesson: "Utilisation d'expressions simples", categoryLesson: "Japanese Nihongo", colorLesson : 1, soundTableLesson: [Song(nameSong: "Son leçon 3", filename: "sound_2" )]),
                      Lesson(nameLesson: "Pouvez-vous répéter s'il vous plait ?", detailsLesson: "Ecrire son nom et son pays en japonais", categoryLesson: "Japanese Nihongo", colorLesson : 1, soundTableLesson: [Song(nameSong: "Son leçon 3", filename: "sound_2" )]),
                     
                      Lesson(nameLesson: "Heureux de vous rencontrer", detailsLesson: "Give a simple self introduction", categoryLesson: "My self/watashi", colorLesson : 2, soundTableLesson: [Song(nameSong: "Son leçon 4", filename: "sound_2" )]),
                      Lesson(nameLesson: "Heureux de vous rencontrer", detailsLesson: "Reconnaitre une Business Card", categoryLesson: "My self/watashi", colorLesson : 2, soundTableLesson: [Song(nameSong: "Son leçon 4", filename: "sound_2" )]),
                      Lesson(nameLesson: "Nani ga suki desuka ?", detailsLesson: "Parle de ta nourriture favorite", categoryLesson: "Food/Tabemono", colorLesson : 3, soundTableLesson: [Song(nameSong: "Leçon 5", filename: "sound_2" )]),
                      Lesson(nameLesson: "Nani ga suki desuka ?", detailsLesson: "Offre un verre à quelqu'un", categoryLesson: "Food/Tabemono", colorLesson : 3, soundTableLesson: [Song(nameSong: "Leçon 5", filename: "sound_2" )]),
                      Lesson(nameLesson: "Nani ga suki desuka ?", detailsLesson: "Parle de ton petit déjeuner", categoryLesson: "Food/Tabemono", colorLesson : 3, soundTableLesson: [Song(nameSong: "Leçon 5", filename: "sound_2" )]),
                      Lesson(nameLesson: "Heya ga mittsu arimasu ?", detailsLesson: "Dans quel logement vis-tu ?", categoryLesson: "Home/Ie", colorLesson : 4, soundTableLesson: [Song(nameSong: "Leçon 7", filename: "sound_2" )]),
                      Lesson(nameLesson: "Li heya desu ne", detailsLesson: "Demande où je peux laisser mes affaires", categoryLesson: "Home/Ie", colorLesson : 4, soundTableLesson: [Song(nameSong: "Leçon 8", filename: "sound_2" )]),
                      Lesson(nameLesson: "Na-ji ni okimasuka", detailsLesson: "Demande où je peux laisser mes affaires", categoryLesson: "Daily Life/Seekatsu", colorLesson : 5, soundTableLesson: [Song(nameSong: "Leçon 9", filename: "sound_2" )]),
                      Lesson(nameLesson: "Itsu ga ii desuka", detailsLesson: "Qu'est ce qui te convient le mieux ?", categoryLesson: "Daily Life/Seekatsu", colorLesson : 5, soundTableLesson: [Song(nameSong: "Leçon 10", filename: "sound_2" )]),
                   
    ]
    var nameLesson:[String] = []
    
    var numberList = [Number(numberCharacter: "1", romanjiCharacter: "いち", hiraganaCharacter: "ichi"),
                      Number(numberCharacter: "2", romanjiCharacter: "いち", hiraganaCharacter: "ni"),
                      Number(numberCharacter: "3", romanjiCharacter: "いち", hiraganaCharacter: "san"),
                      Number(numberCharacter: "4", romanjiCharacter: "いち", hiraganaCharacter: "yon"),
                      Number(numberCharacter: "5", romanjiCharacter: "いち", hiraganaCharacter: "go"),
                      Number(numberCharacter: "6", romanjiCharacter: "いち", hiraganaCharacter: "roku"),
                      Number(numberCharacter: "7", romanjiCharacter: "いち", hiraganaCharacter: "nana"),
                      Number(numberCharacter: "8", romanjiCharacter: "いち", hiraganaCharacter: "hachi"),
                      Number(numberCharacter: "9", romanjiCharacter: "いち", hiraganaCharacter: "kyu"),
                      Number(numberCharacter: "10", romanjiCharacter: "いち", hiraganaCharacter: "juu"),
                      Number(numberCharacter: "11", romanjiCharacter: "いち", hiraganaCharacter: "juuichi"),
                      Number(numberCharacter: "12", romanjiCharacter: "いち", hiraganaCharacter: "juuni"),
                      Number(numberCharacter: "13", romanjiCharacter: "いち", hiraganaCharacter: "juusan"),
                      Number(numberCharacter: "14", romanjiCharacter: "いち", hiraganaCharacter: "juuyon"),
                      Number(numberCharacter: "15", romanjiCharacter: "いち", hiraganaCharacter: "juugo"),
                      Number(numberCharacter: "16", romanjiCharacter: "いち", hiraganaCharacter: "juuroku"),
                      Number(numberCharacter: "17", romanjiCharacter: "いち", hiraganaCharacter: "juunana"),
                      Number(numberCharacter: "18", romanjiCharacter: "いち", hiraganaCharacter: "juuhachi"),
                      Number(numberCharacter: "19", romanjiCharacter: "いち", hiraganaCharacter: "juukyu"),
                      Number(numberCharacter: "20", romanjiCharacter: "いち", hiraganaCharacter: "nijuu"),
                      
    ]
    
    var hiraganaList = [Alphabet(name: "あ", traduction: "a"),
                        Alphabet(name: "い", traduction: "i"),
                        Alphabet(name: "う", traduction: "u"),
                        Alphabet(name: "え", traduction: "e"),
                        Alphabet(name: "お", traduction: "o"),
                        Alphabet(name: "か", traduction: "ka"),
                        Alphabet(name: "き", traduction: "ki"),
                        Alphabet(name: "く", traduction: "ku"),
                        Alphabet(name: "け", traduction: "ke"),
                        Alphabet(name: "こ", traduction: "ko")
    ]
    
    var katakanaList = [Alphabet(name: "ア", traduction: "a"),
                        Alphabet(name: "イ", traduction: "i"),
                        Alphabet(name: "ウ", traduction: "u"),
                        Alphabet(name: "エ", traduction: "e"),
                        Alphabet(name: "オ", traduction: "o"),
                        Alphabet(name: "カ", traduction: "ka"),
                        Alphabet(name: "キ", traduction: "ki"),
                        Alphabet(name: "ク", traduction: "ku"),
                        Alphabet(name: "ケ", traduction: "ke"),
                        Alphabet(name: "コ", traduction: "ko")
    ]
    
    
    var sectionList = [SectionCountObject(nameSection: "Petit objet", listCountObject: [CountObject(nameCountObject: "un", tradCountObject: "ichi"),CountObject(nameCountObject: "ni", tradCountObject: "deux")]),SectionCountObject(nameSection: "Long objet", listCountObject: [CountObject(nameCountObject: "un", tradCountObject: "ichi")]),SectionCountObject(nameSection: "Objet plat", listCountObject: [CountObject(nameCountObject: "un", tradCountObject: "ichi")]),SectionCountObject(nameSection: "Etre humain", listCountObject: [CountObject(nameCountObject: "un", tradCountObject: "ichi")])]
    
    static func getSharedInstance() -> UserData {
        if instance == nil {
            instance = UserData()
        }
        return instance!
        
    }
    private init(){
    }
}
