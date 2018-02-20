//
//  LessonMapViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 2/8/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit
import SVProgressHUD

class LessonMapViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet var ExampleButton: UIButton!
    
    
    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {


        super.viewDidLoad()
        scrollView.bounces = false

        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        SVProgressHUD.show()
        SVProgressHUD.dismiss(withDelay: 2)
        SVProgressHUD.setBackgroundColor(UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 0.8))

        scrollView.setContentOffset(CGPoint(x: 0, y:scrollView.contentSize.height - scrollView.frame.height ), animated: false)
        ExampleButton.layer.cornerRadius = ExampleButton.frame.height/2
        ExampleButton.layer.borderWidth = 1
//        ExampleButton.layer.borderColor = (UIColor(red: 159/255, green: 175/255, blue: 216/255, alpha: 0.7) as? CGColor)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        
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
