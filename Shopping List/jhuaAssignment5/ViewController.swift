//
//  ViewController.swift
//  jhuaAssignment5
//
//  Created by Jessica Hua on 2/15/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var newList: UIButton!
    @IBOutlet weak var newItem: UIButton!
    @IBOutlet weak var add: UIButton!
    
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var quantityField: UITextField!
    @IBOutlet weak var list: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // creates a new empty shopping list
    @IBAction func createNewList(_ sender: UIButton) {
        list.text = ""
    }
    
    // Clear any content in the description and quantity fields
    @IBAction func addNewItem(_ sender: UIButton) {
        descriptionField.text = ""
        quantityField.text = ""
    }
    
    // dismisses the numberical keyboard when background is touched
    @IBAction func backgroundTouch(_ sender: UIControl) {
        quantityField.resignFirstResponder()
    }
    
    @IBAction func doneTyping(_ sender: UITextField) {
        descriptionField.resignFirstResponder()
    }
    
    
    // adds a new item to the shopping list based on the description and quantity
    @IBAction func addToList(_ sender: UIButton) {
        let description = descriptionField.text
        let descriptionFlag = description?.isEmpty
        let quantity = quantityField.text
        let intQuantity = Int(quantityField.text!)
        let quantityFlag = quantity?.isEmpty
        
        if descriptionFlag! || quantityFlag!  {
            let alertController = UIAlertController(title: "Invalid Item", message:
                "Both Description and Quantity must be entered", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
        } else if intQuantity == nil {
            let alertController = UIAlertController(title: "Invalid Item", message:
                "Quantity must be a number", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
        } else {
        let currentTextinList = list.text
        let item = quantity! + "x " + description!
        let ongoingList = currentTextinList! + "\n" + item
        list.text = ongoingList
        }
        
    }
    
    
}
