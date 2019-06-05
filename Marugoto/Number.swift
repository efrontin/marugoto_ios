//
//  Number.swift
//  Marugoto
//
//  Created by Spoon on 05/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation

class Number{
    
    var numberCharacter:String = ""
    var romanjiCharacter:String = ""
    var hiraganaCharacter:String = ""
    
    init(numberCharacter:String, romanjiCharacter:String, hiraganaCharacter:String) {
        self.numberCharacter = numberCharacter
        self.romanjiCharacter = romanjiCharacter
        self.hiraganaCharacter = hiraganaCharacter
    }
}
