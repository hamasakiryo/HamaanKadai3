//
//  ViewController.swift
//  HamaanKadai3
//
//  Created by 浜崎良 on 2024/03/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var rightTextField: UITextField!
    @IBOutlet weak private var leftTextField: UITextField!

    @IBOutlet weak private var rightSwitch: UISwitch!
    @IBOutlet weak private var leftSwitch: UISwitch!

    @IBOutlet weak private var rightLabel: UILabel!
    @IBOutlet weak private var leftLabel: UILabel!

    @IBOutlet weak private var calculationResultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        rightLabel.text = String(0)
        leftLabel.text = String(0)
        calculationResultLabel.text = String(0)

        rightTextField.keyboardType = .numberPad
        leftTextField.keyboardType = .numberPad
    }

    @IBAction private func didTapCalculationButton(_ sender: UIButton) {
        // 入力された文字をInt型に変換
        let rightNumber = Int(rightTextField.text ?? "") ?? 0
        let leftNumber = Int(leftTextField.text ?? "") ?? 0

        // UISwitchのBool値によって記号を変換
        let signedRightNumber = rightSwitch.isOn ? -rightNumber : rightNumber
        let signedLeftNumber = leftSwitch.isOn ? -leftNumber : leftNumber

        rightLabel.text = String(signedRightNumber)
        leftLabel.text = String(signedLeftNumber)
        calculationResultLabel.text = String(signedLeftNumber + signedRightNumber)
    }
}
