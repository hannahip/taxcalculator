//
//  SecondViewController.swift
//  taxcalculator
//
//  Created by Lydia Kang on 8/17/22.
//

import UIKit

class SecondViewController: UIViewController {

    var initialAmount : String = ""
    
    @IBOutlet weak var initialAmountLabel: UILabel!
    
    @IBOutlet weak var tenPercent: UILabel!
    @IBOutlet weak var fifteenPercent: UILabel!
    @IBOutlet weak var eighteenPercent: UILabel!
    @IBOutlet weak var twentyPercent: UILabel!
    @IBOutlet weak var twentyFivePercent: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialAmountLabel.text = "$\(initialAmount)"
        
        let double = (initialAmount as NSString).doubleValue
        // keeps the decimal place at 3 or less
        let doubleAmount = Double(round(1000 * double) / 1000)
        
        let ten = doubleAmount * 0.1
        let tenTotal = doubleAmount * 1.1
        tenPercent.text = "10% tip: $\(ten)\nTotal price: \(tenTotal)"
        
        let fifteen = doubleAmount * 0.15
        let fifteenTotal = doubleAmount * 1.15
        fifteenPercent.text = "15% tip: $\(fifteen)\nTotal price: \(fifteenTotal)"
        
        let eighteen = doubleAmount * 0.18
        let eighteenTotal = doubleAmount * 1.18
        eighteenPercent.text = "18% tip: $\(eighteen)\nTotal price: \(eighteenTotal)"
        
        let twenty = doubleAmount * 0.2
        let twentyTotal = doubleAmount * 1.2
        twentyPercent.text = "20% tip: $\(twenty)\nTotal price: \(twentyTotal)"
        
        let twentyfive = doubleAmount * 0.25
        let twentyfiveTotal = doubleAmount * 1.25
        twentyFivePercent.text = "25% tip: $\(twentyfive)\nTotal price: \(twentyfiveTotal)"
        
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
