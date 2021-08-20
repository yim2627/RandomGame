//
//  ViewController.swift
//  RandomGame
//
//  Created by 임지성 on 2021/08/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var inputField1: UITextField!
    @IBOutlet weak var inputField2: UITextField!
    @IBOutlet weak var inputField3: UITextField!
    @IBOutlet weak var inputField4: UITextField!
    @IBOutlet weak var inputField5: UITextField!
    @IBOutlet weak var inputField6: UITextField!
    
    @IBOutlet weak var giftImage: UIImageView!
    
    var inputStr = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func drawBtnPressed(_ sender: UIButton) {
        inputStr.append(inputField1.text!)
        inputStr.append(inputField2.text!)
        inputStr.append(inputField3.text!)
        inputStr.append(inputField4.text!)
        inputStr.append(inputField5.text!)
        inputStr.append(inputField6.text!)
        randomLabel.text = drawStr()
    }
    
    func drawStr() -> String {
        let arrayNum = inputStr.count
        let randStr = inputStr[Int.random(in: 0..<arrayNum)]
        inputStr.removeAll()
        if randStr == "나봉" {
            giftImage.image = UIImage(systemName: "heart.fill")
        }
        return randStr
    }

}

