//
//  FirstViewController.swift
//  Part8-commonValueSlider-
//
//  Created by 山本ののか on 2020/12/02.
//

import UIKit

final class FirstViewController: UIViewController {

    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if let sliderValue = UserDefaults.standard.object(forKey: "sliderValue") as? Float {
            valueLabel.text = String(sliderValue)
            slider.value = sliderValue
        }
    }

    @IBAction private func changeSliderValue(_ sender: UISlider) {
        valueLabel.text = String(sender.value)
        UserDefaults.standard.setValue(sender.value, forKey: "sliderValue")
    }
}
