//
//  AlphabetViewController.swift
//  Marugoto
//
//  Created by Spoon on 03/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit

class AlphabetViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var ui_ChoiceAlphabet: UISegmentedControl!
    @IBOutlet weak var ui_hiraganaList: UITableView!
    
    var selectedSegment = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ui_hiraganaList.tableFooterView = UIView()
        self.ui_hiraganaList.dataSource = self
        self.ui_hiraganaList.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if selectedSegment == 1 {
            return UserData.getSharedInstance().hiraganaList.count
        }else{
            return UserData.getSharedInstance().katakanaList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "hiraganaCell", for: indexPath)
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "hiraganaCell", for: indexPath) as? AlphabetTableViewCell
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "katakanaCell", for: indexPath) as? AlphabetTableViewCell
        
        let cellHiragana = UserData.getSharedInstance().hiraganaList[indexPath.row]
        let cellKatakana = UserData.getSharedInstance().katakanaList[indexPath.row]
        
        cell1?.display(alphabet: Alphabet(name: "\(cellHiragana.name)", traduction: "\(cellHiragana.traduction)"))
        cell2?.display(alphabet: Alphabet(name: "\(cellKatakana.name)", traduction: "\(cellKatakana.traduction)"))
        
        if selectedSegment == 0{
            return cell1!
        }else{
            return cell2!
        }
        
    }
    @IBAction func choiceAlphabet(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            selectedSegment = 0
        }else{
            selectedSegment = 1
        }
        self.ui_hiraganaList.reloadData()
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
