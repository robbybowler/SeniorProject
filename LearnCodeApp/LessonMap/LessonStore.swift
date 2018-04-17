//
//  LessonStore.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/21/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class LessonStore: NSObject {

    var allLessons = [Lesson]()
    static let instance = LessonStore()
    var lessonNumber = 0
    var moduleNumber = 0


    override init(){
        super.init()
        self.setUpLesson1()
 
    }
    
    func getModuleIndex(lesson: Lesson, module: Module)->Int{
        if let i = lesson.modules.index(of: module){
            return i
        }
        exit(1)
        
    }
    
    func setLessonNumber(lessonNum: Int){
        lessonNumber = lessonNum
    }
    
    func setModuleNumber(moduleNum: Int){
        moduleNumber = moduleNum
    }
    
    func setUpLesson1(){
        let Lesson1 = Lesson(name: "lesson1")
        let info = "An item in these list of instructions is a line of code."
        let example = "An item in these list of instructions is a line of code."
        let M1 = Module(nextType: "Fill" , infoText: info, exampleText: example)
        
        let M2 = Module(nextType: "Multi", infoText: info, exampleText: example, buttonL: "right", buttonR: "wrong")

        
        
        var answers = [String]()
        var correctAnswers = [Int]()
        let info2 = "An item in these list of instructions is a line of code."
        answers.append("right")
        answers.append("wrong")
        answers.append("wrong")
        answers.append("right")
        correctAnswers.append(0)
        correctAnswers.append(3)
        let M3 = Module(nextType: "Finished", infoText: info2, answers: answers, correctAnsewrs: correctAnswers)
        
        
        
        Lesson1.addModule(module: M1)
        Lesson1.addModule(module: M2)
        Lesson1.addModule(module: M3)
        allLessons.append(Lesson1)
    }
    
    
    

}
