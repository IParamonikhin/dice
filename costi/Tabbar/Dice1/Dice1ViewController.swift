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
    @IBOutlet weak var diceTwo: UIImageView!
    
    @IBOutlet weak var summa: UILabel!
    
    @IBAction func singleTap(_ sender: UITapGestureRecognizer) {
        
        var val1 = randomVal()
        var val2 = randomVal()
        diceImg(val1, val2)
        var summ = val1+val2
        summa.text = "Your score: " + String(summ)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(self.singleTap(_:)))
        singleTap.numberOfTapsRequired = 1
        singleTap.numberOfTouchesRequired = 1
        view.addGestureRecognizer(singleTap)
//        diceOne.image = UIImage(named: "1white.png")
    }
    
    func diceImg(_ diceUno: Int, _ diceDos: Int){
        switch diceUno{
            case 1:
                diceOne.image = UIImage(named: "1white.png")
            case 2:
                diceOne.image = UIImage(named: "2white.png")
            case 3:
                diceOne.image = UIImage(named: "3white.png")
            case 4:
                diceOne.image = UIImage(named: "4white.png")
            case 5:
                diceOne.image = UIImage(named: "5white.png")
            case 6:
                diceOne.image = UIImage(named: "6white.png")
            default:
                diceOne.image = UIImage(named: "1white.png")
        }
        switch diceDos{
            case 1:
                diceTwo.image = UIImage(named: "1black.png")
            case 2:
                diceTwo.image = UIImage(named: "2black.png")
            case 3:
                diceTwo.image = UIImage(named: "3black.png")
            case 4:
                diceTwo.image = UIImage(named: "4black.png")
            case 5:
                diceTwo.image = UIImage(named: "5black.png")
            case 6:
                diceTwo.image = UIImage(named: "6black.png")
            default:
                diceTwo.image = UIImage(named: "1black.png")
        }
    }
    func randomVal ()->Int{
        var val:Int = Int.random(in: 1...6)
        return val
    }
    
}

