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
    
        let doubleAmount = Double(initialAmount) ?? 0


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialAmountLabel.text = "$\(initialAmount)"
        
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
