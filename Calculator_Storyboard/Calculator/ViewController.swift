//
//  ViewController.swift
//  Calculator
//
//  Created by 김광현 on 12/4/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstOperandField: UITextField!
    
    @IBOutlet weak var secondOperandField: UITextField!
    
    @IBAction func selectOperator(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        // 액션을 만드는 코드
        let plusAction = UIAlertAction(title: "+(더하기)", style: .default) { _ in
            self.operatorButton.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction) // 액션시트에 추가
        
        let minusAction = UIAlertAction(title: "-(빼기)", style: .default) { _ in
            self.operatorButton.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        
        let multiplyAction = UIAlertAction(title: "*(곱하기)", style: .default) { _ in
            self.operatorButton.setTitle("*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        
        let divideAction = UIAlertAction(title: "/(나누기)", style: .default) { _ in
            self.operatorButton.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        
        present(actionSheet, animated: true)
        
    }
    
    @IBOutlet weak var operatorButton: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func calculateButton(_ sender: Any) {
        guard let text = firstOperandField.text, let a = Int(text) else {
            return
        }
        
        guard let text = secondOperandField.text, let b = Int(text) else {
            return
        }
        
        guard let op = operatorButton.title(for: .normal) else {
            return
        }
        
        var result: Int? = nil
        
        switch op {
        case "+" :
            result = a + b
        case "-" :
            result = a - b
        case "*" :
            result = a * b
        case "/" :
            result = a / b
        default :
            break
        }
        guard let result else { return }
        
        resultLabel.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

