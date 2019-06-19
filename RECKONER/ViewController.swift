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
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        }
        else {
            
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            previousNumber = Double(label.text!)!
            
            // divide operation
            if sender.tag == 12 {
                
                label.text = "/"
            }
                
            // multiplication operation
            else if sender.tag == 13 {
                
                label.text = "X"
            }
                
            // subtraction operation
            else if sender.tag == 14 {
                
                label.text = "-"
            }
                
            //addition operation
            else if sender.tag == 15 {
                
                label.text = "+"
            }
            operation = sender.tag
            performingMath = true
        }
        // calculations done when sender.tag == 16 i.e = is pressed and user wants to calculate their results
        else if sender.tag == 16 {
            
                // division operation once = is pressed
            if operation == 12 {
                label.text = String(previousNumber / numberOnScreen)            }
                // multiplication operation once = is pressed
            else if operation == 13 {
                label.text = String(previousNumber * numberOnScreen)            }
                // subtraction operation once = is pressed
            else if operation == 14 {
                label.text = String(previousNumber - numberOnScreen)            }
                // addition operation once = is pressed
            else if operation == 15 {
                label.text = String(previousNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11 {
            numberOnScreen = 0
            previousNumber = 0
            operation = 0
            label.text = ""
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

