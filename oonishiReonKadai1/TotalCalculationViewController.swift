//
//  TotalCalculationViewController.swift
//  oonishiReonKadai1
//
//  Created by 大西玲音 on 2021/04/07.
//

import UIKit

final class TotalCalculationViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction private func calculateTotalButtonDidTapped(_ sender: Any) {
        let textFields: [UITextField] = [textField1, textField2, textField3, textField4, textField5]

        let sum = textFields
            .map { $0.text ?? "" }
            .map { Int($0) ?? 0 }
            .reduce(0, +)
        
        resultLabel.text = String(sum)
    }
}
