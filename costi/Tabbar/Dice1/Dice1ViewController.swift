//
//  Dice1ViewController.swift
//  costi
//
//  Created by Иван on 10.03.2023.
//

import UIKit
import Foundation


class Dice1ViewController: UIViewController {

    @IBOutlet weak var diceUno: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    
    var diceOne: Dice
    var firtstTap = false
    
    required init?(coder: NSCoder) {
        self.diceOne = Dice()
        super.init(coder: coder)
    }
    @IBAction func singleTap(_ sender: UITapGestureRecognizer) {
        diceOne.diceRoll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceOne.iv = diceUno
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(self.singleTap(_:)))
        singleTap.numberOfTapsRequired = 1
        singleTap.numberOfTouchesRequired = 1
        rollButton.addGestureRecognizer(singleTap)
        diceOne.iv.image = UIImage(named: "1white.png")
    }
}
