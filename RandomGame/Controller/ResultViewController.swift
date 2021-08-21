//
//  ResultViewController.swift
//  RandomGame
//
//  Created by 임지성 on 2021/08/21.
//

import UIKit

class ResultViewController: UIViewController {

    var resultString: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var redrawBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redrawBtn.layer.cornerRadius = 10
        redrawBtn.layer.borderWidth = 2
        redrawBtn.layer.borderColor = UIColor.black.cgColor
        
        resultLabel.text = resultString
        // Do any additional setup after loading the view.
    }
    
    @IBAction func replayGameBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
