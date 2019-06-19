//
//  DetailsLessonViewController.swift
//  Marugoto
//
//  Created by Spoon on 27/05/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class DetailsLessonViewController: UIViewController, UITableViewDataSource {
   
    var lesson: Lesson?
    
    @IBOutlet weak var ui_title_lesson: UILabel!
    @IBOutlet weak var ui_category_lesson: UILabel!
    @IBOutlet weak var ui_soundList: UITableView!
    
    var audioName:String? = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ui_title_lesson.text = lesson?.nameLesson
        ui_category_lesson.text = lesson?.categoryLesson
        ui_soundList.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lesson?.soundTableLesson.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "soundTableCell", for: indexPath) as? SoundTableViewCell
        let song = lesson?.soundTableLesson[indexPath.row]
        
        
        cell?.display(song: song!)
        
        return cell!
    }

}
