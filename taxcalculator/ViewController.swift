//
//  ViewController.swift
//  taxcalculator
//
//  Created by Hannah Ip on 8/16/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var enteredAmount: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let textField = UITextField()
        textField.keyboardType = .numberPad
    }
    
    @IBAction func suggestedTipPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "suggestedTipSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "suggestedTipSegue" {
            let destinationVC = segue.destination as? SecondViewController
            if let initialAmount = enteredAmount.text {
                destinationVC?.initialAmount = initialAmount
            }
        }
    }

}

