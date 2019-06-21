//
//  DBManager.swift
//  Marugoto
//
//  Created by Spoon on 16/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import Foundation
import RealmSwift

class DBManager {
    private var   database:Realm
    static let   sharedInstance = DBManager()
    private init() {
        database = try! Realm()
    }
   
    func addData(object: User)   {
        try! database.write {
            
            print("Added new object")
        }
    }
    func deleteAllFromDatabase()  {
        try!   database.write {
            database.deleteAll()
        }
    }
    func deleteFromDb(object: User)   {
        try!   database.write {
            database.delete(object)
        }
    }
}
