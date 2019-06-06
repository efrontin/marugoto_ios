//
//  CountObjectViewController.swift
//  Marugoto
//
//  Created by Spoon on 06/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import Kingfisher

class CountObjectViewController: UIViewController {

    @IBOutlet weak var ui_headerCountObject: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://apprendrelejaponais.online/wp-content/uploads/2018/11/compter.jpg")
       ui_headerCountObject.kf.setImage(with: url)
        ui_headerCountObject.kf.indicatorType = .activity

        // Do any additional setup after loading the view.
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
