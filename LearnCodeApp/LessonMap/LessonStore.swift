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

    override init(){

        let Lesson1 = Lesson(name: "lesson1")
        let info = "An item in these list of instructions is a line of code."
        let example = "An item in these list of instructions is a line of code."
        let M = Module(type: "Fill",nextType: "Reveal" , infoText: info, exampleText: example)
        Lesson1.addModule(module: M)
        allLessons.append(Lesson1)
        
    }
//        let Lesson2 = Lesson(name: "What Are Variables?", lessonImage: #imageLiteral(resourceName: "ComputerGirl"))

//
//
//        allLessons.append(Lesson1)
//        allLessons.append(Lesson2)
//        allLessons.append(Lesson3)
//        allLessons.append(Lesson4)
//        allLessons.append(Lesson5)
//        allLessons.append(Lesson6)
//        allLessons.append(Lesson7)
//
//        allLessons[0].passed = true
//    }
//    func setUpLessonData(){
//        for lesson in allLessons {
//            if (lesson.passed){
//
//                cell.LessonView.backgroundColor = UIColor(red: 159/255, green: 175/255, blue: 216/255, alpha: 0.7)
//                cell.LessonNameLabel.alpha = 0.2
//                cell.LessonImage.alpha = 0.2
//                cell.setSelected(false, animated: false)
//                cell.isUserInteractionEnabled = false
//            }
//        }

//    }
}
