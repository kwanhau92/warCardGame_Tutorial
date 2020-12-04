//
//  ViewController.swift
//  warCardGame
//
//  Created by Ming kwan Hau on 12/4/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!

    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2 ... 14)
        let rightNumber = Int.random(in: 2 ... 14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            playerScore.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            cpuScore.text = String(rightScore)
        }
        else{
            print("here")
        }
        return
    }
    
}

