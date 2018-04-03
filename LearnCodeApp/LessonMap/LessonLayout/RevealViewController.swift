//
//  RevealViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 2/25/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit
import PopupDialog

class RevealViewController: UIViewController {
    var currentModule: Module!

    @IBOutlet var infoView: UIView!
    
    @IBOutlet var revealButton: UIButton!
    @IBOutlet var exampleView: UIView!
    @IBOutlet var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.isHidden = false
//        self.tabBarController?.tabBar.isHidden = true
        
        layoutSetup()

        // Do any additional setup after loading the view.
    }
    
    func modelExample(){
        
        // Prepare the popup assets
        let title = "CORRECT!"
        let image = UIImage(named: "none")
        // Create the dialog
        let popup = PopupDialog(title: title, message: nil, image: image)
        // Create buttons
        let buttonOne = DefaultButton(title: "Next", height: 60) {
            self.navigationController?.popToRootViewController(animated: true)
        }
        
//        let buttonTwo = DefaultButton(title: "Look at Problem", dismissOnTap: true) {
//            print("Continue Looking.")
//        }
//
//        let buttonThree = CancelButton(title: "CANCEL") {
//                print("You canceled the car dialog.")
//        }
        
        // Add buttons to dialog
        // Alternatively, you can use popup.addButton(buttonOne)
        // to add a single button
        popup.addButtons([buttonOne])
        
        let dialogAppearance = PopupDialogDefaultView.appearance()
        
        dialogAppearance.titleFont = UIFont.boldSystemFont(ofSize: 20)

        dialogAppearance.backgroundColor = UIColor.green
        
 
        // Present dialog
        self.present(popup, animated: true, completion: nil)
        
    }
    
    func layoutSetup(){
        let answer = "This is the answer."
        let rect = CGRect(origin: CGPoint(x:10, y:0), size: CGSize(width:view.frame.width-10, height:infoView.frame.height))
        let label = UILabel(frame: rect)
        label.numberOfLines = 3
        //        label.backgroundColor = UIColor.red
        label.text = "Every line of code in a script is a command for the computer."
        label.font = UIFont(name: "Helvetica", size: 20.0)
        
        infoView.addSubview(label)
        
        let label1 = UILabel(frame: rect)
        label1.numberOfLines = 5
        //        label.backgroundColor = UIColor.red
        label1.font = UIFont(name: "Helvetica", size: 20.0)
        
        label1.text = "variable1 = \"Some words\" \nvariable2 = \"matter\" \nsentence = variable1 + variable2 \nprint(sentence)"
        
        exampleView.addSubview(label1)
        
        answerLabel.text = answer
        answerLabel.isHidden = true
    }

    @IBAction func revealButton(_ sender: UIButton) {
        if answerLabel.isHidden {
            answerLabel.isHidden = false
            sender.backgroundColor = UIColor.green

            sender.setTitle("Next", for: .normal)
        }
        else{
            performSegue(withIdentifier: "Fill", sender: sender)
        }

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
