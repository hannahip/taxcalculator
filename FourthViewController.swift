//
//  FourthViewController.swift
//  taxcalculator
//
//  Created by Hannah Ip on 8/18/22.
//

import UIKit

class FourthViewController: UIViewController {
    
    var totalAmount : String = ""
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var numPeople: UITextField!
    @IBOutlet weak var perPerson: UILabel!
    
    
    @IBAction func calculateButton(_ sender: Any) {
        if let numberP = numPeople.text {
            
            let double = (totalAmount as NSString).doubleValue
            
            let numPeeps = (numberP as NSString).doubleValue
            
            let calc = Double(round(1000 * (double / numPeeps)) / 1000)
            
            perPerson.text = "$\(calc)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalAmountLabel.text = "$\(totalAmount)"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
