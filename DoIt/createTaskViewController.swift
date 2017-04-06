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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    @IBAction func addTapped(_ sender: Any) {
        
       let context =  (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
       let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back
        
        navigationController!.popViewController(animated: true)
    }
 

}
