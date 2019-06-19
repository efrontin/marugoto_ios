//
//  UsersViewController.swift
//  Marugoto
//
//  Created by Spoon on 16/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class UsersViewController: UIViewController {

    @IBOutlet weak var ui_textField: UITextField!
    
    var currentUser : User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let user = currentUser {
            ui_textField.text = user.textString
        }
        // Do any additional setup after loading the view.
        let user = User()
        
        DBManager.sharedInstance.addData(object: user)
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        
        let user = User()
        if(currentUser == nil) {
            // if is a new Item then calculate a new ID, else use the current ID
            
        }
        user.textString = ui_textField.text!
        DBManager.sharedInstance.addData(object: user)
        self.dismiss(animated: true) { }
    }
    
    @IBAction func deleteButtonClicked(_ sender: Any) {
        if let user = currentUser{
            DBManager.sharedInstance.deleteFromDb(object: user)
            self.dismiss(animated: true) { }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
