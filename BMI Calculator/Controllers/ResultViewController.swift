//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nishant Taneja on 29/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    // IBOutlets
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // Initialise
    var bmi: Float?
    var advice: String?
    var color: UIColor?
    
    // Override View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bmiValue = bmi, let adviceForUser = advice, let backgroundColor = color {
            bmiLabel.text = String(format: "%.1f", bmiValue)
            adviceLabel.text = adviceForUser
            view.backgroundColor = backgroundColor
        }
    }
    
    // IBAction
    @IBAction func recalculateBMI(_ sender: UIButton) {dismiss(animated: true, completion: nil)}
}
