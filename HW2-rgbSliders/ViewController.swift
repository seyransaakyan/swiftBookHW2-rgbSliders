//
//  ViewController.swift
//  HW2-rgbSliders
//
//  Created by Seyran Saakyan on 01.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewField: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewField.layer.cornerRadius = 20
        range(slider: redSlider)
        range(slider: greenSlider)
        range(slider: blueSlider)
        redLabel.text = String(Int(redSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        viewField.backgroundColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1.0)
    }
    private func range(slider: UISlider){
        slider.minimumValue = 1
        slider.maximumValue = 255
        slider.value = 128
    }
    
    @IBAction func redSliderAction() {
        redLabel.text = String(Int(redSlider.value))
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = String(Int(greenSlider.value))
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = String(Int(blueSlider.value))
    }
    private func backColor(){
        viewField.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1.0)
    }
    
    @IBAction func rgbSliders() {
        backColor()
    }
}

