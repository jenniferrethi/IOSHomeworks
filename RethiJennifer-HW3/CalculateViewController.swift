//
//  CalculateViewController.swift
//  RethiJennifer-HW3
//
//  Created by Rethi, Jennifer L on 2/9/18.
//  Copyright © 2018 Rethi, Jennifer L. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var op1: UITextField!
    @IBOutlet weak var op2: UITextField!
    @IBOutlet weak var operatorType: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var calcButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    override func viewWillAppear(_ animated:Bool) {
        let operationToPreform = operatorType.text
        var result = 0
        if let number1 = Int(op1.text!), let number2 = Int(op2.text!) {
            if(operationToPreform == "Add") {
                result = number1 + number2
            } else if(operationToPreform == "Multply") {
                result = number1 * number2
            } else if(operationToPreform == "Divide") {
                result = number1 / number2
            } else if(operationToPreform == "Subtract") {
                result = number1 - number2
            }
        }
        let num = result as NSNumber
        self.result.text = num.stringValue
    }
    
    
}
