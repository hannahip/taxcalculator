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
        
        // minimizes decimal places
        let doubleAmount = Double(round(1000 * double) / 1000)
        
        let ten = Double(round(1000 * (doubleAmount * 0.1)) / 1000)
        let tenTotal = doubleAmount * 1.1
        tenPercent.text = "10% tip: $\(ten)\nTotal price: \(tenTotal)"
        
        let fifteen = Double(round(1000 * (doubleAmount * 0.15)) / 1000)
        let fifteenTotal = doubleAmount * 1.15
        fifteenPercent.text = "15% tip: $\(fifteen)\nTotal price: \(fifteenTotal)"
        
        let eighteen = Double(round(1000 * (doubleAmount * 0.18)) / 1000)
        let eighteenTotal = doubleAmount * 1.18
        eighteenPercent.text = "18% tip: $\(eighteen)\nTotal price: \(eighteenTotal)"
        
        let twenty = Double(round(1000 * (doubleAmount * 0.2)) / 1000)
        let twentyTotal = doubleAmount * 1.2
        twentyPercent.text = "20% tip: $\(twenty)\nTotal price: \(twentyTotal)"
        
        let twentyfive = Double(round(1000 * (doubleAmount * 0.25)) / 1000)
        let twentyfiveTotal = doubleAmount * 1.25
        twentyFivePercent.text = "25% tip: $\(twentyfive)\nTotal price: \(twentyfiveTotal)"
        
    }
    
    
    @IBAction func otherButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "secondToThird", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondToThird" {
            let destinationVC = segue.destination as? ThirdViewController

                destinationVC?.initialAmount = initialAmount
            
        }
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
