//
//  LessonsTableViewController.swift
//  LearnCodeApp
//
//  Created by Robby Bowler on 1/28/18.
//  Copyright © 2018 Robby Bowler. All rights reserved.
//

import UIKit

class LessonsTableViewController: UITableViewController {

    @IBOutlet var LessonTitleImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LessonTitleImage.loadGif(name: "SpaceShip")
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "SpaceShip.gif")!)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 54/255, green: 169/255, blue: 255/255, alpha: 1)
//        UINavigationBar.appearance().barTintColor = UIColor(red: 0, green: 0/255, blue: 205/255, alpha: 1)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewDidAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false

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
        return LessonStore.instance.allLessons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Lesson") as! LessonTableViewCell
        let lesson = LessonStore.instance.allLessons[indexPath.row]
        
        if (!lesson.passed && indexPath.row > 0){
            cell.LessonView.backgroundColor = UIColor.gray
            cell.LessonView.isOpaque = true
            cell.LessonImage.isOpaque = true
            cell.setSelected(false, animated: false)
            cell.isUserInteractionEnabled = false
        }

         //Configure the cell...
        cell.LessonView.layer.cornerRadius = cell.LessonView.frame.height/2
        cell.LessonImage.image = lesson.lessonImage
        cell.LessonNameLabel.text = lesson.name
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "StartLesson"?:
            //figure  out which row was just tapped
            if let row = tableView.indexPathForSelectedRow?.row{
                //Get the item associated with this rrow and pass it along
                let Lesson = LessonStore.instance.allLessons[row]
                let DetailLesson = segue.destination as! DetailedLessonViewController
                DetailLesson.CurrentLesson = Lesson
                DetailLesson.LessonNumber = row
            }
        case "Add"?: break
            
            //            let addWordController = segue.destination as! AddWordViewController
            
        default:
            preconditionFailure("Unexpected segue identifier.")
        }
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
