//
//  DrawAlphabetViewController.swift
//  Marugoto
//
//  Created by Spoon on 07/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import RealmSwift

class DrawAlphabetViewController: UIViewController {
    
    var alphabet:Alphabet?
    
    @IBOutlet weak var ui_nameToDraw: UILabel!
    @IBOutlet weak var ui_canvasDrawer: CanvasView!
    @IBOutlet weak var ui_clearButton: UIButton!
    
    //let canvas = CanvasView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ui_nameToDraw.text = alphabet?.name
    }
    
    @IBAction func clearCanvas(_ sender: UIButton) {
        ui_canvasDrawer.clearCanvas()
    }
    

}
