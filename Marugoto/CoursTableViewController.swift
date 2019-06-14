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

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
 */


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
        // Get the new view controller using segue.destination.
        if segue.identifier == "showdetail" {
            let vc = segue.destination as! DetailsLessonViewController
             // Pass the selected object to the new view controller.
            vc.lesson = UserData.getSharedInstance().lessonList[(lessonTbView.indexPathForSelectedRow?.row)!]
            
            //vc.nameLesson = UserData.getSharedInstance().lessonList[(lessonTbView.indexPathForSelectedRow?.row)!].nameLesson
            //vc.categoryLesson = UserData.getSharedInstance().lessonList[(lessonTbView.indexPathForSelectedRow?.row)!].categoryLesson
           // vc.soundTableLesson = UserData.getSharedInstance().lessonList[lessonTbView.indexPathForSelectedRow?.row)!].soundTableLesson
        }
        
        
    }
    
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 */
  
    
}
