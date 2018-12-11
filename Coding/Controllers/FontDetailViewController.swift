//
//  FontDetailViewController.swift
//  Coding
//
//  Created by daniel cinto conde on 10/12/18.
//  Copyright © 2018 daniel cinto conde. All rights reserved.
//

import UIKit

class FontDetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var pickerFonts: UIPickerView!
    @IBOutlet weak var textView: UITextView!
    
    var familyName: String = ""
    var fonts: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.labelTitle.text = familyName
        self.labelTitle.font = UIFont(name: familyName, size: 22.0)
        
        if fonts.count == 0 {
            self.pickerFonts.isHidden = true
        }
        self.textView.font = UIFont(name: familyName, size: 14.0)
        // Delegar desde código
        /*self.pickerFonts.dataSource = self
        self.pickerFonts.delegate = self*/
        
    }
    
    @IBAction func doneButtoPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
    // MARK: UIPickerDataSourceMethods
    
    // Número de columnas
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Número de filas
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.fonts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.fonts[row]
    }
    
    // MARK: UIPickerViewDelegate methods
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let font  = self.fonts[row]
        self.textView.font = UIFont(name: font, size: 14.0)
    }
    
}
