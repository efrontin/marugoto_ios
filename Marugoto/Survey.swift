//
//  Survey.swift
//  Marugoto
//
//  Created by Spoon on 08/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation

struct Survey: Decodable{
    let name: String?
    let username: String?
   let website: String?
    
    /*init(json: [String: Any]) {
        name = json["name"] as? String ?? ""
        username = json["username"] as? String ?? ""
        website = json["website"] as? String ?? ""
    }*/
}
