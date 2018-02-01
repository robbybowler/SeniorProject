//
//  LessonStore.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 1/28/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class LessonStore: NSObject {
    
    var allLessons = [Lesson]()
    static let instance = LessonStore()
    
    override init(){

        let Lesson1 = Lesson(name: "Welcome to Python!",lessonImage: #imageLiteral(resourceName: "PythonLogo"))

        let Lesson2 = Lesson(name: "What Are Variables?", lessonImage: #imageLiteral(resourceName: "ComputerGirl"))
        let Lesson3 = Lesson(name: "Lesson 3", lessonImage: #imageLiteral(resourceName: "ComputerGirl"))
        let Lesson4 = Lesson(name: "Learning Loops", lessonImage: #imageLiteral(resourceName: "PythonLogo"))
        let Lesson5 = Lesson(name: "Lesson 5", lessonImage: #imageLiteral(resourceName: "DiskoGuy"))
        let Lesson6 = Lesson(name: "Lesson 6", lessonImage: #imageLiteral(resourceName: "DiskoGuy"))
        let Lesson7 = Lesson(name: "Lesson 7", lessonImage: #imageLiteral(resourceName: "DiskoGuy"))


        allLessons.append(Lesson1)
        allLessons.append(Lesson2)
        allLessons.append(Lesson3)
        allLessons.append(Lesson4)
        allLessons.append(Lesson5)
        allLessons.append(Lesson6)
        allLessons.append(Lesson7)


    }

}
