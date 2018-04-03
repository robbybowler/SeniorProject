//
//  MultiAnswerViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/29/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit
import SwiftyShadow

//imageView.layer.cornerRadius = 120
//imageView.layer.shadowRadius = 20
//imageView.layer.shadowOpacity = 0.8
//imageView.layer.shadowColor = UIColor.black.cgColor
//imageView.layer.shadowOffset = CGSize.zero

class MultiAnswerViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var solveButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var answerTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MultiAnswerTableViewCell", for: indexPath)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        answerTableView.isScrollEnabled = false
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
