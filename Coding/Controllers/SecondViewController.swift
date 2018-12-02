//
//  SecondViewController.swift
//  Coding
//
//  Created by daniel cinto conde on 28/11/18.
//  Copyright © 2018 daniel cinto conde. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelNumber: UILabel!
    @IBOutlet weak var textViewResult: UITextView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelGoldNum: UILabel!
    
    var fibonacci: [Int] = [0, 1]
    var fibonacciId = 1
    var calculateGoldNume = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateLabel(id: Int(self.stepper.value))
    }

    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        updateLabel(id: Int(sender.value))
    }
    
    @IBAction func switchMoved(_ sender: UISwitch) {
        calculateGoldNume = sender.isOn
        calculateGoldNum()
    }
    
    func updateLabel(id: Int) {
        self.fibonacciId = id;
        self.labelNumber.text = "\(fibonacciId)"
        generateFibonacciNumbers()
        calculateGoldNum()
    }
    
    func generateFibonacciNumbers() {
        /*if (fibonacciId <= 1  || fibonacciId >= 100) {
            return
        }*/
        
        // Generar los número de Fibonacci
        fibonacci = [0, 1]
        for i in 2...fibonacciId {
            fibonacci.append( fibonacci[ i-1 ] + fibonacci[ i-2 ] )
        }
        
        let fibStr: [String] = fibonacci.compactMap({String($0)})
        let result: String = fibStr.joined(separator: "\n")
        self.textViewResult.text = result
        
    }
    
    private func calculateGoldNum() {
    
        if self.calculateGoldNume {
            // Hay que generar el número de oro como cociente entre los dos últimos de Fibonacci
            let last = Double(fibonacci[fibonacci.count - 1])
            let previous = Double(fibonacci[fibonacci.count - 2])
            let goldNum = last / previous
            self.labelGoldNum.text = "\(goldNum)"
            
        } else {
            self.labelGoldNum.text = "Ver el número de oro"
        }
        
    }

}

