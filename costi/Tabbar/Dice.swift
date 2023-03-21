//
//  dice.swift
//  costi
//
//  Created by Иван on 19.03.2023.
//
import UIKit
import Foundation

class Dice{
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
    
    func ivTapRecognizerInit (_ iv: UIImageView ,_ target: UIViewController, _ action : Selector){
        self.iv = iv
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
