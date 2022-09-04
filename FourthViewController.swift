//
//  FourthViewController.swift
//  taxcalculator
//
//  Created by Hannah Ip on 8/18/22.
//

import UIKit

class FourthViewController: UIViewController, UITextFieldDelegate {
    
    var totalAmount : String = ""
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var numPeople: UITextField!
    @IBOutlet weak var perPerson: UILabel!
    
    
    @IBAction func calculateButton(_ sender: Any) {
        if let numberP = numPeople.text {
            
            let double = (totalAmount as NSString).doubleValue
            
            let numPeeps = (numberP as NSString).doubleValue
            
            let calc = Double(round(100 * (double / numPeeps)) / 100)
            
            perPerson.text = "$\(calc)"
        }
    }
    
    @IBOutlet weak var TextField3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.TextField3.delegate = self
        
        totalAmountLabel.text = "$\(totalAmount)"

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return TextField3.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}
