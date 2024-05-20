//
//  ViewController.swift
//  colorMixing
//
//  Created by Ksenia on 20.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorField: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        colorField.layer.cornerRadius = 10
        colorField.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: <#CGFloat#>)
        
        redSliderSetup()
        greenSliderSetup()
        blueSliderSetup()
        
        redLabelSetup()
        greenLabelSetup()
        blueLabelSetup()
    }
    
    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted()
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted()
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value.formatted()
    }
}
    
//MARK: - Setup UI
extension ViewController {
    private func redLabelSetup() {
        redLabel.text = redSlider.value.formatted()
        redLabel.font = UIFont.systemFont(ofSize: 17)
        redLabel.textAlignment = .center
    }
    private func greenLabelSetup() {
        greenLabel.text = greenSlider.value.formatted()
        greenLabel.font = UIFont.systemFont(ofSize: 17)
        greenLabel.textAlignment = .center
    }
    private func blueLabelSetup() {
        blueLabel.text = blueSlider.value.formatted()
        blueLabel.font = UIFont.systemFont(ofSize: 17)
        blueLabel.textAlignment = .center
    }
    
    private func redSliderSetup() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.tintColor = .red
    }
    private func greenSliderSetup() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.tintColor = .green
    }
    private func blueSliderSetup() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.tintColor = .green
    }
}


 
