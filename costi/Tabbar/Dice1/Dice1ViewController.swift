//
//  Dice1ViewController.swift
//  costi
//
//  Created by Иван on 10.03.2023.
//

import UIKit
import Foundation



class Dice1ViewController: UIViewController {

    @IBOutlet weak var diceOne: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    
    @IBAction func singleTap(_ sender: UITapGestureRecognizer) {
        var val1 = randomVal()
        diceOne.image = UIImage(named: "\(String(val1))white.png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(self.singleTap(_:)))
        singleTap.numberOfTapsRequired = 1
        singleTap.numberOfTouchesRequired = 1
        rollButton.addGestureRecognizer(singleTap)
    }
    
    func randomVal ()->Int{
        var val:Int = Int.random(in: 1...6)
        return val
    }
    
}

