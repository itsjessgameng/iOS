//
//  DetailViewController.swift
//  jhuaFinalProject
//
//  Created by Jessica Hua on 3/14/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var firstSwitch: UISwitch!
    @IBOutlet weak var secondSwitch: UISwitch!
    @IBOutlet weak var thirdSwitch: UISwitch!
    @IBOutlet weak var fourthSwitch: UISwitch!
    @IBOutlet weak var fifthSwitch: UISwitch!
    @IBOutlet weak var sixthSwitch: UISwitch!
    @IBOutlet weak var seventhSwitch: UISwitch!
    @IBOutlet weak var eigthSwitch: UISwitch!
    @IBOutlet weak var ninthSwitch: UISwitch!
    @IBOutlet weak var tenthSwitch: UISwitch!
    

    @IBOutlet weak var firstItem: UITextField!
    @IBOutlet weak var secondItem: UITextField!
    @IBOutlet weak var thirdItem: UITextField!
    @IBOutlet weak var fourthItem: UITextField!
    @IBOutlet weak var fifthItem: UITextField!
    @IBOutlet weak var sixthItem: UITextField!
    @IBOutlet weak var seventhItem: UITextField!
    @IBOutlet weak var eigthItem: UITextField!
    @IBOutlet weak var ninthItem: UITextField!
    @IBOutlet weak var tenthItem: UITextField!
    
    
    
    @IBOutlet weak var firstPrice: UITextField!
    @IBOutlet weak var secondPrice: UITextField!
    @IBOutlet weak var thirdPrice: UITextField!
    @IBOutlet weak var fourthPrice: UITextField!
    @IBOutlet weak var fifthPrice: UITextField!
    @IBOutlet weak var sixthPrice: UITextField!
    @IBOutlet weak var seventhPrice: UITextField!
    @IBOutlet weak var eigthPrice: UITextField!
    @IBOutlet weak var ninthPrice: UITextField!
    @IBOutlet weak var tenthPrice: UITextField!
   
    
    @IBOutlet weak var firstQty: UITextField!
    @IBOutlet weak var secondQty: UITextField!
    @IBOutlet weak var thirdQty: UITextField!
    @IBOutlet weak var fourthQty: UITextField!
    @IBOutlet weak var fifthQty: UITextField!
    @IBOutlet weak var sixthQty: UITextField!
    @IBOutlet weak var seventhQty: UITextField!
    @IBOutlet weak var eigthQty: UITextField!
    @IBOutlet weak var ninthQty: UITextField!
    @IBOutlet weak var tenthQty: UITextField!
  
    
    


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
    
    
    
    func goAwayKeyboard(){
        firstItem.resignFirstResponder()
        secondItem.resignFirstResponder()
        thirdItem.resignFirstResponder()
        fourthItem.resignFirstResponder()
        fifthItem.resignFirstResponder()
        sixthItem.resignFirstResponder()
        seventhItem.resignFirstResponder()
        eigthItem.resignFirstResponder()
        ninthItem.resignFirstResponder()
        tenthItem.resignFirstResponder()
        
        firstPrice.resignFirstResponder()
        secondPrice.resignFirstResponder()
        thirdPrice.resignFirstResponder()
        fourthPrice.resignFirstResponder()
        fifthPrice.resignFirstResponder()
        sixthPrice.resignFirstResponder()
        seventhPrice.resignFirstResponder()
        eigthPrice.resignFirstResponder()
        ninthPrice.resignFirstResponder()
        tenthPrice.resignFirstResponder()
        
        firstQty.resignFirstResponder()
        secondQty.resignFirstResponder()
        thirdQty.resignFirstResponder()
        fourthQty.resignFirstResponder()
        fifthQty.resignFirstResponder()
        sixthQty.resignFirstResponder()
        seventhQty.resignFirstResponder()
        eigthQty.resignFirstResponder()
        ninthQty.resignFirstResponder()
        tenthQty.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        goAwayKeyboard()
    }
    
    
    
    
//    var prices = [Double]()
//    
//    var quanties = [Double]()
//    
//    var totals = Double (0)
    
    @IBAction func donePressed(_ sender: UIButton) {
        
        var prices = [Double]()
        
        var quanties = [Double]()
        
        var totals = Double (0)
        
    
        
        if(firstPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(firstPrice.text!)!)
        }
        
        if(secondPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(secondPrice.text!)!)
        }
        
        if(thirdPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(thirdPrice.text!)!)
        }
        
        if(fourthPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(fourthPrice.text!)!)
        }
        
        if(fifthPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(fifthPrice.text!)!)
        }
        
        if(sixthPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(sixthPrice.text!)!)
        }
        
        if(seventhPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(seventhPrice.text!)!)
        }
        
        if(eigthPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(eigthPrice.text!)!)
        }
        
        if(ninthPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(ninthPrice.text!)!)
        }
        
        if(tenthPrice.text!.isEmpty) {
            prices.append(Double(0))
        } else {
            prices.append(Double(tenthPrice.text!)!)
        }
        
        if(firstQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(firstQty.text!)!)
        }
        
        if(secondQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(secondQty.text!)!)
        }
        
        if(thirdQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(thirdQty.text!)!)
        }
        
        if(fourthQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(fourthQty.text!)!)
        }
        
        if(fifthQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(fifthQty.text!)!)
        }
        
        if(sixthQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(sixthQty.text!)!)
        }
        
        if(seventhQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(seventhQty.text!)!)
        }
        
        if(eigthQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(eigthQty.text!)!)
        }
        
        if(ninthQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(ninthQty.text!)!)
        }
        
        if(tenthQty.text!.isEmpty) {
            quanties.append(Double(0))
        } else {
            quanties.append(Double(tenthQty.text!)!)
        }
        
        
        for i in 0 ..< prices.count {
            let total = prices[i] * quanties[i]
            totals = totals + total
        }
        
        overallTotal = String(totals)

    }
    

}
