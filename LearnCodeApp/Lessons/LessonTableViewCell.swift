//
//  LessonTableViewCell.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 1/28/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class LessonTableViewCell: UITableViewCell {

    @IBOutlet var LessonNameLabel: UILabel!
    @IBOutlet var LessonImage: UIImageView!
    @IBOutlet var LessonView: LessonView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
