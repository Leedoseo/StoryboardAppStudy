//
//  ViewController.swift
//  SunnyDay
//
//  Created by 김광현 on 12/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var warmingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 여기에 코드를 넣어두면 화면이 표시될 때 자동으로 호출이 됨.
        
        // 원래는 API를 받아서 날씨 정보를 가져오지만 현재는 임의의 날씨와 기온을 정할 것임
        let weather = "흐림"
        let temperature = 17
        
        // if문으로 구현
        // 동일성을 비교할 때 Switch문도 사용 가능
//        if weather == "맑음" {
//            weatherImageView.image = UIImage(named: "016-sun")
//        } else if weather == "흐림" {
//            weatherImageView.image = UIImage(named: "001-cloud")
//        } else if weather == "눈" {
//            weatherImageView.image = UIImage(named: "004-cloud")
//        } else if weather == "비" {
//            weatherImageView.image = UIImage(named: "002-cloud")
//        }
        
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)"
        // Switch문으로 구현
        switch weather {
        case "맑음" :
            weatherImageView.image = UIImage(named: "016-sun")
        case "흐림" :
            weatherImageView.image = UIImage(named: "001-cloud")
        case "눈" :
            weatherImageView.image = UIImage(named: "004-cloud")
        case "비" :
            weatherImageView.image = UIImage(named: "002-cloud")
        default :
            break
        }
        
        // if문으로 구현
//        if (-100 ..< -10).contains(temperature) {
//            warmingLabel.text = "이불 밖은 위험해"
//        } else if (-10 ... 10).contains(temperature) {
//            warmingLabel.text = "두툼한 패딩을 챙기세요"
//        } else if (11 ... 20).contains(temperature) {
//            warmingLabel.text = "일교차를 조심하세요"
//        } else if (21 ... 30).contains(temperature) {
//            warmingLabel.text = "여름이 다가오고 있어요"
//        } else if (31 ..< 100).contains(temperature) {
//            warmingLabel.text = "매우 여름"
//        }
        
        // 다른 if문
//        if temperature < -10 {
//            warmingLabel.text = "이불 밖은 위험해"
//        } else if temperature >= -10 && temperature <= 10 {
//            warmingLabel.text = "두툼한 패딩을 챙기세요"
//        } else if (temperature > 10 && temperature <= 20) {
//            warmingLabel.text = "일교차를 조심하세요"
//        } else if (temperature > 20 && temperature <= 30) {
//            warmingLabel.text = "여름이 다가오고 있어요"
//        } else if temperature > 30 {
//            warmingLabel.text = "매우 여름"
//        }
        
        // switch문으로 구현
        switch temperature {
        case ..<(-10) :
            warmingLabel.text = "이불 밖은 위험해"
        case -10 ... 10 :
            warmingLabel.text = "두툼한 패딩을 챙기세요"
        case 11 ... 20 :
            warmingLabel.text = "일교차를 조심하세요"
        case 21 ... 30 :
            warmingLabel.text = "여름이 다가오고 있어요"
        case 31... :
            warmingLabel.text = "매우 여름"
            default :
            break
        }
    }


}

