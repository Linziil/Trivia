//
//  ResultViewController.swift
//  Trivia
//
//  Created by Cake on 9/22/18.
//  Copyright © 2018 Cake. All rights reserved.
//

import UIKit

//  a ViewController to show result
class ResultViewController: UIViewController {
    
    // questionCount equals the total number of questions from QuestionBank
    // correctAnswer equals correctAnswers from QuestionBank
    let questionCount = questionSet.list.count
    let correctAnswer = questionSet.list[questionNumber].correctAnswer
    
    // press nextQuestion button to go to the next question.
    // finishButton is hidden until all the questions from QuestionBank are asked
    // when finishButton is available, nextQuestion button will hide.
    // finishButton will perform segue to the RestartViewController
    @IBOutlet weak var finishButton: UIButton!
    @IBAction func finishButton(_ sender: UIButton){}
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBAction func nextQuestion(_ sender: UIButton) {
        if questionNumber < questionCount-1 {
            questionNumber += 1
        }
    }
    // reset questionNumbers. it will ask questions from QuestionBank all over again.
    func restart(){
        questionNumber = 0
    }
  
    // compare choosed answer with correctAnswer
    // if equal, print correct otherwise print sorry
    // uncomment nextQuestion.isHidden = true to prevent user go to the next question until user get the answer right
    // once the questionNumber pass the total number of questions in QuestionBank, reset questionNumber to 0
    override func viewDidLoad() {
        super.viewDidLoad()
        finishButton.isHidden = true
        
        if selectedIndex == correctAnswer{
            resultLabel.text = "Correct! You choose  '\(result)'"
        }else{
            resultLabel.text = "Sorry, try again! "
            //nextQuestion.isHidden = true
        }
       
        if questionNumber >= questionCount-1{
           restart()
           nextQuestion.isHidden = true
           finishButton.isHidden = false
        }
    }
}
