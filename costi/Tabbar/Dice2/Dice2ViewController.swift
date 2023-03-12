//
//  Dice2ViewController.swift
//  costi
//
//  Created by Иван on 11.03.2023.
//

import UIKit
import Foundation



class Dice2ViewController: UIViewController{

    struct PokerDice{
        var diceVal:Int?
        var isTap = false
        init(_ isTap:Bool) {
            self.isTap = isTap
        }
    }
    
    @IBOutlet weak var pokerDiceOneImage: UIImageView!
    @IBOutlet weak var pokerDiceTwoImage: UIImageView!
    @IBOutlet weak var pokerDiceThreeImage: UIImageView!
    @IBOutlet weak var pokerDiceFourImage: UIImageView!
    @IBOutlet weak var pokerDiceFiveImage: UIImageView!
    var diceOne = PokerDice(false)
    var diceTwo = PokerDice(false)
    var diceThree = PokerDice(false)
    var diceFour = PokerDice(false)
    var diceFive = PokerDice(false)

    @IBAction func pokerDiceOneSingleTap(_ sender: UITapGestureRecognizer) {
        print("IT'S")
        
    }
    
    
    override func viewDidLoad() {
        
//        var diceOne = PokerDice(false)
        super.viewDidLoad()
        let screenSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.screenSingleTap(_:)))
        screenSingleTap.numberOfTapsRequired = 1
        screenSingleTap.numberOfTouchesRequired = 1
        view.addGestureRecognizer(screenSingleTap)
        let pokerDiceOneSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.pokerDiceOneSingleTap(_:)))
        pokerDiceOneSingleTap.numberOfTapsRequired = 1
        pokerDiceOneSingleTap.numberOfTouchesRequired = 1
        pokerDiceOneImage.addGestureRecognizer(pokerDiceOneSingleTap)
//        let pokerDiceTwoSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.pokerDiceTwoSingleTap(_:)))
//        pokerDiceTwoSingleTap.numberOfTapsRequired = 1
//        pokerDiceTwoSingleTap.numberOfTouchesRequired = 1
//        pokerDiceTwoImage.addGestureRecognizer(pokerDiceTwoSingleTap)
//        let pokerDiceThreeSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.pokerDiceThreeSingleTap(_:)))
//        pokerDiceThreeSingleTap.numberOfTapsRequired = 1
//        pokerDiceThreeSingleTap.numberOfTouchesRequired = 1
//        pokerDiceThreeImage.addGestureRecognizer(pokerDiceThreeSingleTap)
//        let pokerDiceFourSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.pokerDiceFourSingleTap(_:)))
//        pokerDiceFourSingleTap.numberOfTapsRequired = 1
//        pokerDiceFourSingleTap.numberOfTouchesRequired = 1
//        pokerDiceFourImage.addGestureRecognizer(pokerDiceFourSingleTap)
//        let pokerDiceFiveSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.pokerDiceFiveSingleTap(_:)))
//        pokerDiceFiveSingleTap.numberOfTapsRequired = 1
//        pokerDiceFiveSingleTap.numberOfTouchesRequired = 1
//        pokerDiceFiveImage.addGestureRecognizer(pokerDiceFiveSingleTap)
    }

//    @IBAction func pokerDiceOneSingleTap(_ sender: Any) {
//        if(!diceOne.isTap)
//        {
//            diceOne.isTap = true
//            pokerDiceOneImage.image = UIImage(named:"\(diceOne.diceVal ?? 1)black.png")
//        }else{
//            diceOne.isTap = false
//            pokerDiceOneImage.image = UIImage(named:"\(diceOne.diceVal ?? 1)white.png")
//        }
//    }
//
//    @IBAction func pokerDiceTwoSingleTap(_ sender: Any) {
//        if(!diceTwo.isTap)
//        {
//            diceTwo.isTap = true
//            pokerDiceTwoImage.image = UIImage(named:"\(diceTwo.diceVal ?? 1)black.png")
//        }else{
//            diceTwo.isTap = false
//            pokerDiceTwoImage.image = UIImage(named:"\(diceTwo.diceVal ?? 1)white.png")
//        }
//    }
//
//    @IBAction func pokerDiceThreeSingleTap(_ sender: Any) {
//        if(!diceThree.isTap)
//        {
//            diceThree.isTap = true
//            pokerDiceThreeImage.image = UIImage(named:"\(diceThree.diceVal ?? 1)black.png")
//        }else{
//            diceThree.isTap = false
//            pokerDiceThreeImage.image = UIImage(named:"\(diceThree.diceVal ?? 1)white.png")
//        }
//    }
//
//    @IBAction func pokerDiceFourSingleTap(_ sender: Any) {
//        if(!diceFour.isTap)
//        {
//            diceFour.isTap = true
//            pokerDiceFourImage.image = UIImage(named:"\(diceFour.diceVal ?? 1)black.png")
//        }else{
//            diceFour.isTap = false
//            pokerDiceFourImage.image = UIImage(named:"\(diceFour.diceVal ?? 1)white.png")
//        }
//    }
//
//    @IBAction func pokerDiceFiveSingleTap(_ sender: Any) {
//        if(!diceFive.isTap)
//        {
//            diceFive.isTap = true
//            pokerDiceFiveImage.image = UIImage(named:"\(diceFive.diceVal ?? 1)black.png")
//        }else{
//            diceFive.isTap = false
//            pokerDiceFiveImage.image = UIImage(named:"\(diceFive.diceVal ?? 1)white.png")
//        }
//    }
    
    @IBAction func screenSingleTap(_ sender: Any) {
        
        if(!diceOne.isTap)
        {
            diceOne.diceVal = randomVal()
            pokerDiceOneImage.image = UIImage(named: "\(diceOne.diceVal ?? 1)white.png")        }
        if(!diceTwo.isTap)
        {
            diceTwo.diceVal = randomVal()
            pokerDiceTwoImage.image = UIImage(named: "\(diceTwo.diceVal ?? 1)white.png")
        }
        if(!diceThree.isTap)
        {
            diceThree.diceVal = randomVal()
            pokerDiceThreeImage.image = UIImage(named: "\(diceThree.diceVal ?? 1)white.png")
        }
        if(!diceFour.isTap)
        {
            diceFour.diceVal = randomVal()
            pokerDiceFourImage.image = UIImage(named: "\(diceFour.diceVal ?? 1)white.png")
        }
        if(!diceFive.isTap)
        {
            diceFive.diceVal = randomVal()
            pokerDiceFiveImage.image = UIImage(named: "\(diceFive.diceVal ?? 1)white.png")
        }
    }
    
  
    
    func randomVal ()->Int{
        let val:Int = Int.random(in: 1...6)
        return val
    }
    
}
