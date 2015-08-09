//
//  SecondViewController.swift
//  To Do List
//
//  Created by Richard Garrod on 09/08/2015.
//  Copyright (c) 2015 RichardGarrod. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var thingToDo: UITextField!

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func addButton(sender: AnyObject) {
        
        if thingToDo.text.isEmpty {
            return
        }
        
        toDoList.append(thingToDo.text)
        
        thingToDo.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.thingToDo.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
}

