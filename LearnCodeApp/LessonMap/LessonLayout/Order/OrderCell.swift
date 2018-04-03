//
//  OrderCell.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/29/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {

    @IBOutlet weak var answerLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        answerLabel.text = "This is an answer"
        selectionStyle = .none
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
