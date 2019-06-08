//
//  SectionCountObject.swift
//  Marugoto
//
//  Created by Spoon on 06/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation

class SectionCountObject{
    var nameSection:String = ""
    var listCountObject:[CountObject] = []
    
    init(nameSection:String, listCountObject:[CountObject]) {
        self.nameSection = nameSection
        self.listCountObject = listCountObject
    }
}
