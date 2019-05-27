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
    
    var lessonList = [Lesson(nameLesson: "Hello Konnichiwa", detailsLesson: "Exchange greetings", categoryLesson: "Japanese Nihongo", colorLesson: 1),
                      Lesson(nameLesson: "Hello Konnichiwa", detailsLesson: "Reconnaitre les caractères japonais", categoryLesson: "Japanese Nihongo", colorLesson : 1),
                      Lesson(nameLesson: "Pouvez-vous répéter s'il vous plait ?", detailsLesson: "Exchange greetings", categoryLesson: "Japanese Nihongo", colorLesson : 1),
                     
                      Lesson(nameLesson: "Give a simple self introduction", detailsLesson: "Nice to meet you", categoryLesson: "My self/watashi", colorLesson : 2),
                      Lesson(nameLesson: "Hello Konnichiwa", detailsLesson: "Exchange greetings", categoryLesson: "Food/Tabemono", colorLesson : 3),
                   
    ]
    
    static func getSharedInstance() -> UserData {
        if instance == nil {
            instance = UserData()
        }
        return instance!
        
    }
    private init(){
    }
}
