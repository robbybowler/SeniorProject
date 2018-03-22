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
    let infoText: String
    let exampleText: String
    var passed: Bool
    
    init(type: String, infoText: String, exampleText: String){
        self.type = type
        self.infoText = infoText
        self.exampleText = exampleText
        self.passed = false
    }
}
