//
//  OrderTableViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 3/29/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class OrderTableViewController: UITableViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "This is a question to be ordered."
        self.tableView.bounces = false
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        
//        currentModule = LessonStore.instance.allLessons[0].Modules[0]
        return true
    }
    
    @IBAction func EditButton(_ sender: UIButton) {
        tableView.isEditing = !tableView.isEditing
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
//    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        let movedObject = self.fruits[sourceIndexPath.row]
//        fruits.remove(at: sourceIndexPath.row)
//        fruits.insert(movedObject, at: destinationIndexPath.row)
//        NSLog("%@", "\(sourceIndexPath.row) => \(destinationIndexPath.row) \(fruits)")
        // To check for correctness enable: self.tableView.reloadData()
//    }
   
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Lesson") as! LessonTableViewCell
//        let lesson = LessonStore.instance.allLessons[indexPath.row]
//        if (lesson.passed){
//            cell.LessonView.backgroundColor = UIColor(red: 0/255, green: 195/255, blue: 255/255, alpha: 1.0)
//            cell.LessonNameLabel.alpha = 1.0
//            cell.LessonImage.alpha = 1.0
//            cell.setSelected(true, animated: true)
//            cell.isUserInteractionEnabled = true
//
//        }
//        else{
//            cell.LessonView.backgroundColor = UIColor(red: 159/255, green: 175/255, blue: 216/255, alpha: 0.7)
//            cell.LessonNameLabel.alpha = 0.2
//            cell.LessonImage.alpha = 0.2
//            cell.setSelected(false, animated: false)
//            cell.isUserInteractionEnabled = false
//        }
//
//        //Configure the cell...
//        cell.LessonView.layer.cornerRadius = cell.LessonView.frame.height/2
//        cell.LessonImage.image = lesson.lessonImage
//        cell.LessonNameLabel.text = lesson.name
//        return cell
//    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell", for: indexPath)
        
        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
