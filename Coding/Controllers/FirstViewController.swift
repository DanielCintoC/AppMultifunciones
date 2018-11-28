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
    var userName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateAgeLabel()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Cerramos el teclado
        textField.resignFirstResponder()
        
        // Recuperamos el contenido del textField, si es que existe
        if let theText = textField.text {
            self.userName = theText
        }
        
        // Indicamos la finalización de la edición del textFiled
        return true
    }

    
    @IBAction func sliderAgeMoved(_ sender: UISlider) {
        self.updateAgeLabel()
    }
    
    @IBAction func validateData(_ sender: UIButton) {
        
        let shouldEnterParty = (userName == "Daniel Cinto") || (userAge >= 18)
        if shouldEnterParty {
            showMessageAlert(message: "Puedes pasar a la fiesta.")
            self.view.backgroundColor = UIColor(red: 49.0/255.0, green: 237.0/255.0, blue: 93.0/255.0, alpha: 0.7)
        } else {
            showMessageAlert(message: "Lo siento, esta fiesta es privada. No tienes acceso...")
            self.view.backgroundColor = UIColor(red: 250.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.8)
        }
    
        /*if userName == "Daniel Cinto" {
            showMessageAlert(message: "Puedes pasar a la fiesta por ser DC.")
            self.view.backgroundColor = UIColor(red: 49.0/255.0, green: 237.0/255.0, blue: 93.0/255.0, alpha: 0.7)
        } else {
            
            if userAge >= 18 {
                showMessageAlert(message: "Puedes pasar a la fiesta por ser mayor de edad.")
                self.view.backgroundColor = UIColor(red: 50.0/255.0, green: 160.0/255.0, blue: 250.0/255.0, alpha: 0.7)
            } else {
                showMessageAlert(message: "Lo siento, esta fiesta es privada. No tienes acceso...")
                self.view.backgroundColor = UIColor(red: 250.0/255.0, green: 50.0/255.0, blue: 50.0/255.0, alpha: 0.8)
            }
            
        }*/
        
    }
    
    func updateAgeLabel() {
        self.userAge = Int(sliderAge.value)
        self.labelAge.text = "\(userAge)"
    }
    
    func showMessageAlert(message: String) {
        let alretController = UIAlertController(title: "Acceso", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alretController.addAction(okAction)
        self.show(alretController, sender: nil)
    }
 
}
