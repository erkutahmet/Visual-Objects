//
//  ViewController.swift
//  Visual Objects
//
//  Created by Ahmet Erkut on 13.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mSwitch: UISwitch!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderLabel.text = String(Int(slider.value * 100))
        stepperLabel.text = String(Int(stepper.value))
        activityIndicator.isHidden = true
    }
    
    @IBAction func showResultsClicked(_ sender: Any) {
        print("Switch Status: \(mSwitch.isOn)")
        let selectedIndex = segmentedControl.selectedSegmentIndex
        let selectedCategory = segmentedControl.titleForSegment(at: selectedIndex)
        print("Segmented Control Data: \(selectedCategory!)")
        print("Slider Value: \(slider.value * 100)")
        print("Stepper Value: \(stepper.value)")
    }
    
    @IBAction func doClicked(_ sender: Any) {
        if let text = textField.text {
            if text == "" {
                label.text = "Enter any data!!"
            } else {
                label.text = text
            }
        } else {
            print("Error")
        }
    }
    
    @IBAction func smileClicked(_ sender: Any) {
        imageView.image = UIImage(named: "smile")
    }
    
    @IBAction func sadClicked(_ sender: Any) {
        imageView.image = UIImage(named: "sad")
    }
    
    @IBAction func switchChange(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch: ON")
        } else {
            print("Switch: OFF")
        }
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        let selectedCategory = sender.titleForSegment(at: selectedIndex)
        print("Selected Status: \(selectedCategory!)")
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        let value = Int(sender.value * 100)
        sliderLabel.text = String(value)
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        let value = Int(sender.value)
        stepperLabel.text = String(value)
    }
    
    @IBAction func activityIndicatorStart(_ sender: Any) {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    @IBAction func activityIndicatorStop(_ sender: Any) {
        activityIndicator.stopAnimating()
        activityIndicator.isHidden = true
    }
    
}

