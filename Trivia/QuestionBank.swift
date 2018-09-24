//
//  QuestionBank.swift
//  Trivia
//
//  Created by Cake on 9/23/18.
//  Copyright © 2018 Cake. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [QuestionSet]()
    
    init() {
        list.append(QuestionSet(question: "How many times per second do bumblebees beat their wings?", answers: ["100 times per second","200 times per second","500 times per second","1000 times per second ","1500 times per second"], correctAnswer : 1))
      
        list.append(QuestionSet(question: "How many honey bees could you find in a healthy colony, at its peak?", answers: ["5,000 to 6,000 bees","1,000,000 bees","Up to 50,000 to 60,000 bees","About 1,000 bees","8,000 to 10,000 bees"], correctAnswer : 2))
     
        list.append(QuestionSet(question: "Which of these is NOT a real species of bee?", answers: ["The Hairy Footed Flower Bee", "Common Masked Bee","Carpenter bee","The Black-Kneed Bee","Sharp-tailed bee"], correctAnswer : 3))
    
        list.append(QuestionSet(question: "For how long can a queen honey bee live?", answers: ["Possibly 3 to 4 years","About 6 weeks","Possibly 24 to 36 weeks","Possibly 5 to 7 years","Up to 10 years"], correctAnswer : 0))
  
        list.append(QuestionSet(question: "How much honey can a single honey bee make in its life time?", answers: ["About a tablespoon","About an eighth of a table spoon","About a jar","About a cup", "About a twelfth of a teaspoon"], correctAnswer : 4))
    }
}
