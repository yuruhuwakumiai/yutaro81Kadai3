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
        let originalNum1 = Int(textField1.text ?? "") ?? 0
        let originalNum2 = Int(textField2.text ?? "") ?? 0

        let signedNum1: Int
        if mySwitch1.isOn {
            signedNum1 = -originalNum1
        } else {
            signedNum1 = originalNum1
        }

        let signedNum2: Int
        if mySwitch2.isOn {
            signedNum2 = -originalNum2
        } else {
            signedNum2 = originalNum2
        }

        label1.text = "\(signedNum1)"
        label2.text = "\(signedNum2)"
        let addition = signedNum1 + signedNum2
        result.text = "\(addition)"
    }
}
