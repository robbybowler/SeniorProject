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
    let exampleText: String
    var passed: Bool
    
    init(type: String, nextType: String, infoText: String, exampleText: String){
        self.type = type
        self.nextType = nextType
        self.infoText = infoText
        self.exampleText = exampleText
        self.passed = false
    }
}
