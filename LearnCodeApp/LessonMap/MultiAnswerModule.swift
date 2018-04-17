//
//  MultiAnswerModule.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 4/3/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class MultiAnswerModule: NSObject{
    let nextType: String
    let infoText: String
    let answers: [String]
    let correctAnswers: [String]
    var passed: Bool
    
    init(nextType: String, infoText: String, answers: [String], correctAnswers: [String]){
        self.nextType = nextType
        self.infoText = infoText
        self.answers = answers
        self.correctAnswers = correctAnswers
        self.passed = false
    }
}
