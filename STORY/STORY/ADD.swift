//
//  ViewController.swift
//  AlankratiAryan
//
//  Created by student on 07/07/25.
//

import UIKit

class ADD: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func sum(_ sender: UIButton) {
        
        let Fnumber1 = Double(number1.text!)
        let Snumber2 = Double(number2.text!)
        let sum1 = Fnumber1! + Snumber2!
        
        print("sum: \(sum1)")
        result.text = "total : \(sum1)"
    }
    
    
   
}

