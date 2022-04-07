//
//  NewColorViewController.swift
//  HW2-rgbSliders
//
//  Created by Seyran Saakyan on 07.04.2022.
//

import UIKit

class NewColorViewController: UIViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newColorVC = segue.destination as! ViewController
        newColorVC.delegate = self
    }
}
extension NewColorViewController: ViewControllerDelegate {
    func backgroundColor(color: UIColor) {
        self.view.backgroundColor = color
    }
}
