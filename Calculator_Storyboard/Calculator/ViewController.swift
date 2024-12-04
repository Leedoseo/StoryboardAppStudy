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
        
        let a = Int(firstOperandField.text!)!
        let b = Int(secondOperandField.text!)!
        
        let op = operatorButton.title(for: .normal)!
        
        if op == "+" {
            let result = a + b
            resultLabel.text = "\(result)" // String Interpolation
        } else if op == "-" {
            let result = a - b
            resultLabel.text = "\(result)" // String Interpolation
        } else if op == "*" {
            let result = a * b
            resultLabel.text = "\(result)" // String Interpolation
        } else if op == "/" {
            let result = a / b
            resultLabel.text = "\(result)" // String Interpolation
        } else {
            print("연산자를 선택해주세요")
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
