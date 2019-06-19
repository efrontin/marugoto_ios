//
//  CoursTableViewController.swift
//  Marugoto
//
//  Created by Spoon on 27/05/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class CoursTableViewController: UITableViewController {
    
    @IBOutlet var lessonTbView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return UserData.getSharedInstance().lessonList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lessonView", for: indexPath)
        let lesson = UserData.getSharedInstance().lessonList[indexPath.row]
        cell.textLabel?.text = "\(lesson.categoryLesson) : ( \(lesson.nameLesson)"
        cell.detailTextLabel?.text = "\(lesson.detailsLesson)"
        
        switch (lesson.colorLesson) {
        case 1 :
            cell.backgroundColor = UIColor(red:1.00, green:0.61, blue:0.61, alpha:1.0)
        case 2:
            cell.backgroundColor = UIColor(red:0.61, green:0.79, blue:1.00, alpha:1.0)
        case 3:
            cell.backgroundColor = UIColor(red:0.69, green:1.00, blue:0.61, alpha:1.0)
        default:
            break
        }
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        //tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Arrive au noveau controlleur en utilisant segue.destination.
        if segue.identifier == "showdetail" {
            let vc = segue.destination as! DetailsLessonViewController
             // Pass the selected object to the new view controller.
            vc.lesson = UserData.getSharedInstance().lessonList[(lessonTbView.indexPathForSelectedRow?.row)!]
 
        }
    }
    
    // Accès à la page des préférences Marugoto du mobile
    @IBAction func settingsMarugoto(_ sender: Any) {
        if let settingsUrl = URL(string:UIApplication.openSettingsURLString) {
            UIApplication.shared.open(settingsUrl, options: [:], completionHandler: nil)
        }
    }
    
  
    
}
