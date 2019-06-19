//
//  ViewController.swift
//  RECKONER
//
//  Created by Siem Debesay on 2019-06-18.
//  Copyright © 2019 Siem Debesay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var performingMath = false
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            
            // divide operation
            if sender.tag == 12{
                
            }
                
            // multiplication operation
            else if sender.tag == 13 {
                
            }
                
            // subtraction operation
            else if sender.tag == 14 {
                
            }
                
            //addition operation
            else if sender.tag == 15 {
                
                label.text = "+"
            }
            
            performingMath = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

