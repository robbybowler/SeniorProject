//
//  HomeViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 1/26/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func LoginButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Login", message: nil, preferredStyle: .alert)
        alert.addTextField{(textField) in
            textField.placeholder="Name"
        }
        let action = UIAlertAction(title: "Login", style: .default){(_) in
            let name = alert.textFields!.first!.text!
            print(name)
        }
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
    }
    
}
