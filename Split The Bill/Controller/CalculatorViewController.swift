//
//  ViewController.swift
//  Split The Bill
//
//  Created by Léa on 06/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var zeroPercent: UIButton!
    @IBOutlet weak var tenPercent: UIButton!
    @IBOutlet weak var twentyPercent: UIButton!
    @IBOutlet weak var billValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tipPressed(_ sender: UIButton) {
        calculatorBrain.initTip(tipButton: zeroPercent)
        calculatorBrain.initTip(tipButton: tenPercent)
        calculatorBrain.initTip(tipButton: twentyPercent)
        calculatorBrain.updateTip(tipButton: sender)
        
        let tipChosen = Double(sender.currentTitle!.dropLast())!
        calculatorBrain.updateTip(tip: tipChosen)
    }
    
    @IBAction func nbPeopleChanged(_ sender: UIStepper) {
        peopleLabel.text = String(format: "%.0f", sender.value)
        calculatorBrain.people = Double(peopleLabel.text!)!
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let price = Double(billValue.text!)!
        calculatorBrain.calculateTotal(bill: price)
    
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultView = segue.destination as! ResultViewController
            resultView.totalPerPerson = String(format: "%.2f", calculatorBrain.total)
            resultView.tips = String(format: "%.0f", calculatorBrain.tips*100)
            resultView.people = String(format: "%.0f", calculatorBrain.people)
        }
    }
    
}

