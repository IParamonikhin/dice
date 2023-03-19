//
//  Dice3ViewController.swift
//  costi
//
//  Created by Иван on 12.03.2023.
//

import UIKit
import Foundation

class ThousandDice{
    var iv: UIImageView!
    var diceVal:Int = 1
    var isTap : Bool = false
    
    func diceTap(_ firtstTap: Bool){
        if(firtstTap){
            self.isTap = self.isTap ? false :  true
            self.iv.image = self.isTap ? UIImage(named: "\(self.diceVal)black.png") :  UIImage(named: "\(self.diceVal)white.png")
        }
    }
    func diceRoll(){
        if(!self.isTap){
            self.diceVal = randomVal()
            self.iv.image = UIImage(named: "\(self.diceVal)white.png")
        }
    }
    
    func ivTapRecognizerInit (_ target: UIViewController, _ action : Selector){
        let ivTapRecognizer = UITapGestureRecognizer(target: target, action: action)
        ivTapRecognizer.numberOfTapsRequired = 1
        ivTapRecognizer.numberOfTouchesRequired = 1
        self.iv.addGestureRecognizer(ivTapRecognizer)
        self.iv.image = UIImage(named: "1white.png")
    }
    
    private func randomVal ()->Int{
        let val:Int = Int.random(in: 1...6)
        return val
    }
}

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
    
    var diceOne: ThousandDice
    var diceTwo: ThousandDice
    var diceThree: ThousandDice
    var diceFour: ThousandDice
    var diceFive: ThousandDice
    var diceSix: ThousandDice
    var dices: [ThousandDice]
    
    var firtstTap = false
    var tryCount = 2
    
    required init?(coder: NSCoder) {
        self.diceOne = ThousandDice()
        self.diceTwo = ThousandDice()
        self.diceThree = ThousandDice()
        self.diceFour = ThousandDice()
        self.diceFive = ThousandDice()
        self.diceSix = ThousandDice()
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
        diceOne.iv = thousandDiceOneImage
        diceOne.ivTapRecognizerInit(self, #selector(thousandDiceOneSingleTap(_:)))
        diceTwo.iv = thousandDiceTwoImage
        diceTwo.ivTapRecognizerInit(self, #selector(thousandDiceTwoSingleTap(_:)))
        diceThree.iv = thousandDiceThreeImage
        diceThree.ivTapRecognizerInit(self, #selector(thousandDiceThreeSingleTap(_:)))
        diceFour.iv = thousandDiceFourImage
        diceFour.ivTapRecognizerInit(self, #selector(thousandDiceFourSingleTap(_:)))
        diceFive.iv = thousandDiceFiveImage
        diceFive.ivTapRecognizerInit(self, #selector(thousandDiceFiveSingleTap(_:)))
        diceSix.iv = thousandDiceSixImage
        diceSix.ivTapRecognizerInit(self, #selector(thousandDiceSixSingleTap(_:)))
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
