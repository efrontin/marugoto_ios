//
//  CountObjectViewController.swift
//  Marugoto
//
//  Created by Spoon on 06/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import Kingfisher

class CountObjectViewController: UIViewController, UITableViewDataSource {
    
    var countObject: CountObject?
    var sectionCountObject: SectionCountObject?
  
    @IBOutlet weak var ui_headerCountObject: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://apprendrelejaponais.online/wp-content/uploads/2018/11/compter.jpg")
        let processor = BlendImageProcessor(blendMode: .softLight, alpha: 1.0, backgroundColor: .lightGray)
       ui_headerCountObject.kf.setImage(with: url, options: [.processor(processor)])
        ui_headerCountObject.kf.indicatorType = .activity
        
        
        // Do any additional setup after loading the view.
    }
    
    // retourne le nombre d'objet de chaque section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionCountObject?.listCountObject.count ?? 0
    }
    
    // affiche la section
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countObjectCell", for: indexPath) as? CountObjectTBViewCell
        
        cell?.showCountList(countObject: countObject!)
        
        return cell!
    }
    
    // retourne la section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
        
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
