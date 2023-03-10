//
//  ViewController.swift
//  costi
//
//  Created by Иван on 02.03.2023.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storuboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = storuboard.instantiateViewController(withIdentifier: "Tabbar")
        self.navigationController?.pushViewController(vc, animated: false)
        // Do any additional setup after loading the view.
    }

//    @IBOutlet weak var score: UILabel!
//    @IBOutlet weak var firstBone: UIImageView!
//    @IBOutlet weak var secondBone: UIImageView!
    
    
    
}

//enum Bones{
//    case firstBone (value : Int, text: String)
//    case secondBone (value : Int, text: String)
//}
