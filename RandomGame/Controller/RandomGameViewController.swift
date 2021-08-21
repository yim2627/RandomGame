//
//  ViewController.swift
//  RandomGame
//
//  Created by 임지성 on 2021/08/20.
//

import UIKit

class RamdomGameViewController: UIViewController {

    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var inputField1: UITextField!
    @IBOutlet weak var inputField2: UITextField!
    @IBOutlet weak var inputField3: UITextField!
    @IBOutlet weak var inputField4: UITextField!
    @IBOutlet weak var inputField5: UITextField!
    @IBOutlet weak var inputField6: UITextField!
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var drawBtn: UIButton!
    @IBOutlet weak var giftImage: UIImageView!
    
    var inputStr = Array<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        editTextField(frame: inputField1) //너무 노가다처럼 보이는 면이 있어서.. 좀만 더 알면 3줄로 될것같은데.. 더 공부
        editTextField(frame: inputField2)
        editTextField(frame: inputField3)
        editTextField(frame: inputField4)
        editTextField(frame: inputField5)
        editTextField(frame: inputField6)

        drawBtn.layer.cornerRadius = 10 //이것도 함수구현에서 묶어버리고싶음
        drawBtn.layer.borderWidth = 2
        drawBtn.layer.borderColor = UIColor.black.cgColor
        adviceLabel.text = "Enter the name of the person you want to play!"
        // Do any additional setup after loading the view.
    }
    @IBAction func drawBtnPressed(_ sender: UIButton) {
        inputStr.append(inputField1.text!)
        inputStr.append(inputField2.text!)
        inputStr.append(inputField3.text!)
        inputStr.append(inputField4.text!)
        inputStr.append(inputField5.text!)
        inputStr.append(inputField6.text!)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    func drawStr() -> String {
        let arrayNum = inputStr.count
        let randStr = inputStr[Int.random(in: 0..<arrayNum)]
        inputStr.removeAll() // 한번 실행할때마다 배열 비우기, 그렇지않으면 배열안으로 데이터가 계속 쌓임 -> 데이터 낭비, 중복 방지
        if randStr == "나봉" { //배열 Test
            giftImage.image = UIImage(systemName: "heart.fill") //image view Test
        } else {
            giftImage.image = nil
        }
        return randStr
    }
    
    func editTextField(frame: UITextField) { //complete, 텍스트필드만 말고, 좀 광범위하게 해보고싶음. 향후 더 테스트 예정
        //edit to multiple textfield. for clean
        frame.layer.cornerRadius = 10
        frame.layer.borderWidth = 2
        frame.layer.borderColor = UIColor.black.cgColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.resultString = drawStr()
        }
    }

}

