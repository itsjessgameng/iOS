//
//  FinalViewController.swift
//  jhuaFinalProject
//
//  Created by Jessica Hua on 3/14/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var refreshButton: UIButton!
    
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

    @IBAction func refreshButtonPressed(_ sender: UIButton) {
        totalLabel.text = overallTotal
    }

}
