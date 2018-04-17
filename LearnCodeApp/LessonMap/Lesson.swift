//
//  Lesson.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/21/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class Lesson: NSObject {
    
    let name: String
    var passed: Bool
    var modules: [Module]
    
    init(name: String){
        self.name = name
        self.passed = false
        self.modules = []
        
    }
    override init(){
        self.name = "sean"
        self.passed = false
        self.modules = []
    }
    
    func addModule(module: Module){
        self.modules.append(module)
    }
    
}
