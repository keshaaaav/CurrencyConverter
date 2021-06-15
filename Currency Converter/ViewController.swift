//
//  ViewController.swift
//  Currency Converter
//
//  Created by Keshav Khaneja on 06/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var convertedLabel: UILabel!
    @IBOutlet weak var coversionRate: UITextField!
    @IBOutlet weak var amountToBeConverted: UITextField!
    @IBOutlet weak var currencySegmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //  We used ! becuase we are trying to covert a so called string into a Double so Swift isnt quite sure that its perfect or not so it makes it optionalValue so tell swift that hey we are sure it coverts it sucessfully we use !
    
    @IBAction func buttonTapped(_ sender: Any) {
        
    // WHY DO WE PUT .TEXT IN HERE, well, because https://drive.google.com/file/d/1QhmdlxXO2gKlaf5SikliAd-BhdHfBxgO/view?usp=sharing
    // because there are multiple other variables you get out of a UITextField
        
        let rate = Double(coversionRate.text!)
        let amount = Double(amountToBeConverted.text!)
        let coverted = rate!*amount!
        
        if currencySegmentControl.selectedSegmentIndex == 0 {
            convertedLabel.text = "Aighty, ₹\(String(coverted))"
        } else {
            convertedLabel.text = "Then, $\(String(coverted))"
    }

}
}
