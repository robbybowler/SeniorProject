//
//  MultiAnswerViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/29/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit
import SwiftyShadow
import PopupDialog


//imageView.layer.cornerRadius = 120
//imageView.layer.shadowRadius = 20
//imageView.layer.shadowOpacity = 0.8
//imageView.layer.shadowColor = UIColor.black.cgColor
//imageView.layer.shadowOffset = CGSize.zero

class MultiAnswerViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var currentModule: Module!
    var currentLesson: Lesson!
    var moduleIndex: Int!
    
    @IBOutlet weak var solveButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var answerTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentModule.answers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MultiAnswerTableViewCell") as! MultiAnswerTableViewCell
        cell.answerButton.setTitle(currentModule.answers[indexPath.row], for: .normal)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "This is where the question goes!"
        makeShadows()
        answerTableView.bounces = false

        
        // Do any additional setup after loading the view.
    }
    
    func makeShadows(){
        solveButton.layer.shadowRadius = 5
        solveButton.layer.shadowOpacity = 0.8
        solveButton.layer.shadowColor = UIColor.black.cgColor
        solveButton.layer.shadowOffset = CGSize.zero
        
    }
    
    @IBAction func solveButton(_ sender: UIButton) {
        if checkAnswers(){
            answerModal(correct: true)

        }else{
            answerModal(correct: false)

        }

    }
    
    func checkAnswers()->Bool{
        for index in 0..<currentModule.correntAnswers.count{
            print(currentModule.correntAnswers[index])
            let cell = answerTableView.cellForRow(at: IndexPath(row: currentModule.correntAnswers[index], section: 0)) as! MultiAnswerTableViewCell
            if cell.answerButton.backgroundColor != UIColor.cyan{
                
                return false
            }
        }
        return true
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
