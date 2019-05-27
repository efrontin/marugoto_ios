//
//  Lesson.swift
//  Marugoto
//
//  Created by Spoon on 27/05/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation

class Lesson {
    var nameLesson:String = ""
    var detailsLesson:String = ""
    var categoryLesson:String = ""
    var colorLesson:Int = 0
    
    // initialisation d'une lesson
    init(nameLesson: String, detailsLesson:String, categoryLesson:String, colorLesson:Int){
        self.nameLesson = nameLesson
        self.detailsLesson = detailsLesson
        self.categoryLesson = categoryLesson
        self.colorLesson = colorLesson
    }
    
    
    
}
