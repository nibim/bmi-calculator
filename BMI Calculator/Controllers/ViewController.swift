//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.


import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any dditional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLable.text = "\(String(format:"%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLable.text = "\(String(format:"%.2f", sender.value))Kg"
    }
    @IBAction func calculatedPressed(_ sender: UIButton) {
        let height =  heightSlider.value
        let weight =  weightSlider.value
        let bmi = weight / (height * height)
        let secondVC = secondViewController()  //make an object from the secondView
        secondVC.bmiValue = String(format:"%.1f", bmi)
        self.present(secondVC, animated: true, completion: nil)     //secondView is represented
        
    }
}

