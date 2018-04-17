//
//  Module.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/21/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class Module: NSObject{
    let type: String
    let nextType: String
    let infoText: String
    let buttonLeft: String
    let buttonRight: String
    var passed: Bool

    //FillModule
    let exampleText: String
    
    //MultiAnswerModule
    var answers: [String]
    var correntAnswers: [Int]
    
    //Reveal Module
    init(nextType: String, infoText: String, exampleText: String){
        self.type = "Reveal"
        self.nextType = nextType
        self.infoText = infoText
        self.exampleText = exampleText
        self.passed = false
        
        //Nil data
        self.answers = []
        self.correntAnswers = []
        self.buttonLeft = ""
        self.buttonRight = ""

    }
    
    //Fill Module
    init(nextType: String, infoText: String, exampleText: String, buttonL: String, buttonR: String){
        self.type = "Fill"
        self.nextType = nextType
        self.infoText = infoText
        self.exampleText = exampleText
        self.buttonLeft = buttonL
        self.buttonRight = buttonR
        self.passed = false


        //Nil data
        
        self.answers = []
        self.correntAnswers = []
        
    }
    
    
    //MultiAnswer Module
    init(nextType: String, infoText: String, answers: [String], correctAnsewrs: [Int]){
        self.type = "MultiAnswer"
        self.nextType = nextType
        self.infoText = infoText
        self.answers = answers
        self.correntAnswers = correctAnsewrs
        self.passed = false
        
        //Nil data
        self.exampleText = ""
        self.buttonLeft = ""
        self.buttonRight = ""
    }
}
