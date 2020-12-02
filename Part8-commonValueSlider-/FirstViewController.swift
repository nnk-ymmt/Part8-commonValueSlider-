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



// 改善点

// delegateにprivateをつける
// 仮に途中でdelegateの値が変わった時の挙動が変わってくる
//var delegate: AppDelegate {
//    UIApplication.shared.delegate as! AppDelegate
//}

// 解答例

// UserDefaultsを使用したやり方はコメントアウト
