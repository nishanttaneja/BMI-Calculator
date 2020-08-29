//
//  Brain.swift
//  BMI Calculator
//
//  Created by Nishant Taneja on 29/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit

struct Brain {
    var bmi: BMI?
    
    mutating func calculate(_ weight: Float, _ height: Float) {
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5 {bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))}
        else if bmiValue < 24.9 {bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))}
        else {bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))}
    }
    
    func getValue() -> Float {return bmi?.value ?? 0.0}
    func getAdvice() -> String {return bmi?.advice ?? "No advice for you."}
    func getColor() -> UIColor {return bmi?.color ?? UIColor.white}
}
