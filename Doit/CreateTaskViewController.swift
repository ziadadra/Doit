//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by ziad adra on 1/19/17.
//  Copyright © 2017 ziad adra. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    //to pass to the previous VC
   // var previousVC = TasksViewController()
    

    // to pass
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
 // create a task from the outlet information
        
        
        
   //--  let task = Task()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // pass that task to other view controler add new task to array in previous view controler so we should create a var previousVC
       // previousVC.tasks.append(task)
      //  previousVC.tableView.reloadData()
        
        navigationController!.popViewController(animated: true)
        
   }
    

}
