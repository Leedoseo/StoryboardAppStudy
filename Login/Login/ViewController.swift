import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        
        let id = idField.text! // okok0840
        let password = passwordField.text! // 1234
        
        // 경고창
//        if id.isEmpty || password.isEmpty {
//            print("계정을 입력하세요.")
//            return // Early Exit 일찍 종료해서 그 후의 코드가 실행되지 않음.
//        } // &&로 하면 안되는 이유 : 하나라도 채워져있으면 경고창이 뜨지 않음.
        
        
//        guard id.isEmpty || password.isEmpty else {
//            print("계정을 입력하세요.")
//            return // guard문은 condition이 true면 else블록을 실행하지 않음 그러므로 id와 password칸이 비어있을때가 true가 되므로 다음 코드가 실행이 됨.
//        }
        
        
//        guard !(id.isEmpty || password.isEmpty) else {
//            print("계정을 입력하세요.")
//            return
//        } // 이 경우는 id.isEmpty || password.isEmpty 코드의 NOT이므로 가능
        
        
        guard !id.isEmpty && !password.isEmpty else {
            print("계정을 입력하세요.")
            return
        } // 이경우는 id도 비어있지않"고" password도 비어있지 않아야하니까 &&로 해야함
        
        // if문으로 로그인 기능 구현
        if id == "okok0840" {
            if password == "1234" {
                resultLabel.text = "로그인 성공"
            } else {
                resultLabel.text = "비밀번호 틀림"
            }
        } else {
            resultLabel.text = "로그인 실패"
        }
        
        // Logical Operator로 구현
//        if id == "okok0840" && password == "1234" {
//            resultLabel.text = "로그인 성공"
//        } else {
//            resultLabel.text = "로그인 실패"
//        }
        
        // 조건 연산자로 구현
        // condition ? expr1(표현식1) : expr2(표현식2)
//        resultLabel.text = id == "okok0840" && password == "1234" ? "로그인 성공" : "로그인 실패"
        
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

