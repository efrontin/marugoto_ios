//
//  SurveyViewController.swift
//  Marugoto
//
//  Created by Spoon on 08/06/2019.
//  Copyright © 2019 Spoon. All rights reserved.
//

import UIKit
import Alamofire


class SurveyViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
  

    @IBOutlet weak var ui_numberQuestion: UILabel!
    @IBOutlet weak var ui_questionText: UILabel!
    @IBOutlet weak var ui_choiceAnswer: UISegmentedControl!
    @IBOutlet weak var ui_labelAnswer: UILabel!
    @IBOutlet weak var ui_pickerAnswer: UIPickerView!
    @IBOutlet weak var ui_validButton: UIButton!
    
    
    
    var questionList:[Survey] = []
    var currentQuestionIndex = 0
    var currentOptionIndex = 0
    
    
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

                        self.ui_pickerAnswer.dataSource = self
                        self.ui_pickerAnswer.delegate = self
                        self.displayQuestion(atIndex: 0)
                        
                        for question in questionList{
                            print("La réponse à la question \(question.title) est - \(question.answer)")
                        }
                    } catch {
                        print(error)
                    }
            }
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return questionList[currentOptionIndex].options.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return questionList[currentOptionIndex].options[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ui_labelAnswer.text = questionList[currentQuestionIndex].options[row]
        //displayQuestion(atIndex: currentOptionIndex+1)
    }
 
    func displayQuestion(atIndex questionIndex:Int) {
        guard currentQuestionIndex <= questionList.count else {
            return
        }
        self.ui_numberQuestion.text = "\(questionList[questionIndex].header)"
        self.ui_questionText.text = "\(questionList[questionIndex].title)"
        
        ui_choiceAnswer.setTitle(questionList[questionIndex].options[0], forSegmentAt: 0)
        ui_choiceAnswer.setTitle(questionList[questionIndex].options[1], forSegmentAt: 1)
        ui_choiceAnswer.setTitle(questionList[questionIndex].options[2], forSegmentAt: 2)
        
        ui_pickerAnswer.reloadAllComponents()
    }
    
    @IBAction func ui_choiseOption(_ sender: UISegmentedControl) {
        currentQuestionIndex += 1
        displayQuestion(atIndex: currentQuestionIndex)
        currentOptionIndex += 1
    }
    
    @IBAction func validAnswer(_ sender: Any) {
        
        displayQuestion(atIndex: currentOptionIndex+1)
        currentOptionIndex += 1
        
        /*for question in questionList{
         print("La réponse à la question \(question.title) est - \(question.answer)")
         }
         */
    }

}
