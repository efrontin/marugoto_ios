//
//  ViewController.swift
//  Marugoto
//
//  Created by Spoon on 27/05/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var ui_buttonLesson: UIButton!
    @IBOutlet weak var ui_buttonAlphabet: UIButton!
    @IBOutlet weak var ui_butttonNumber: UIButton!
    @IBOutlet weak var ui_buttonLearnToCount: UIButton!
    @IBOutlet weak var ui_buttonExcercice: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ui_buttonLesson.layer.cornerRadius = 15.0
        ui_buttonAlphabet.layer.cornerRadius = 15.0
        ui_butttonNumber.layer.cornerRadius = 15.0
        ui_buttonExcercice.layer.cornerRadius = 15.0
        ui_buttonLearnToCount.layer.cornerRadius = 15.0
        
    }


}

