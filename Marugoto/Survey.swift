//
//  Survey.swift
//  Marugoto
//
//  Created by Spoon on 08/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation

struct Survey : Codable {
    let header:String
    let title:String
    let options: [String]
    let answer:String
    
    
    enum CodingKeys:String,CodingKey {
        case header
        case title = "question"
        case options
        case answer
    }
    
}
