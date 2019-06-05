//
//  HiraganaTableViewCell.swift
//  Marugoto
//
//  Created by Spoon on 03/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class AlphabetTableViewCell: UITableViewCell {

    @IBOutlet weak var ui_hiragana_label: UILabel!
    @IBOutlet weak var ui_traduction_label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func display(alphabet:Alphabet ){
        ui_hiragana_label.text = alphabet.name
        ui_traduction_label.text = alphabet.traduction
        
    }

}
