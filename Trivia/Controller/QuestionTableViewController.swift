//
//  QuestionTableViewController.swift
//  Trivia
//
//  Created by Cake on 9/21/18.
//  Copyright © 2018 Cake. All rights reserved.
//

import UIKit

let questionSet = QuestionBank()
var questionNumber = 0
var selectedIndex = 0
var result = ""

// a tableViewController to show questions and answers from QuestionBank
class QuestionTableViewController: UITableViewController {
    
    // questionCount is an Int, equals to the total number of questions in the QuestionBank
    // questionQuestion is the question from a selected question in QuestionBank.
    // questionAnswer is the answers from a selected question in QuestionBank.
    let questionCount = questionSet.list.count
    let questionQuestion = questionSet.list[questionNumber].question
    let questionAnswer = questionSet.list[questionNumber].answers
    
    // initialize HeaderView
    override func viewDidLoad() {
        super.viewDidLoad()
        let headerNib = UINib.init(nibName: "HeaderView", bundle: Bundle.main)
        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: "HeaderView")
    }
    
    // question from QuestionBank will show on the section (HeaderView)
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as! HeaderView
            headerView.questionLabel.text = questionQuestion
            return headerView
    }
    
    // set HeaderView's height
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    // set numberOfRows equal to the total answers.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionAnswer!.count
    }
    
    // set cells equal to answers.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath)as! AnswerCell
                cell.answerLabel.text = questionAnswer![indexPath.row]
                cell.showsReorderControl = true
                return cell
    }
    
    // When select an answer (cell), go to the ResultViewController
    // pass the answer to global var result (for printing the selected answer in ResultViewController)
    // pass the cell index to global var selectedIndex (for comparing the correct answer in ResultViewController)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        result = questionAnswer![indexPath.row]
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
       
    }
}


