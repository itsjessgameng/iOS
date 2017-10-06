//
//  ConfigViewController.swift
//  jhuaAssignment7
//
//  Created by Jessica Hua on 3/1/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var favChannelSeg: UISegmentedControl!
    @IBOutlet weak var enterChannelName: UITextField!
    @IBOutlet weak var channelLabel: UILabel!
    @IBOutlet weak var channelStepper: UIStepper!
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!

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
    
    @IBAction func channelText(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

    
    @IBAction func channelStepper(_ sender: UIStepper) {
        let channelNumber = Int(sender.value)
        if channelNumber >= 1 && channelNumber <= 99 {
            channelLabel.text = String(Int(sender.value))
        }
    }
    
    @IBAction func cancelInput(_ sender: UIButton) {
        enterChannelName.text = ""
        channelLabel.text = "1"
    }
    
    @IBAction func saveInput(_ sender: UIButton) {
        let channelName = enterChannelName.text
        
        
        if((channelName?.characters.count)! >= 1 && (channelName?.characters.count)! <= 4){
            channelSegArray[favChannelSeg.selectedSegmentIndex] = enterChannelName.text!
            channelNumberArray[favChannelSeg.selectedSegmentIndex] = channelLabel.text!
        } else {
            let alertController = UIAlertController(title: "Invalid Channel Name", message:"Must be 1 to 4 characters.", preferredStyle: UIAlertControllerStyle.alert);
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil));
            
            self.present(alertController, animated: true, completion: nil);
        }
        
    }
    
    
    
}
