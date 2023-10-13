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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showResultsClicked(_ sender: Any) {
        print("Switch Status: \(mSwitch.isOn)")
        let selectedIndex = segmentedControl.selectedSegmentIndex
        let selectedCategory = segmentedControl.titleForSegment(at: selectedIndex)
        print("Segmented Control Data: \(selectedCategory!)")
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
    
    
}

