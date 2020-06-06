//
//  ViewController.swift
//  TConverter
//
//  Created by Дмитрий Данилин on 06.06.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBAction func sliderCHanged(_ sender: UISlider) {
        let temperatureCelsius = Int(sender.value)
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int((sender.value * 9 / 5) + 32)
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }


}

