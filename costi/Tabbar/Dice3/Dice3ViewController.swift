//
//  Dice3ViewController.swift
//  costi
//
//  Created by Иван on 12.03.2023.
//

import UIKit
import Foundation

struct ThousandDice{
    var diceVal:Int?
    var isTap = false
    init(_ isTap:Bool) {
        self.isTap = isTap
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
    
    var diceOne = ThousandDice(false)
    var diceTwo = ThousandDice(false)
    var diceThree = ThousandDice(false)
    var diceFour = ThousandDice(false)
    var diceFive = ThousandDice(false)
    var diceSix = ThousandDice(false)
    
    var firtstTap = false
    var tryCount = 3
    
    
    @IBAction func screenSingleTap(_ sender: Any) {
        if(firtstTap){firtstTap = true}
        if(tryCount > 0){
            print("ostalos \(tryCount) popitok")
            thousandDiceLabelUpper.text = "ostalos \(tryCount) popitok"
            tryCount -= 1
        }else{
            if(thousandDiceButtonRollRestart.titleLabel?.text == "Roll"){
                print("Net popitok")
                thousandDiceLabelUpper.text = "Net popitok"
                thousandDiceButtonRollRestart.setTitle("Restart", for: .normal)
            }else{
                thousandDiceButtonRollRestart.setTitle("Roll", for: .normal)
                tryCount = 3
            }
            
        }
    }
    
    @IBAction func thousandDiceOneSingleTap(_ sender: Any) {
        if(!firtstTap){
            
        }
    }
    
    @IBAction func thousandDiceTwoSingleTap(_ sender: Any) {
        if(!firtstTap){
            
        }
    }
    
    @IBAction func thousandDiceThreeSingleTap(_ sender: Any) {
        if(!firtstTap){
            
        }
    }
    
    @IBAction func thousandDiceFourSingleTap(_ sender: Any) {
        if(!firtstTap){
            
        }
    }
    
    @IBAction func thousandDiceFiveSingleTap(_ sender: Any) {
        if(!firtstTap){
            
        }
    }
    
    @IBAction func thousandDiceSixSingleTap(_ sender: Any) {
        if(!firtstTap){
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thousandDiceButtonRollRestart.setTitle("Roll", for: .normal)
        let screenSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.screenSingleTap(_:)))
        screenSingleTap.numberOfTapsRequired = 1
        screenSingleTap.numberOfTouchesRequired = 1
        thousandDiceButtonRollRestart.addGestureRecognizer(screenSingleTap)
        
        let thousandDiceOneSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.thousandDiceOneSingleTap(_:)))
        thousandDiceOneSingleTap.numberOfTapsRequired = 1
        thousandDiceOneSingleTap.numberOfTouchesRequired = 1
        thousandDiceOneImage.addGestureRecognizer(thousandDiceOneSingleTap)
        
        let thousandDiceTwoSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.thousandDiceTwoSingleTap(_:)))
        thousandDiceTwoSingleTap.numberOfTapsRequired = 1
        thousandDiceTwoSingleTap.numberOfTouchesRequired = 1
        thousandDiceTwoImage.addGestureRecognizer(thousandDiceTwoSingleTap)
        
        let thousandDiceThreeSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.thousandDiceThreeSingleTap(_:)))
        thousandDiceThreeSingleTap.numberOfTapsRequired = 1
        thousandDiceThreeSingleTap.numberOfTouchesRequired = 1
        thousandDiceThreeImage.addGestureRecognizer(thousandDiceThreeSingleTap)
        
        let thousandDiceFourSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.thousandDiceFourSingleTap(_:)))
        thousandDiceFourSingleTap.numberOfTapsRequired = 1
        thousandDiceFourSingleTap.numberOfTouchesRequired = 1
        thousandDiceFourImage.addGestureRecognizer(thousandDiceFourSingleTap)
        
        let thousandDiceFiveSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.thousandDiceFiveSingleTap(_:)))
        thousandDiceFiveSingleTap.numberOfTapsRequired = 1
        thousandDiceFiveSingleTap.numberOfTouchesRequired = 1
        thousandDiceFiveImage.addGestureRecognizer(thousandDiceFiveSingleTap)
        
        let thousandDiceSixSingleTap = UITapGestureRecognizer(target: self, action: #selector(self.thousandDiceSixSingleTap(_:)))
        thousandDiceSixSingleTap.numberOfTapsRequired = 1
        thousandDiceSixSingleTap.numberOfTouchesRequired = 1
        thousandDiceSixImage.addGestureRecognizer(thousandDiceSixSingleTap)
        
        thousandDiceOneImage.image = UIImage(named: "1white.png")
        thousandDiceTwoImage.image = UIImage(named: "1white.png")
        thousandDiceThreeImage.image = UIImage(named: "1white.png")
        thousandDiceFourImage.image = UIImage(named: "1white.png")
        thousandDiceFiveImage.image = UIImage(named: "1white.png")
        thousandDiceSixImage.image = UIImage(named: "1white.png")

    }

}
