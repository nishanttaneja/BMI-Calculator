//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Nishant Taneja on 29/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlets
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // Initialse
    var brain = Brain()
    
    // IBActions
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {heightLabel.text = String(format: "%0.2fm", heightSlider.value)}
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {weightLabel.text = String(format: "%.1fKg", weightSlider.value)}
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        brain.calculate(weightSlider.value, heightSlider.value)
        performSegue(withIdentifier: "DisplayResult", sender: self)
    }
    
    // Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DisplayResult" {
            guard let resultVC = segue.destination as? ResultViewController else {fatalError("invalid destination view controller")}
            resultVC.bmi = brain.getValue()
            resultVC.advice = brain.getAdvice()
            resultVC.color = brain.getColor()
        }
    }
}

