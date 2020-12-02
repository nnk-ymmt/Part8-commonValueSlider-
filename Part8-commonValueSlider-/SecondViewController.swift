//
//  SecondViewController.swift
//  Part8-commonValueSlider-
//
//  Created by 山本ののか on 2020/12/02.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet private weak var valueLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    let delegate = UIApplication.shared.delegate as! AppDelegate

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        if let sliderValue = UserDefaults.standard.object(forKey: "sliderValue") as? Float {
//            valueLabel.text = String(sliderValue)
//            slider.value = sliderValue
//        }
        valueLabel.text = String(delegate.sliderValue)
        slider.value = delegate.sliderValue
    }

    @IBAction private func changeSliderValue(_ sender: UISlider) {
        valueLabel.text = String(sender.value)
//        UserDefaults.standard.setValue(sender.value, forKey: "sliderValue")
        delegate.sliderValue = sender.value
    }
}
