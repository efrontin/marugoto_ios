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

        showNameSection.append("Objets : 🍎")
        showList.append([CountObject(nameCountObject: "un", tradCountObject:      "hitotsu"),CountObject(nameCountObject: "deux", tradCountObject: "futatsu"),
                         CountObject(nameCountObject: "trois", tradCountObject: "mittsu"),CountObject(nameCountObject: "quatre", tradCountObject: "yottsu"),CountObject(nameCountObject: "cinq", tradCountObject: "itsutsu"),CountObject(nameCountObject: "six", tradCountObject: "muttsu")
            ])
        
        showNameSection.append("Objets longs et minces : 🖊")
        showList.append([CountObject(nameCountObject: "un", tradCountObject:      "ippon"),CountObject(nameCountObject: "deux", tradCountObject: "ni-hon"),
                         CountObject(nameCountObject: "trois", tradCountObject: "san-bon"),CountObject(nameCountObject: "quatre", tradCountObject: "yon-hon"),CountObject(nameCountObject: "cinq", tradCountObject: "go-hon"),CountObject(nameCountObject: "six", tradCountObject: "rop-pon")
            ])
        
        showNameSection.append("Personnes : 👨‍👨‍👧‍👧")
        showList.append([CountObject(nameCountObject: "un", tradCountObject:      "hitori"),CountObject(nameCountObject: "deux", tradCountObject: "futari"),
                         CountObject(nameCountObject: "trois", tradCountObject: "san-nin"),CountObject(nameCountObject: "quatre", tradCountObject: "yo-nin"),CountObject(nameCountObject: "cinq", tradCountObject: "go-nin"),CountObject(nameCountObject: "six", tradCountObject: "roku-nin")
            ])
        showNameSection.append("Objets plats : 📄")
        showList.append([CountObject(nameCountObject: "un", tradCountObject:      "ichi-mai"),CountObject(nameCountObject: "deux", tradCountObject: "ni-mai"),
                         CountObject(nameCountObject: "trois", tradCountObject: "san-mai"),CountObject(nameCountObject: "quatre", tradCountObject: "yon-mai"),CountObject(nameCountObject: "cinq", tradCountObject: "go-mai"),CountObject(nameCountObject: "six", tradCountObject: "roku-mai")
            ])
        
        let url = URL(string: "https://gaijinpot.scdn3.secure.raxcdn.com/app/uploads/sites/4/2017/01/Counting-by-Casey.jpg")
        let processor = BlendImageProcessor(blendMode: .plusLighter, alpha: 0.5, backgroundColor: .lightGray)
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
