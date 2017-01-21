//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by ziad adra on 1/19/17.
//  Copyright © 2017 ziad adra. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    
    //var task = Task()
    var task  : Task? = nil
    
    
   // var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       //was  taskLabel.text = task.name
        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        }else {
            taskLabel.text = task!.name!
        }

         // Do any additional setup after loading the view.
    }

    @IBAction func compleTapped(_ sender: Any) {
 //       previousVC.tasks.remove(at: previousVC.selectedIndex)
   //     previousVC.tableView.reloadData()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
        navigationController!.popViewController(animated: true)
        
        
    }
   
    

}
