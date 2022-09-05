//
//  ThirdViewController.swift
//  taxcalculator
//
//  Created by Lydia Kang on 8/18/22.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    var initialAmount : String = ""
    var percentage : Double = 0.0
    
    @IBOutlet weak var initialAmountLab: UILabel!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    @IBOutlet weak var TextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        self.TextField2.delegate = self
        
        initialAmountLab.text = "$\(initialAmount)"
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return TextField2.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
        
    
    @IBAction func tipEnteredButton(_ sender: UIButton) {
        
        if let tipPercent = tipPercentage.text {
            
            let double = (initialAmount as NSString).doubleValue
            
            let percent = (tipPercent as NSString).doubleValue
            
            let igiveup = (1 + (percent / 100)) * double
            
            percentage = Double(round(100 * (igiveup)) / 100)
        
            totalAmountLabel.text = "$\(percentage)"
        }
        
    }
    
    @IBAction func splitButton(_ sender: UIButton) {
        performSegue(withIdentifier: "thirdToFourth", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "thirdToFourth" {
            let destinationVC = segue.destination as? FourthViewController
            
                destinationVC?.totalAmount = String(percentage)
        }
    }
    
        
        /*
        let tipPercent = tipPercentage.text
        
        let double = (initialAmount as NSString).doubleValue
        let percent = (tipPercent! as NSString).doubleValue
        let percentage = percent / 100
        
        totalAmountLabel.text = "$\(tipPercent)"
*/
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


