//
//  MultiAnswerTableViewCell.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 4/2/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class MultiAnswerTableViewCell: UITableViewCell {
    @IBOutlet weak var answerButton: UIButton!
    
    @IBOutlet weak var cellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        answerButton.backgroundColor = UIColor.green
//        answerButton.layer.cornerRadius = answerButton.frame.height/2
        
//        cellView.layer.cornerRadius = 120
//        cellView.layer.shadowRadius = 3
//        cellView.layer.shadowOpacity = 0.8
//        cellView.layer.shadowOffset = CGSize.zero
//        cellView.generateOuterShadow()
        
        cellView.layer.shadowRadius = 5
        cellView.layer.shadowOpacity = 0.8
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowOffset = CGSize.zero

        cellView.generateEllipticalShadow()

        
    }
    @IBAction func answerButton(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.cyan{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.cyan
        }

    }
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: false)

        // Configure the view for the selected state
//    }

}
