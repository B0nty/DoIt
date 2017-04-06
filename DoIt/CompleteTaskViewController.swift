//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Jernej Hartman on 06/04/2017.
//  Copyright © 2017 Jernej Hartman. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    
    var task = Task()
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
               taskLabel.text = "❗️\(task.name)"
            } else {
                taskLabel.text = task.name
            }

        
    }


    @IBAction func completeTab(_ sender: AnyObject) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
 

}
