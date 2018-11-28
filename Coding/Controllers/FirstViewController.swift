//
//  FirstViewController.swift
//  Coding
//
//  Created by daniel cinto conde on 28/11/18.
//  Copyright © 2018 daniel cinto conde. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var sliderAge: UISlider!
    
    var userAge = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateAgeLabel()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Hemos pulsado la tecla enter")
        textField.resignFirstResponder()
        return true
    }

    
    @IBAction func sliderAgeMoved(_ sender: UISlider) {
        self.updateAgeLabel()
    }
    
    func updateAgeLabel() {
        self.userAge = Int(sliderAge.value)
        self.labelAge.text = "\(userAge)"
    }
 
}
