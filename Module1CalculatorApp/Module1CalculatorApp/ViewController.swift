//
//  ViewController.swift
//  Module1CalculatorApp
//
//  Created by Andrew Flowers on 9/6/20.
//  Copyright © 2020 Andrew Flowers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var xValue: UITextField!
    @IBOutlet weak var yValue: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBAction func addValues(_ sender: Any) {
        var x = Int(xValue.text!)!
        var y = Int(yValue.text!)!
        var total = x + y
        totalLabel.text = String(total)
    }
    @IBAction func subtractValues(_ sender: Any) {
        var x = Int(xValue.text!)!
        var y = Int(yValue.text!)!
        var total = x - y
        totalLabel.text = String(total)
    }
    @IBAction func multiplyValues(_ sender: Any) {
        var x = Int(xValue.text!)!
        var y = Int(yValue.text!)!
        var total = x * y
        totalLabel.text = String(total)
    }
    @IBAction func divideValues(_ sender: Any) {
        var x = Int(xValue.text!)!
        var y = Int(yValue.text!)!
        var total = x / y
        totalLabel.text = String(total)
    }
    
}

