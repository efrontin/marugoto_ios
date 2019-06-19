//
//  User.swift
//  Marugoto
//
//  Created by Spoon on 16/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    @objc dynamic var ID = 0
    @objc dynamic var textString = ""
    override static func primaryKey() -> String? {
        return "ID"
    }
}
