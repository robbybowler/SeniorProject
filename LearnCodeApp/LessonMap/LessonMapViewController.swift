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
    @IBOutlet var ExampleButton: UIButton!
    
    @IBOutlet var scrollHeightContraint: NSLayoutConstraint!
    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var imageView1HeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        houseImage.image = #imageLiteral(resourceName: "Composed-4")
        self.navigationController?.navigationBar.isHidden = true

//        let doYourPath = createRectangle(x:Int(houseImage.frame.width/2),y:Int(houseImage.frame.height - 300))
//        let doYourPath = example()
//        let layer = CAShapeLayer()
//        layer.path = doYourPath.cgPath
//        layer.strokeColor = UIColor.blue.cgColor
//        layer.fillColor = UIColor.clear.cgColor
//
//        self.houseImage.layer.addSublayer(layer)
        print(houseImage.frame.height)
        scrollHeightContraint.constant = houseImage.frame.height*4
        scrollView.bounces = false
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
        self.navigationController?.navigationBar.isHidden = true
        
        SVProgressHUD.show()
        SVProgressHUD.dismiss(withDelay: 2)
        SVProgressHUD.setBackgroundColor(UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 0.8))
        
        //        scrollView.setContentOffset(CGPoint(x: 0, y:scrollView.contentSize.height - scrollView.frame.height ), animated: false)
        scrollView.setContentOffset(CGPoint(x: 0, y:houseImage.frame.height*4 - scrollView.frame.height), animated: false)
        ExampleButton.layer.cornerRadius = ExampleButton.frame.height/2
        ExampleButton.layer.borderWidth = 1
        //        ExampleButton.layer.borderColor = (UIColor(red: 159/255, green: 175/255, blue: 216/255, alpha: 0.7) as? CGColor)
    }
    
    func example()->UIBezierPath{
        let spline = CubicSpline(points: [

            CGPoint(x: 0.0, y: 0),
            CGPoint(x: 0.1, y: 0.1),
            CGPoint(x: 0.2, y: 0.2),
            CGPoint(x: 0.3, y: 0.3),
            CGPoint(x: 0.4, y: 0.4),
            CGPoint(x: 0.5, y: 0.5),
            CGPoint(x: 0.6, y: 0.6),
            CGPoint(x: 0.7, y: 0.7)
            ])
        let path = UIBezierPath()
        print(houseImage.frame.height)
        print(houseImage.frame.width)
        
//        let graphSize = houseImage.frame.size
        for x in 0 ..< Int(houseImage.frame.height) {
            let y = spline.interpolate(x: CGFloat(x)/houseImage.frame.height)*houseImage.frame.width

            if x == 0 {
                path.move(to: CGPoint(x: CGFloat(x), y: CGFloat(y)))

            } else {
                path.addLine(to: CGPoint(x: CGFloat(x), y: CGFloat(y)))

            }
        }
        return path
    }
    
 

    func createRectangle(x: Int,y: Int) -> UIBezierPath {
        // Initialize the path.
        let path = UIBezierPath()
        let point1 = CGPoint(x: 375, y: 1336)
        let curve1 = CGPoint(x: 375, y: 1330)
        let point2 = CGPoint(x: 350, y: 1250)
        let curve2 = CGPoint(x: 250, y: 900)
//        let point3 = CGPoint(x: 300, y: 900)
//        let point4 = CGPoint(x: 225, y: 945)

        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: x, y: y))
        
        // Create a line between the starting point and the bottom-left side of the view.
//        path(to: point1, controlPoint1: point2, controlPoint2: point3)
        path.addQuadCurve(to: point1, controlPoint: curve1)
        path.move(to: point1)
        path.addQuadCurve(to: point2, controlPoint: curve2)

//        path.addArc(withCenter: point1, radius: 8, startAngle: 45, endAngle: 50, clockwise: true)
//        path.addLine(to: CGPoint(x: self.view.frame.width/2, y: 942))
//        path.move(to: CGPoint(x: self.view.frame.width/2, y: 942))
//        path.addLine(to: CGPoint(x: self.view.frame.width/3, y: 980))
        // Create the bottom line (bottom-left to bottom-right).
//        path.addLine(to: CGPoint(x: pathImage.frame.size.width, y: pathImage.frame.size.height))
        
        // Create the vertical line from the bottom-right to the top-right side.
         // Close the path. This will create the last line automatically.
//        path.close()
        return path
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
