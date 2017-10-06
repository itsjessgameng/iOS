//
//  AddItemViewController.swift
//  jhuaFinalProject
//
//  Created by Jessica Hua on 3/14/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet weak var enterItem: UITextField!
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func doneTyping(_ sender: UITextField) {
        enterItem.resignFirstResponder()
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        enterItem.text = ""
    }
    

    @IBAction func donePressed(_ sender: UIButton) {
        lists.append(enterItem.text!)
        
        let alertController = UIAlertController(title: "Success", message: "New list has been added", preferredStyle: .actionSheet)
        let okayAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
    
    }

    
    

}
