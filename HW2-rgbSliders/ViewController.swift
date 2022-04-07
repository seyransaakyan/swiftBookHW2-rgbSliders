//
//  ViewController.swift
//  HW2-rgbSliders
//
//  Created by Seyran Saakyan on 01.04.2022.
//

import UIKit

protocol ViewControllerDelegate: AnyObject{
    func backgroundColor(color: UIColor)
}

class ViewController: UIViewController {
    @IBOutlet weak var viewField: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    weak var delegate: ViewControllerDelegate?
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
        viewField.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
    }
    private func range(slider: UISlider){
        slider.minimumValue = 1
        slider.maximumValue = 255
        slider.value = 255
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
    func backColor() -> UIColor{
        viewField.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1.0)
    let needColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1.0)
    return needColor
    }
    
    @IBAction func DoneButtonPressed() {
        delegate?.backgroundColor(color: backColor())
        dismiss(animated: true)
    }
    @IBAction func rgbSliders() {
        backColor()
    }
}

