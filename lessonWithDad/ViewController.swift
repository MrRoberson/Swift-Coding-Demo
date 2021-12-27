//
//  ViewController.swift
//  lessonWithDad
//
//  Created by Killian Cole Roberson on 12/20/21.
//

// Investigate:
// Some logical ideas ideas for how youwnt to handle errors?
// Have concrete plan how what steps to take
// Implement addition and division


// VERY IMPORTANT CHANGE!!!!

import UIKit

class ViewController: UIViewController {

    var savedValue = ""
    var currentOperation = ""

    @IBAction func myButton(_ sender: Any) {
        
        //SHEEP
        
        // Guard
//        guard myTextField.text!.count > 0 else {
            // \(STUFF)
//            print("Text Field is Blank")
//            return
//        }
//        print("hello \(myTextField.text!)")
        
        // IF
//        if !(myTextField.text!.count > 0) {
//            print("Text Field is Blank")
//        } else {
//            print("hello \(myTextField.text!)")
//        }
        
        // SWITCH
//        var message = ""
//        let count = myTextField.text!.count
//        switch count {
//        case 0: message = "0"
//            break
//        case 1: message = "1"
//            break
//        case 2: message = "2"
//            break
//        case 3: message = "3"
//            break
//        case 4: message = "4"
//            break
//        case 5: message = "5"
//            break
//        default:
//            print("default value")
//        }
//        print("Count of Text is: \(message)")
        
        // SWITCH TEXT
        var message = ""
        switch myTextField.text! {
        case "dog": message = "you have dog"
            break
        case "cat": message = "you have cat"
            break
        case "kyzer":  message = "you have dissapointment"
            break
            
        default:
            print("default value")
            
        }
        print(message)
        

        
        //home
    }
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    
    // Calc
    
    @IBOutlet weak var value: UILabel!
    @IBAction func Button(_ sender: UIButton) {
                
        guard let valueText = value.text else { return }
        print("Saved Value: \(savedValue)")
        print("Current Value: \(valueText)")
        print("Current Operation: \(currentOperation)")
        
        if sender.titleLabel?.text == "-" {
            savedValue = valueText
            currentOperation = "-"
            clearValueText()
        } else if sender.titleLabel?.text == "+" {
            
        } else if sender.titleLabel?.text == "clear" {
            clearValueText()
        } else if sender.titleLabel?.text == "=" {
                
            guard let valueText = value.text else { return }
            
            do {
                calculate(savedValueString: savedValue, currentValueString: valueText, currentOperationString: currentOperation)
            }
            
        } else {
            
            
            guard let valueText = value.text else { return }
            guard let titleLabelText = sender.titleLabel!.text else { return }
            value.text = "\(valueText)\(titleLabelText)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearValueText()
    }
    
    func clearValueText() {
        value.text = ""
    }
    
    func calculate(savedValueString: String, currentValueString: String, currentOperationString: String) {
        
        // savedValue (currentOpertion) currentValue
        // convert to number (convert to operator) convert to number
        //var caluculation = Float(savedValue) // Needs operator Float(currentValue)
        // 7 - 3
//        guard let savedValueFloat = Float(savedValueString) else { return }
//        guard let currentValueFloat = Float(currentValueString) else { return }
        
//        print("savedValueFloat: \(savedValueFloat)")
//        print("currentValueFloat: \(currentValueFloat)")
        
        let expn = NSExpression(format:"\(savedValueString)\(currentOperationString)\(currentValueString)")
        print(expn.expressionValue(with: nil, context: nil) ?? "")
        let resultingCalulation = expn.expressionValue(with: nil, context: nil)
        guard let result = resultingCalulation else { return }
        
        
        value.text = "\(result)"
        currentOperation = ""
    }
    
    // viewController.optionalTest()
    
    // let item = something
    
    func optionalTest(sender: UIButton) -> String {
        //let string = "my secret stash!"
        
        let name = sender.titleLabel?.text!
        
        
        
//        guard let winner = name else {
//             print("No one won the award")
//             return
//         }
        
        //guard let value = sender.titleLabel?.text! else { return }
//        var currentVal = Int(value.text!)
//        var newVal = Int((sender.titleLabel?.text)!)
        //value.text = "\(currentVal! - newVal!)"
        
        return ""

    }

}

