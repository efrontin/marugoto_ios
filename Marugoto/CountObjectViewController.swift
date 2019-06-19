//
//  CountObjectViewController.swift
//  Marugoto
//
//  Created by Spoon on 06/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import Kingfisher

class CountObjectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var showList:[[CountObject]] = []
    var showNameSection:[String] = []
    
    @IBOutlet weak var ui_showList: UITableView!
    @IBOutlet weak var ui_headerCountObject: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showNameSection.append("Petit objet")
        showList.append([CountObject(nameCountObject: "un", tradCountObject:      "ichi"),CountObject(nameCountObject: "deux", tradCountObject: "ni"),
                         CountObject(nameCountObject: "trois", tradCountObject: "san"),CountObject(nameCountObject: "quatre", tradCountObject: "yon")
            ])
        
        showNameSection.append("Long objet")
        showList.append([CountObject(nameCountObject: "un", tradCountObject:      "ichi"),CountObject(nameCountObject: "deux", tradCountObject: "ni"),
                         CountObject(nameCountObject: "trois", tradCountObject: "san"),CountObject(nameCountObject: "quatre", tradCountObject: "yon")
            ])
        
        showNameSection.append("Personne")
        showList.append([CountObject(nameCountObject: "un", tradCountObject:      "ichi"),CountObject(nameCountObject: "deux", tradCountObject: "ni"),
                         CountObject(nameCountObject: "trois", tradCountObject: "san"),CountObject(nameCountObject: "quatre", tradCountObject: "yon")
            ])
        
        let url = URL(string: "https://apprendrelejaponais.online/wp-content/uploads/2018/11/compter.jpg")
        let processor = BlendImageProcessor(blendMode: .softLight, alpha: 1.0, backgroundColor: .lightGray)
       ui_headerCountObject.kf.setImage(with: url, options: [.processor(processor)])
        ui_headerCountObject.kf.indicatorType = .activity
 
        self.ui_showList.dataSource = self
        self.ui_showList.delegate = self
     
    }
    
    
    // retourne les sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return showList.count
    }
    
    // retourne le nombre d'objet de chaque section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let objectList = showList[section]
        return objectList.count
    }
    
    // affiche la section
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let objectList = showList[indexPath.section]
        let object = objectList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countObjectCell", for: indexPath) as? CountObjectTBViewCell
        
        
        cell?.showCountList(countObject: object)
        
        return cell!
    }
   
    
    // RETOURNE LE TITRE DE SECTION
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return showNameSection[section]
    }

}
