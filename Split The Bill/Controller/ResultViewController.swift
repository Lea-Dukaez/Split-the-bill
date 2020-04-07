//
//  ResultViewController.swift
//  Split The Bill
//
//  Created by Léa on 06/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var totalPerPerson = "0.0"
    var tips = "10"
    var people = "2"

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalPerPerson
        detailsLabel.text = "Split between \(people) people, with \(tips)% tip."
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
