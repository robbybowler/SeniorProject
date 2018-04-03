//
//  LessonMapViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 2/8/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit
import SVProgressHUD
import SwiftCubicSpline

class LessonMapViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var houseImage: UIImageView!
    
    @IBOutlet var lessonButton: UIButton!
    
    @IBOutlet var scrollHeightContraint: NSLayoutConstraint!
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageStackView: UIStackView!
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        SVProgressHUD.dismiss(withDelay: 2)
        SVProgressHUD.setBackgroundColor(UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 0.8))
        self.navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 88/256, green: 179/256, blue: 247/256, alpha: 1.0)
        self.navigationController?.navigationBar.isOpaque = false
        
        houseImage.image = #imageLiteral(resourceName: "Composed-4")
        
        scrollHeightContraint.constant = imageStackView.frame.height
        scrollView.bounces = false
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        scrollView.setContentOffset(CGPoint(x: 0, y:houseImage.frame.height*4 - scrollView.frame.height), animated: false)

        
        lessonButton.layer.cornerRadius = lessonButton.frame.height/2
        lessonButton.layer.borderWidth = 1
        //        ExampleButton.layer.borderColor = (UIColor(red: 159/255, green: 175/255, blue: 216/255, alpha: 0.7) as? CGColor)
   
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier{
//            
//        }
//    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        var id = ""
        if sender.tag == 0{
            id = "MapToFill"
        }
        if sender.tag == 1{
            id = "MapToReveal"
        }
        if sender.tag == 2{
            id = "MapToOrder"

        }
        if sender.tag == 3{
            id = "MapToMulti"
            
        }
        performSegue(withIdentifier: id, sender: sender)

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
