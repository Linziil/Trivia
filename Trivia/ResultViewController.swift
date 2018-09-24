//
//  ResultViewController.swift
//  Trivia
//
//  Created by Cake on 9/22/18.
//  Copyright © 2018 Cake. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
    let correctAnswer = questionSet.list[questionNumber].correctAnswer
    @IBOutlet weak var finishButton: UIButton!
    @IBAction func finishButton(_ sender: UIButton){}
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBAction func nextQuestion(_ sender: UIButton) {
        if questionNumber < questionCount-1 {
        questionNumber += 1
        }
    }
    func restart(){
        questionNumber = 0
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        finishButton.isHidden = true
        
        if myIndex == correctAnswer{
            resultLabel.text = "Correct! You choose  '\(result)'"
        }else{
            resultLabel.text = "Sorry, try again! "
        }
       
        if questionNumber >= questionCount-1 {
           restart()
           nextQuestion.isHidden = true
           finishButton.isHidden = false
        }
    }
}
