//
//  SecondViewController.swift
//  taxcalculator
//
//  Created by Lydia Kang on 8/17/22.
//

import UIKit

class SecondViewController: UIViewController {

    var initialAmount : String = ""
    var tenTotal : Double = 0.0
    var fifteenTotal : Double = 0.0
    var eighteenTotal : Double = 0.0
    var twentyTotal : Double = 0.0
    var twentyfiveTotal : Double = 0.0
    
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
        tenTotal = doubleAmount * 1.1
        tenPercent.text = "10% tip: $\(ten)\nTotal price: $\(tenTotal)"
        
        let fifteen = Double(round(1000 * (doubleAmount * 0.15)) / 1000)
        fifteenTotal = doubleAmount * 1.15
        fifteenPercent.text = "15% tip: $\(fifteen)\nTotal price: $\(fifteenTotal)"
        
        let eighteen = Double(round(1000 * (doubleAmount * 0.18)) / 1000)
        eighteenTotal = doubleAmount * 1.18
        eighteenPercent.text = "18% tip: $\(eighteen)\nTotal price: $\(eighteenTotal)"
        
        let twenty = Double(round(1000 * (doubleAmount * 0.2)) / 1000)
        twentyTotal = doubleAmount * 1.2
        twentyPercent.text = "20% tip: $\(twenty)\nTotal price: $\(twentyTotal)"
        
        let twentyfive = Double(round(1000 * (doubleAmount * 0.25)) / 1000)
        twentyfiveTotal = doubleAmount * 1.25
        twentyFivePercent.text = "25% tip: $\(twentyfive)\nTotal price: $\(twentyfiveTotal)"
        
    }
    
    
    @IBAction func otherButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "secondToThird", sender: self)
    }
    
    @IBAction func tenPercentSplit(_ sender: UIButton) {
        performSegue(withIdentifier: "tenPercentSplit", sender: self)
    }
    
    @IBAction func fifteenPercentSplit(_ sender: UIButton) {
        performSegue(withIdentifier: "fifteenPercentSplit", sender: self)
    }
    
    @IBAction func eighteenPercentSplit(_ sender: UIButton) {
        performSegue(withIdentifier: "eighteenPercentSplit", sender: self)
    }
    
    @IBAction func twentyPercentSplit(_ sender: UIButton) {
        performSegue(withIdentifier: "twentyPercentSplit", sender: self)
    }
    
    @IBAction func twentyFivePercentSplit(_ sender: UIButton) {
        performSegue(withIdentifier: "twentyFivePercentSplit", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondToThird" {
            let destinationVC = segue.destination as? ThirdViewController

                destinationVC?.initialAmount = initialAmount
        }
        
        if segue.identifier == "tenPercentSplit" {
            let destinationVC = segue.destination as? FourthViewController

                destinationVC?.totalAmount = String(tenTotal)
        }
        
        if segue.identifier == "fifteenPercentSplit" {
            let destinationVC = segue.destination as? FourthViewController

                destinationVC?.totalAmount = String(fifteenTotal)
        }
        
        if segue.identifier == "eighteenPercentSplit" {
            let destinationVC = segue.destination as? FourthViewController

                destinationVC?.totalAmount = String(eighteenTotal)
        }
        
        if segue.identifier == "twentyPercentSplit" {
            let destinationVC = segue.destination as? FourthViewController

                destinationVC?.totalAmount = String(twentyTotal)
        }
        
        if segue.identifier == "twentyFivePercentSplit" {
            let destinationVC = segue.destination as? FourthViewController

                destinationVC?.totalAmount = String(twentyfiveTotal)
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

