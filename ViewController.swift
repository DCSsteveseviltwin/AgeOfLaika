//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by David and Gloria Sciuto on 11/14/14.
//  Copyright (c) 2014 David C Sciuto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enterHumanYearsTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsPressed(sender:UIButton) {
        let stringFromTextField  = enterHumanYearsTextField.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(intFromOptional * 7)" + " Human Years"

        enterHumanYearsTextField.resignFirstResponder()
    }

}

