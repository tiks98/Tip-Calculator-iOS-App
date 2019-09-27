//
//  TipCalculator.swift
//  Tip_Calculator
//
//  Created by Tilakbhai Suthar on 2019-09-27.
//  Copyright © 2019 Tilakbhai Suthar. All rights reserved.
//

import Foundation

class TipCalculator
{
    var amountBeforeTax:    Double = 0
    var tipAmount:          Double = 0
    var tipPercentage:      Double = 0
    var totalAmount:        Double = 0
    
    init(amtBeforeTax: Double, tipPercent: Double) {
        self.amountBeforeTax = amtBeforeTax
        self.tipPercentage = tipPercent
    }
    
    func calculateTip() {
        tipAmount = amountBeforeTax * tipPercentage
        totalAmount = tipAmount + amountBeforeTax
    }
    
    
    
}
