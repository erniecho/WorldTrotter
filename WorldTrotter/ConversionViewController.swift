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
    
    @IBAction func fahreheitFieldEditingChanged(textField: UITextField) {
        celsiusLabel.text = textField.text
    }
    
}
