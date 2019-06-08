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
    @IBOutlet weak var ui_canvasDrawer: UIView!
    @IBOutlet weak var ui_clearButton: UIButton!
    
    let canvas = CanvasView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ui_nameToDraw.text = alphabet?.name
        // Do any additional setup after loading the view.
//        var realmConfig = Realm.Configuration.defaultConfiguration
//        print(realmConfig.fileURL)
//
//        let myDrawer = Drawer()
//        myDrawer.name = "a"
//        myDrawer.task = "Dessin"
//
//        let realm = try! Realm()
//
//        try! realm.write {
//            realm.add(myDrawer)
//        }
        
        ui_canvasDrawer.addSubview(canvas)
        canvas.frame = view.frame
        
    }
    
    @IBAction func clearCanvas(_ sender: UIButton) {
        canvas.clearCanvas()
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
