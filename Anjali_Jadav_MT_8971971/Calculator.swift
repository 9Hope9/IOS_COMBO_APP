//
//  ViewController.swift
//  last
//
//  Created by user240436 on 3/13/24.
//

import UIKit
import Foundation

class Calculator: UIViewController {

     //Outlates
    @IBOutlet weak var EnterA: UITextField!
    @IBOutlet weak var EnterB: UITextField!
    @IBOutlet weak var EnterC: UITextField!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
                 super.viewDidLoad()
                   // Do any additional setup after loading the view, typically from a nib.
               }

    // Action to clear input fields and labels
    @IBAction func clear(_ sender: Any) {
        EnterA.text = ""
        EnterB.text = ""
        EnterC.text = ""
        answer.text = ""
        message.text = ""
        
    }
    
    // Override didReceiveMemoryWarning method
    override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
            }
            
            
            var a = Double()
            var b = Double()
            var c = Double()
            var delta = Double()
            var x1 = Double()
            var x2 = Double()
            var linearEquation = Bool()
            var quadraticEquation = Bool()
           
    // Function to check the type of equation
            func checkEquation() {
                if a == 0 {
                    linearEquation = true
                    quadraticEquation = false
                } else if a != 0 {
                    quadraticEquation = true
                    linearEquation = false
                }
            }
            
            
    // Function to resolve linear equation
            func linearEquationResolution() {
                x1 = -c / b
                message.text = "There is only one value for X"
                answer.text = "x = \(x1)"
            }
            
    // Function to calculate delta
            func Delta() {
                delta = (b * b) - (4 * a * c)
            }
    // Function to resolve quadratic equation
            func quadraticEquationResolution() {
                if delta >= 0 {
                    x1 = ( -b + sqrt(delta)) / (2*a)
                    x2 = ( -b - sqrt(delta)) / (2*a)
                    message.text = "There are two values for X"
                    answer.text = "x=\(x1) and x=\(x2)"
                    
                } else if delta < 0 {
                    message.text = "There are no results since the discriminant is less than zero."
                    answer.text = ""
                    
                }
            }
            
    // Function to solve the equation
            func solveIt() {
                if linearEquation == true {
                    linearEquationResolution()
                } else if quadraticEquation == true {
                    Delta()
                    quadraticEquationResolution()
                }
            }
            
  
    // Action triggered when the "Calculate" button is pressed
            @IBAction func finalResult(_ sender: Any) {
                
                if EnterA.text == "" && EnterB.text == "" && EnterC.text == "" {
                    message.text = "Enter a value for A, B and C to find X."
                    return;
                    }
                if Double(EnterA.text!) == nil {
                    message.text = "The value you entered for A is invalid."
                    return;
                    }
                if Double(EnterB.text!) == nil {
                    message.text = "The value you entered for B is invalid."
                    return;
                    }
                if Double(EnterC.text!) == nil {
                    message.text = "The value you entered for C is invalid."
                    return;
    }

                a = Double(EnterA.text!)!
                b = Double(EnterB.text!)!
                c = Double(EnterC.text!)!
                checkEquation()
                solveIt()
                                
            }
           
        }

