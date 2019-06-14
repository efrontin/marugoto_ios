//
//  ViewController.swift
//  Marugoto
//
//  Created by Spoon on 27/05/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import RealmSwift
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var ui_buttonLesson: UIButton!
    @IBOutlet weak var ui_buttonAlphabet: UIButton!
    @IBOutlet weak var ui_butttonNumber: UIButton!
    @IBOutlet weak var ui_buttonLearnToCount: UIButton!
    @IBOutlet weak var ui_buttonExcercice: UIButton!

    
    @IBOutlet private var animationView: AnimationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ui_buttonLesson.createRoundedButton()
        ui_buttonAlphabet.createRoundedButton()
        ui_butttonNumber.createRoundedButton()
        ui_buttonExcercice.createRoundedButton()
        ui_buttonLearnToCount.createRoundedButton()
        
        animationView.animation = Animation.named("2276-hiragana-a")
        animationView.play { (finished) in
            /// Animation finished
        }
      
    }

}

