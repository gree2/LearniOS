//
//  ViewController.swift
//  Calculator
//
//  Created by hqlgree2 on 22/3/15.
//  Copyright (c) 2015 hqlgree2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var isTyping = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if isTyping{
            display.text = display.text! + digit
        } else {
            display.text = digit
            isTyping = true
        }
    }

}

