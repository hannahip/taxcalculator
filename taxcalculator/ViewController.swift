//
//  ViewController.swift
//  taxcalculator
//
//  Created by Hannah Ip on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var enteredScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SecondViewController
        
        destinationVC.enteredScore = self.enteredScore
    }

}

