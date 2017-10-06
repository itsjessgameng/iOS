//
//  ViewController.swift
//  jhuaAssignment8
//
//  Created by Jessica Hua on 3/6/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var attraction: chicagoAttraction?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        if let a = attraction {
            titleLabel.text = a.name
            descriptionLabel.text = a.longDescription
        }
    }

}

