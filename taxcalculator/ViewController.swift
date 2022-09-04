//
//  ViewController.swift
//  taxcalculator
//
//  Created by Hannah Ip on 8/16/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var enteredAmount: UITextField!
    
    
    @IBOutlet weak var TextField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.TextField1.delegate = self
        
        let textField = UITextField()
        textField.keyboardType = .numberPad
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return TextField1.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func suggestedTipPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "suggestedTipSegue", sender: self)
        
    }
    
    @IBAction func customTipPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "customTipSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "suggestedTipSegue" {
            let destinationVC = segue.destination as? SecondViewController
            if let initialAmount = enteredAmount.text {
                destinationVC?.initialAmount = initialAmount
            }
        }
        
        if segue.identifier == "customTipSegue" {
            let destinationVC = segue.destination as? ThirdViewController
            if let initialAmount = enteredAmount.text {
                destinationVC?.initialAmount = initialAmount
            }
        }
    }
    

}

