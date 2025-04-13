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
}

