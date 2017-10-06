//
//  FirstViewController.swift
//  jhuaAssignment7
//
//  Created by Jessica Hua on 3/1/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var powerSwitch: UISwitch!
    
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var volumeSlider: UISlider!
    
    @IBOutlet weak var channelLabel: UILabel!
    @IBOutlet weak var channelPlus: UIButton!
    @IBOutlet weak var channelMinus: UIButton!
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!

    @IBOutlet weak var favoriteChannel: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        for (index, channelSegArray) in channelSegArray.enumerated(){
            favoriteChannel.setTitle(channelSegArray, forSegmentAt: index)
        }
    }

    // controls the power switch
    @IBAction func power(_ sender: UISwitch) {
        // power is switched to on and all other buttons enabled
        if powerSwitch.isOn == true {
            powerLabel.text = "On"
            volumeSlider.isUserInteractionEnabled = true
            channelPlus.isUserInteractionEnabled = true
            channelMinus.isUserInteractionEnabled = true
            zero.isUserInteractionEnabled = true
            one.isUserInteractionEnabled = true
            two.isUserInteractionEnabled = true
            three.isUserInteractionEnabled = true
            four.isUserInteractionEnabled = true
            five.isUserInteractionEnabled = true
            six.isUserInteractionEnabled = true
            seven.isUserInteractionEnabled = true
            eight.isUserInteractionEnabled = true
            nine.isUserInteractionEnabled = true
            favoriteChannel.isUserInteractionEnabled  = true
        } else {
            // power is switched off and all other buttons are disabled
            powerLabel.text = "Off"
            volumeSlider.isUserInteractionEnabled = false
            channelPlus.isUserInteractionEnabled = false
            channelMinus.isUserInteractionEnabled = false
            zero.isUserInteractionEnabled = false
            one.isUserInteractionEnabled = false
            two.isUserInteractionEnabled = false
            three.isUserInteractionEnabled = false
            four.isUserInteractionEnabled = false
            five.isUserInteractionEnabled = false
            six.isUserInteractionEnabled = false
            seven.isUserInteractionEnabled = false
            eight.isUserInteractionEnabled = false
            nine.isUserInteractionEnabled = false
            favoriteChannel.isUserInteractionEnabled  = false
            
        }
    }
    
    // volume change via the slider
    @IBAction func volumeChange(_ sender: UISlider) {
         volumeLabel.text = "\((sender.value) * 100)"
    }
    
    // changes the current channel
    var count = 0
    @IBAction func channelChange(_ sender: UIButton) {
        let digit = sender.currentTitle!
        count += 1
        
        // if 2 numbers have been pressed, display the channel and reset count
        if (count == 2){
            channelLabel!.text = digit
            count = 0
            // if only one digit is pressed, waits on the other digit
        } else {
            let textCurrentlyInDisplay = channelLabel!.text!
            channelLabel!.text = textCurrentlyInDisplay + digit
        }
    }
    
    // increments from the current channel by 1
    @IBAction func channelIncrement(_ sender: UIButton) {
        let currentChan = Int(channelLabel.text!)
        if(currentChan! + 1 <= 99) {
            let newChan = currentChan! + 1
            channelLabel.text = "\(String(newChan))"
        }
    }
    
    // decrements from the current channel by 1
    @IBAction func channelDecrement(_ sender: UIButton) {
        let currentChan = Int(channelLabel.text!)
        if(currentChan! - 1 > 0) {
            let newChan = currentChan! - 1
            channelLabel.text = "\(String(newChan))"
        }
    }
    
    // updates current channel to favorite channel selected
    @IBAction func favChannel(_ sender: UISegmentedControl) {
        channelLabel.text = channelNumberArray[favoriteChannel.selectedSegmentIndex]
    }
    
    

}

