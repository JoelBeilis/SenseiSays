//
//  Question.swift
//  Sensei Says
//
//  Created by Joel Beilis on 2024-02-03.
//

import Foundation


struct Question {
    let text: String
    let rightAnswer: String
    
    init(q: String, correctAnswer: String) {
        text = q
        rightAnswer = correctAnswer
    }
}
