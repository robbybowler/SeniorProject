//
//  FillBlankViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/9/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit
import PopupDialog


class FillBlankViewController: UIViewController {
    
    var currentModule: Module!
    var currentLesson: Lesson!
    var moduleIndex: Int!
    
    @IBOutlet var button2: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var infoView: UIView!
    @IBOutlet var exampleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        self.navigationController?.navigationBar.isHidden = false
        layoutSetup()
    }
    
    func layoutSetup(){
        currentModule = LessonStore.instance.allLessons[0].modules[1]
        let infoBlock = CGRect(origin: CGPoint(x:10, y:0), size: CGSize(width:view.frame.width-10, height:infoView.frame.height))
        let infoLabel = UILabel(frame: infoBlock)
        infoLabel.numberOfLines = 3
        //        label.backgroundColor = UIColor.red
        infoLabel.text = currentModule.infoText
        infoLabel.font = UIFont(name: "Helvetica", size: 20.0)
        infoView.addSubview(infoLabel)
        
        let exampleBlock = CGRect(origin: CGPoint(x:10, y:0), size: CGSize(width:view.frame.width-10, height:infoView.frame.height))
        let exampleLabel = UILabel(frame: exampleBlock)
        exampleLabel.numberOfLines = 3
        //        label.backgroundColor = UIColor.red
        exampleLabel.text = currentModule.exampleText
        exampleLabel.font = UIFont(name: "Helvetica", size: 20.0)
        exampleView.addSubview(exampleLabel)
        
        if currentModule != nil{
            button1.setTitle(currentModule.buttonLeft, for: .normal)
            button2.setTitle(currentModule.buttonRight, for: .normal)
        }
   

    }
    @objc func buttonAction(sender: UIButton!) {
        if currentModule.nextType != "Finished"{
            performSegue(withIdentifier: currentModule.nextType, sender: sender)
        }else{
            navigationController?.popToRootViewController(animated: true)
        }
    }
    
    func answerModal(correct: Bool){
        if correct{
            let title = "CORRECT!"
            let message = "The message would look something like......"

//            let image = UIImage(named: "none")
            let popup = PopupDialog(title: title, message: message, image: nil)
            
            let buttonOne = DefaultButton(title: "Next", height: 60) {
//                 self.navigationController?.popToRootViewController(animated: true)
            }
             buttonOne.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            buttonOne.backgroundColor = UIColor.cyan
            popup.addButtons([buttonOne])
            let dialogAppearance = PopupDialogDefaultView.appearance()
            dialogAppearance.titleFont = UIFont.boldSystemFont(ofSize: 20)
            dialogAppearance.backgroundColor = UIColor.green
            self.present(popup, animated: true, completion: nil)
        }
        else{
            let title = "Wrong!"
            let message = "So Close!"
            let popup = PopupDialog(title: title, message: message, image: nil)
            let buttonOne = CancelButton(title: "Try Again", height: 60) {
            }
            buttonOne.backgroundColor = UIColor.yellow
            popup.addButtons([buttonOne])
            let dialogAppearance = PopupDialogDefaultView.appearance()
            dialogAppearance.titleFont = UIFont.boldSystemFont(ofSize: 20)
            dialogAppearance.backgroundColor = UIColor.yellow
            self.present(popup, animated: true, completion: nil)
        }
        

    }
    
    @IBAction func button1(_ sender: UIButton) {
        answerModal(correct: true)
    }
    
    @IBAction func button2(_ sender: UIButton) {
        answerModal(correct: false)
    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        switch segue.identifier {
//            
//        case "FillToReveal"?:
//            
//            
//            
//        }
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "Fill"?:
            let controller = segue.destination as! FillBlankViewController
            controller.currentLesson = currentLesson
            controller.currentModule = currentLesson.modules[moduleIndex+1]
            controller.moduleIndex = moduleIndex + 1
            
        case "Reveal":
            let controller = segue.destination as! RevealViewController
            controller.currentLesson = currentLesson
            controller.currentModule = currentLesson.modules[moduleIndex+1]
            controller.moduleIndex = moduleIndex + 1
            
        case "Order":
            let controller = segue.destination as! OrderTableViewController
            controller.currentLesson = currentLesson
            controller.currentModule = currentLesson.modules[moduleIndex+1]
            controller.moduleIndex = moduleIndex + 1
            
        case "Multi":
            let controller = segue.destination as! MultiAnswerViewController
            controller.currentLesson = currentLesson
            controller.currentModule = currentLesson.modules[moduleIndex+1]
            controller.moduleIndex = moduleIndex + 1
        default:
            print("Segue didn't work")
            break
        }
        
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
