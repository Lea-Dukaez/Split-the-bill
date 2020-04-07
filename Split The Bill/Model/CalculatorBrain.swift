//
//  CalculatorBrain.swift
//  Split The Bill
//
//  Created by Léa on 07/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var tips: Double = 0.1
    var total: Double = 0.0
    var people: Double = 2.0

    mutating func calculateTotal(bill: Double) {
        total = (bill * (1 + tips)) / people
    }
    
    mutating func updateTip(tip: Double) {
        tips = tip / 100
    }
    
    func initTip(tipButton: UIButton) {
        tipButton.backgroundColor = .none
        tipButton.setTitleColor(UIColor(red:0.22, green:0.68, blue:0.66, alpha:1.00), for: .normal)
    }
    
    func updateTip(tipButton: UIButton) {
        tipButton.backgroundColor = UIColor(red:0.22, green:0.68, blue:0.66, alpha:1.00)
        tipButton.setTitleColor(.white, for: .normal)
    }
    
    
}
