//
//  ResultViewController.swift
//  RandomGame
//
//  Created by 임지성 on 2021/08/21.
//

import UIKit

class ResultViewController: UIViewController {

    var resultString: String?
    var resultStrLabel: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var redrawBtn: UIButton!
    @IBOutlet weak var annoyingImage: UIImageView!

    var animationImages: [UIImage] = [#imageLiteral(resourceName: "annoy0"), #imageLiteral(resourceName: "annoy1"), #imageLiteral(resourceName: "annoy2"), #imageLiteral(resourceName: "annoy3"), #imageLiteral(resourceName: "annoy4"), #imageLiteral(resourceName: "annoy5"), #imageLiteral(resourceName: "annoy6"), #imageLiteral(resourceName: "annoy7"), #imageLiteral(resourceName: "annoy8"), #imageLiteral(resourceName: "annoy9"), #imageLiteral(resourceName: "annoy10"), #imageLiteral(resourceName: "annoy11"), #imageLiteral(resourceName: "annoy12"), #imageLiteral(resourceName: "annoy13"), #imageLiteral(resourceName: "annoy14"), #imageLiteral(resourceName: "annoy15"), #imageLiteral(resourceName: "annoy16"), #imageLiteral(resourceName: "annoy17"), #imageLiteral(resourceName: "annoy18"), #imageLiteral(resourceName: "annoy19"), #imageLiteral(resourceName: "annoy20")]

    override func viewDidLoad() {
        super.viewDidLoad()
        redrawBtn.layer.cornerRadius = 10
        redrawBtn.layer.borderWidth = 2
        redrawBtn.layer.borderColor = UIColor.black.cgColor
        
        resultLabel.numberOfLines = 3
        resultLabel.text = resultString
        
        annoyingImage.image = UIImage.animatedImage(with: animationImages, duration: 1.0)
        annoyingImage.layer.cornerRadius = 10
        annoyingImage.layer.borderWidth = 2
        annoyingImage.layer.borderColor = UIColor.black.cgColor
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func replayGameBtnPressed(_ sender: Any) { //재추첨 -> 메인뷰로 돌아감
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
