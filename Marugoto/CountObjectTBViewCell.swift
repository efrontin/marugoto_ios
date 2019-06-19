//
//  CountObjectTBViewCell.swift
//  Marugoto
//
//  Created by Spoon on 06/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class CountObjectTBViewCell: UITableViewCell {
    
    @IBOutlet weak var ui_hiraganaName: UILabel!
    @IBOutlet weak var ui_traductionNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func showCountList(countObject : CountObject){
        ui_hiraganaName.text = countObject.nameCountObject
        ui_traductionNumber.text = countObject.tradCountObject
    }
}
