//
//  SurveyViewController.swift
//  Marugoto
//
//  Created by Spoon on 08/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {
    @IBOutlet weak var ui_nameSurvey: UILabel!
    @IBOutlet weak var ui_usernameSurvey: UILabel!
    @IBOutlet weak var ui_websiteSurvey: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       let jsonUrlString = "https://jsonplaceholder.typicode.com/users"
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url){
            (data, response, err) in
    
            guard let data = data else { return }
            
            /*let dataAsString = String(data: data, encoding: .utf8)
            print(dataAsString)
 */
            do{
                let survey = try JSONDecoder().decode([Survey].self, from: data)
                print(survey[0].name ?? "")
                
            } catch let jsonErr {
                print("Error serialize Json", jsonErr)
            }
            
        }.resume()
        
        
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
