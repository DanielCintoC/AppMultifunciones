//
//  FontDetailViewController.swift
//  Coding
//
//  Created by daniel cinto conde on 10/12/18.
//  Copyright © 2018 daniel cinto conde. All rights reserved.
//

import UIKit

class FontDetailViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var pickerFonts: UIPickerView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtoPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
}
