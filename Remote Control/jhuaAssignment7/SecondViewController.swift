//
//  SecondViewController.swift
//  jhuaAssignment7
//
//  Created by Jessica Hua on 3/1/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var powerSwitch: UISwitch!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var fastFowardButton: UIButton!
    @IBOutlet weak var rewindButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func power(_ sender: UISwitch) {
        if powerSwitch.isOn == true {
            powerLabel.text = "On"
            stateLabel.text = "Stopped"
            playButton.isUserInteractionEnabled = true
            stopButton.isUserInteractionEnabled = true
            pauseButton.isUserInteractionEnabled = true
            fastFowardButton.isUserInteractionEnabled = true
            rewindButton.isUserInteractionEnabled = true
            recordButton.isUserInteractionEnabled = true
        } else {
            powerLabel.text = "Off"
            stateLabel.text = "Stopped"
            playButton.isUserInteractionEnabled = false
            stopButton.isUserInteractionEnabled = false
            pauseButton.isUserInteractionEnabled = false
            fastFowardButton.isUserInteractionEnabled = false
            rewindButton.isUserInteractionEnabled = false
            recordButton.isUserInteractionEnabled = false
        }
    }
    
    @IBAction func playing(_ sender: UIButton) {
        if(stateLabel.text == "Recording"){
            error("Playing")
        } else {
            stateLabel.text = "Playing"
        }
    }
    
    @IBAction func recording(_ sender: UIButton) {
        if (stateLabel.text != "Stopped"){
            error("Recording")
        } else {
            stateLabel.text = "Recording"
        }
    }
    
    
    @IBAction func stopping(_ sender: UIButton) {
        stateLabel.text = "Stopped"
    }
    
    @IBAction func pausing(_ sender: UIButton) {
        if (stateLabel.text == "Recording"){
            error("Pausing")
        } else {
            stateLabel.text = "Paused"
        }
    }
    
    @IBAction func fastFowarding(_ sender: UIButton) {
        if (stateLabel.text == "Recording"){
            error("Fast Forward")
        } else {
            stateLabel.text = "Forwarding"
        }
    }
    
    @IBAction func rewinding(_ sender: UIButton) {
        if (stateLabel.text == "Recording"){
            error("Rewinding")
        } else {
            stateLabel.text = "Rewinding"
        }
    }
    
    internal func error(_ newState: String) {
        let alertController = UIAlertController(title: "ERROR:", message: "Cannot complete your request", preferredStyle: .actionSheet)
        
        
        let cancel = UIAlertAction(title: "Cancel", style: .destructive)
        
        
        let proceed = UIAlertAction(title: "Force Request", style: .default) { action in
            let okayController = UIAlertController(title: "Previous state stopped", message: "Proceeding to your request.", preferredStyle: .alert)
            
            self.stateLabel.text = newState
            
            let okayAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            okayController.addAction(okayAction)
            self.present(okayController, animated: true, completion: nil)
        }
        
        alertController.addAction(cancel)
        alertController.addAction(proceed)
        present(alertController, animated: true, completion: nil)
    }


}

