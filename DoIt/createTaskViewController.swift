//
//  createTaskViewController.swift
//  DoIt
//
//  Created by Jernej Hartman on 04/04/2017.
//  Copyright © 2017 Jernej Hartman. All rights reserved.
//

import UIKit

class createTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    @IBAction func addTapped(_ sender: Any) {
        // Create Task from the outle information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
 

}
