//
//  ViewController.swift
//  yutaro81Kadai3
//
//  Created by 雄太郎 on 2021/09/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var mySwitch1: UISwitch!
    @IBOutlet private weak var mySwitch2: UISwitch!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var result: UILabel!

    @IBAction private func pressButton(_ sender: Any) {
        var num1 = Int(textField1.text ?? "") ?? 0
        var num2 = Int(textField2.text ?? "") ?? 0

        if mySwitch1.isOn == true {
            num1 *= 1
        } else {
            num1 *= -1
        }
        if mySwitch2.isOn == true {
            num2 *= 1
        } else {
            num2 *= -1
        }
        label1.text = "\(num1)"
        label2.text = "\(num2)"
        let addition = num1 + num2
        result.text = "\(addition)"
    }
}
