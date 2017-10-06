//
//  ViewController.swift
//  jhuaAssignment3
//
//  Created by Jessica Hua on 1/27/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet private weak var display: UILabel!
    
    var middleOfTyping = false
    
    // puts the number pressed onto the display
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        // keeps track of if the user is in the middle of typing
        if middleOfTyping {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        } else {
            display!.text = digit
        }
        middleOfTyping = true 
    }
    
    // converts between a String and Double
    private var displayValue: Double{
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    // perform mathmatical calulations by calling CalculatorBrain()
    
    private var brain = CalculatorBrain()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if middleOfTyping {
            brain.setOperand(displayValue)
            middleOfTyping = false
        }
        if let mathSymbol = sender.currentTitle {
            brain.performOperation(mathSymbol)
        }
        displayValue = brain.result
    }
    
    @IBAction func clear(_ sender: UIButton) {
        middleOfTyping = false
        displayValue = 0
    }

}

