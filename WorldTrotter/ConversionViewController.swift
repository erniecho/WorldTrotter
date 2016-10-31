//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Ernie Cho on 10/30/16.
//  Copyright © 2016 ErnShu. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Double?
    
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return (value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
    
    
    @IBAction func fahreheitFieldEditingChanged(textField: UITextField) {
        if let text = textField.text , !text.isEmpty {
            celsiusLabel.text = text
        }
        else {
            
        }
        celsiusLabel.text = "???"
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
}
