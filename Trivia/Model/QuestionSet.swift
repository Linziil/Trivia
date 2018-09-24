//
//  Questions.swift
//  Trivia
//
//  Created by Cake on 9/21/18.
//  Copyright © 2018 Cake. All rights reserved.
//

import Foundation

struct QuestionSet {
    
    var question : String?
    var answers : [String]?
    var correctAnswer : Int?
    
    
    init(question : String? , answers : [String]?, correctAnswer : Int?) {
        self.question = question
        self.answers = answers
        self.correctAnswer = correctAnswer
    }
}
