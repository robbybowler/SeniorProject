//
//  QuizViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 1/31/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBAction func SubmitButton(_ sender: UIButton) {
        self.tabBarController?.tabBar.isHidden = false

        self.navigationController!.popToRootViewController(animated: true)

    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        
        LessonStore.instance.allLessons[1].passed = true


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
