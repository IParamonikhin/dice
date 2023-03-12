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
        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Tabbar")
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
