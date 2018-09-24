//
//  QuestionTableViewController.swift
//  Trivia
//
//  Created by Cake on 9/21/18.
//  Copyright © 2018 Cake. All rights reserved.
//

import UIKit

let questionSet = QuestionBank()
var result = ""
var questionNumber = 0
var questionCount = questionSet.list.count
var myIndex = 0

class QuestionTableViewController: UITableViewController {
    
    let questionAnswers = questionSet.list[questionNumber].answers
    override func viewDidLoad() {
        super.viewDidLoad()
        let headerNib = UINib.init(nibName: "HeaderView", bundle: Bundle.main)
        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: "HeaderView")
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderView") as! HeaderView
            headerView.questionLabel.text = questionSet.list[questionNumber].question
            return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (questionSet.list[questionNumber].answers?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "answerCell", for: indexPath)as! AnswerCell
                cell.answerLabel.text = questionSet.list[questionNumber].answers?[indexPath.row]
                cell.showsReorderControl = true
                return cell
        }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        result = (questionSet.list[questionNumber].answers?[indexPath.row])!
        myIndex = indexPath.row
        print(myIndex)
        performSegue(withIdentifier: "segue", sender: self)
       
    }
}


