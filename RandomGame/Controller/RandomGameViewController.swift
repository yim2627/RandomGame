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
        editTextField(frame: inputField1)
        editTextField(frame: inputField2)
        editTextField(frame: inputField3)
        editTextField(frame: inputField4)
        editTextField(frame: inputField5)
        editTextField(frame: inputField6)

        drawBtn.layer.cornerRadius = 10
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
        inputStr.removeAll()
        if randStr == "나봉" {
            giftImage.image = UIImage(systemName: "heart.fill")
        } else {
            giftImage.image = nil
        }
        return randStr
    }
    
    func editTextField(frame: UITextField) {
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

