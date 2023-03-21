//
//  Dice2ViewController.swift
//  costi
//
//  Created by Иван on 11.03.2023.
//

import UIKit
import Foundation


class Dice2ViewController: UIViewController{
    
    @IBOutlet weak var pokerDiceOneImage: UIImageView!
    @IBOutlet weak var pokerDiceTwoImage: UIImageView!
    @IBOutlet weak var pokerDiceThreeImage: UIImageView!
    @IBOutlet weak var pokerDiceFourImage: UIImageView!
    @IBOutlet weak var pokerDiceFiveImage: UIImageView!
  
    var diceOne: Dice
    var diceTwo: Dice
    var diceThree: Dice
    var diceFour: Dice
    var diceFive: Dice
    var dices: [Dice]
    
    var firtstTap = false
    
    required init?(coder: NSCoder) {
        self.diceOne = Dice()
        self.diceTwo = Dice()
        self.diceThree = Dice()
        self.diceFour = Dice()
        self.diceFive = Dice()
        self.dices = [diceOne, diceTwo, diceThree, diceFour, diceFive]
        super.init(coder: coder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.screenSingleTap(_:)))
        screenSingleTap.numberOfTapsRequired = 1
        screenSingleTap.numberOfTouchesRequired = 1
        view.addGestureRecognizer(screenSingleTap)
        
        diceOne.ivTapRecognizerInit(pokerDiceOneImage, self, #selector(pokerDiceOneSingleTap(_:)))
        diceTwo.ivTapRecognizerInit(pokerDiceTwoImage, self, #selector(pokerDiceTwoSingleTap(_:)))
        diceThree.ivTapRecognizerInit(pokerDiceThreeImage, self, #selector(pokerDiceThreeSingleTap(_:)))
        diceFour.ivTapRecognizerInit(pokerDiceFourImage, self, #selector(pokerDiceFourSingleTap(_:)))
        diceFive.ivTapRecognizerInit(pokerDiceFiveImage, self, #selector(pokerDiceFiveSingleTap(_:)))

    }

    @IBAction func pokerDiceOneSingleTap(_ sender: Any) {
        diceOne.diceTap(firtstTap)
    }
    
    @IBAction func pokerDiceTwoSingleTap(_ sender: Any) {
        diceTwo.diceTap(firtstTap)
    }
    
    @IBAction func pokerDiceThreeSingleTap(_ sender: Any) {
        diceThree.diceTap(firtstTap)
    }
    
    @IBAction func pokerDiceFourSingleTap(_ sender: Any) {
        diceFour.diceTap(firtstTap)
    }
    
    @IBAction func pokerDiceFiveSingleTap(_ sender: Any) {
        diceFive.diceTap(firtstTap)
    }
    
    @IBAction func screenSingleTap(_ sender: Any) {
        if(!firtstTap){firtstTap = true}
        dices.forEach{ $0.diceRoll() }
    }
        
}
