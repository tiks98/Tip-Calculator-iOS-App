//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by Tilakbhai Suthar on 2019-09-27.
//  Copyright © 2019 Tilakbhai Suthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var totalReultLabel: UILabel!
    
    @IBOutlet weak var amountBeforeTaxTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    
    @IBOutlet weak var tipPercentageSlider: UISlider!
    
    
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
   
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    
    
    var tipCalculator = TipCalculator(amtBeforeTax: 0, tipPercent: 0.10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    @IBAction func tipSliderValueChanged(_ sender: Any) {
        
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPercentageSlider.value))
        //Call the calculateTip function
        calculateBill()
        
    }
    
    
    @IBAction func numberOfPeopleSliderValueChanged(_ sender: Any) {
        numberOfPeopleLabel.text = "Split: \(Int(numberOfPeopleSlider.value))"
        calculateBill()
    }
    
    
    @IBAction func amountBeforeTaxTextFieldChanged(_ sender: Any) {
        calculateBill()
    }
    
    
    //Stand alone Function
    
    func calculateBill() {
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value) / 100.0
        tipCalculator.amountBeforeTax = (amountBeforeTaxTextField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        //Come back and call function
        updateUI()
    }
    
    func updateUI() {
        totalReultLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount)
        
        let numberOfPeople: Int = Int(numberOfPeopleSlider.value)
        eachPersonAmountLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount / Double(numberOfPeople))
    }
    
    

}

