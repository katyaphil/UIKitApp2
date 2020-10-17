//
//  ViewController.swift
//  UIKitApp2
//
//  Created by k.filipovich on 16/10/2020.
//  Copyright © 2020 k.filipovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 @IBOutlet var mainLable: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        mainLable?.font = mainLable.font.withSize(35)
        mainLable?.textAlignment = .center
        mainLable?.numberOfLines = 2
        
        segmentedControl?.insertSegment(withTitle: "Third", at: 2, animated: false)
        slider.value = 1
        slider.maximumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
          mainLable?.text = String(slider.value)
    }
  
    @IBAction func segmentedControlAction() {
        switch segmentedControl?.selectedSegmentIndex {
        case 0:
            mainLable?.text = "the first is selected"
            mainLable?.textColor = .red
        case 1:
            mainLable?.text = "the second is selected"
             mainLable?.textColor = .yellow
        case 2:
            mainLable?.text = "the third is selected"
            mainLable?.textColor = .green
        default:
            break
        }
    }
    
    @IBAction func sliderAction() {
        let currentValue = CGFloat(slider.value)
        mainLable?.text = String(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(currentValue)
    }
    @IBAction func doneButtonPressed() {
        guard let inputText = textField.text, !inputText.isEmpty else {
            print("Text field is empty")
            return
        }
        if let number = Double(inputText) {
            print("Wrong format")
            return
        }
        mainLable.text = inputText
    }
}

