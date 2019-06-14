//
//  SurveyViewController.swift
//  Marugoto
//
//  Created by Spoon on 08/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import Alamofire


class SurveyViewController: UIViewController {

    @IBOutlet weak var ui_numberQuestion: UILabel!
    @IBOutlet weak var ui_questionText: UILabel!
    @IBOutlet weak var ui_choiceAnswer: UISegmentedControl!
    
    var questionList:[Survey] = []
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = Alamofire.request("https://questionnaire-js.surge.sh/db.json")
        
        request.responseData { (response) in
            if let rawJsonData = response.result.value
                {
                    
                    do {
                        let questionList = try JSONDecoder().decode([Survey].self, from: rawJsonData)
                        self.questionList = questionList
                        for question in questionList {
                            print("- \(question.header) - \(question.title)")
                        }
                        self.displayQuestion(atIndex: 0)
                    } catch {
                        print(error)
                    }
                
                
               
            }
        }
    
    }
    
    func displayQuestion(atIndex questionIndex:Int) {
        guard currentQuestionIndex < questionList.count else {
            return
        }
        self.ui_numberQuestion.text = "\(questionList[questionIndex].header)"
        self.ui_questionText.text = "\(questionList[questionIndex].title)"
        
        ui_choiceAnswer.setTitle(questionList[questionIndex].options[0], forSegmentAt: 0)
        ui_choiceAnswer.setTitle(questionList[questionIndex].options[1], forSegmentAt: 1)
        ui_choiceAnswer.setTitle(questionList[questionIndex].options[2], forSegmentAt: 2)
        
    }
    
    @IBAction func ui_choiseOption(_ sender: UISegmentedControl) {
        currentQuestionIndex += 1
        displayQuestion(atIndex: currentQuestionIndex)
        
    }

}
