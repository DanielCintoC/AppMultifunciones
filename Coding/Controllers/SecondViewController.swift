//
//  SecondViewController.swift
//  Coding
//
//  Created by daniel cinto conde on 28/11/18.
//  Copyright © 2018 daniel cinto conde. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var fibonacci: [Int] = [0, 1]
    var fibonacciId = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func generateFibonacciNumbers() {
        if (fibonacciId <= 1  || fibonacciId >= 100) {
            return
        }
        
        // Generar los número de Fibonacci
        
    }

}

