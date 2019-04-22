//
//  ViewController.swift
//  Lab2
//
//  Created by Mishka on 4/22/19.
//  Copyright © 2019 Mishka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var userInfoLabel: UILabel!
    
    @IBAction func pushOkButton(_ sender: Any) {
        if(userTextField.text == "") {return}
        userInfoLabel.text = userTextField.text!
        userTextField.resignFirstResponder()
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
        // Do any additional setup after loading the view.
    }


}

