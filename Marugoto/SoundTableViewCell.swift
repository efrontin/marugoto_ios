//
//  SoundTableViewCell.swift
//  Marugoto
//
//  Created by Spoon on 03/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import AVFoundation

class SoundTableViewCell: UITableViewCell {
    
    // import de AVFoundation pour la lecture des sons
    var audioPlayer: AVAudioPlayer?
    var lesson:Lesson?
    var song:Song?
    
    @IBOutlet weak var ui_nameSound: UILabel!
    @IBOutlet weak var ui_btnSound: UIButton!
    @IBOutlet weak var ui_pauseBtnSound: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.contentView.backgroundColor = UIColor.white
        // Configure the view for the selected state
    }

    // Lecture des sons
    func display(song: Song){
        ui_nameSound.text = song.nameSong
        // url du fichier + extension
        let url = Bundle.main.url(forResource: song.filename, withExtension: "mp3")
        // permet de vérifier que tout est bon avant de rentrer dans la fonction
        guard url != nil else{
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.stop()
        }
        catch{
            print("Failed")
        }
    
    }
    @IBAction func playSoundButton(_ sender: UIButton) {
       audioPlayer?.play()
    }
    
    @IBAction func pauseBtnSound(_ sender: UIButton) {
        audioPlayer?.pause()
    }
    
}
