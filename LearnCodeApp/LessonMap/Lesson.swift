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
    var Modules: [Module]
    
    init(name: String){
        self.name = name
        self.passed = false
        self.Modules = []
    }
    
    func addModule(module: Module){
        self.Modules.append(module)
    }
    
}
