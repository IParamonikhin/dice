//
//  Dice3ViewController.swift
//  costi
//
//  Created by Иван on 12.03.2023.
//

import UIKit
import Foundation


class Dice3ViewController: UIViewController {
    
    @IBOutlet weak var thousandDiceOneImage: UIImageView!
    @IBOutlet weak var thousandDiceTwoImage: UIImageView!
    @IBOutlet weak var thousandDiceThreeImage: UIImageView!
    @IBOutlet weak var thousandDiceFourImage: UIImageView!
    @IBOutlet weak var thousandDiceFiveImage: UIImageView!
    @IBOutlet weak var thousandDiceSixImage: UIImageView!
    
    @IBOutlet weak var thousandDiceLabelUpper: UILabel!
    @IBOutlet weak var thousandDiceLabelLower: UILabel!
    
    @IBOutlet weak var thousandDiceButtonRollRestart: UIButton!
    
    var diceOne: Dice
    var diceTwo: Dice
    var diceThree: Dice
    var diceFour: Dice
    var diceFive: Dice
    var diceSix: Dice
    var dices: [Dice]
    
    var firtstTap = false
    var tryCount = 2
    
    required init?(coder: NSCoder) {
        self.diceOne = Dice()
        self.diceTwo = Dice()
        self.diceThree = Dice()
        self.diceFour = Dice()
        self.diceFive = Dice()
        self.diceSix = Dice()
        self.dices = [diceOne, diceTwo, diceThree, diceFour, diceFive, diceSix]
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thousandDiceButtonRollRestart.setTitle("Roll", for: .normal)
        
        let screenSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.screenSingleTap(_:)))
        screenSingleTap.numberOfTapsRequired = 1
        screenSingleTap.numberOfTouchesRequired = 1
        thousandDiceButtonRollRestart.addGestureRecognizer(screenSingleTap)
        
        diceOne.ivTapRecognizerInit(thousandDiceOneImage, self, #selector(thousandDiceOneSingleTap(_:)))
        diceTwo.ivTapRecognizerInit(thousandDiceTwoImage, self, #selector(thousandDiceTwoSingleTap(_:)))
        diceThree.ivTapRecognizerInit(thousandDiceThreeImage, self, #selector(thousandDiceThreeSingleTap(_:)))
        diceFour.ivTapRecognizerInit(thousandDiceFourImage, self, #selector(thousandDiceFourSingleTap(_:)))
        diceFive.ivTapRecognizerInit(thousandDiceFiveImage, self, #selector(thousandDiceFiveSingleTap(_:)))
        diceSix.ivTapRecognizerInit(thousandDiceSixImage, self, #selector(thousandDiceSixSingleTap(_:)))
    }
    
    @IBAction func screenSingleTap(_ sender: Any) {
        if !firtstTap {firtstTap = true}
        if tryCount > 0{
            dices.forEach{$0.diceRoll()}
            print("ostalos \(tryCount) popitok")
            thousandDiceLabelUpper.text = "ostalos \(tryCount) popitok"
            tryCount -= 1
        }else{
            if thousandDiceButtonRollRestart.titleLabel?.text == "Roll" {
                dices.forEach{$0.diceRoll()}
                print("Net popitok")
                thousandDiceLabelUpper.text = "Net popitok"
                thousandDiceButtonRollRestart.setTitle("Restart", for: .normal)
            }else{
                dices.forEach{
                    $0.isTap = true
                    $0.diceTap(firtstTap)
                    $0.iv.image = UIImage(named: "1white.png")
                }
                firtstTap = false
                thousandDiceButtonRollRestart.setTitle("Roll", for: .normal)
                tryCount = 2
                thousandDiceLabelUpper.text = "ostalos \(tryCount + 1) popitok"
            }
        }
    }
    
    @IBAction func thousandDiceOneSingleTap(_ sender: Any) {
        diceOne.diceTap(firtstTap)
    }
    
    @IBAction func thousandDiceTwoSingleTap(_ sender: Any) {
        diceTwo.diceTap(firtstTap)
    }
    
    @IBAction func thousandDiceThreeSingleTap(_ sender: Any) {
        diceThree.diceTap(firtstTap)
    }
    
    @IBAction func thousandDiceFourSingleTap(_ sender: Any) {
        diceFour.diceTap(firtstTap)
    }
    
    @IBAction func thousandDiceFiveSingleTap(_ sender: Any) {
        diceFive.diceTap(firtstTap)
    }
    
    @IBAction func thousandDiceSixSingleTap(_ sender: Any) {
        diceSix.diceTap(firtstTap)
    }
}
