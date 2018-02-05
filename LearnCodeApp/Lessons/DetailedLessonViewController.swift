//
//  DetailedLessonViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 1/29/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class DetailedLessonViewController: UIViewController {
    var CurrentLesson: Lesson!
    @IBOutlet var BackgroundImage: UIImageView!
    var LessonNumber: Int!
    @IBOutlet var LessonTitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
//        BackgroundImage.loadGif(name: "ShinySpace")
        LessonTitleLabel.text = CurrentLesson.name
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true

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
