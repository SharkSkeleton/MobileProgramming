//
//  ViewController.swift
//  Lab1
//
//  Created by Mishka on 4/22/19.
//  Copyright © 2019 Mishka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    @IBAction func pushOkButton(_ sender: Any) {
        if(textField.text == "") {return}
        userInfoLabel.text = textField.text!
        textField.resignFirstResponder()
    }

    @IBAction func pushCancelButton(_ sender: Any) {
        userInfoLabel.text = ""
    }
    
    @IBAction func sliderChange(_ sender: Any) {
        if(userInfoLabel.text == "") {return}
        userInfoLabel.font = userInfoLabel.font.withSize(CGFloat(slider.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

