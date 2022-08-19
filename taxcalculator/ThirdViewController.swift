//
//  ThirdViewController.swift
//  taxcalculator
//
//  Created by Lydia Kang on 8/18/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var initialAmount : String = ""
    
    @IBOutlet weak var initialAmountLab: UILabel!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialAmountLab.text = "$\(initialAmount)"
        }
        
    
    @IBAction func tipEnteredButton(_ sender: UIButton) {
        
        if let tipPercent = tipPercentage.text {
            
            let double = (initialAmount as NSString).doubleValue
            
            let percent = (tipPercent as NSString).doubleValue
            
            let igiveup = percent / 100
            
            let percentage = Double(round(1000 * ((1 + igiveup) * double)) / 1000)
        
            totalAmountLabel.text = "$\(percentage)"
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


