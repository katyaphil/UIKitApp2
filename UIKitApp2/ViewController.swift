//
//  ViewController.swift
//  UIKitApp2
//
//  Created by k.filipovich on 16/10/2020.
//  Copyright © 2020 k.filipovich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mSegment: UISegmentedControl!
    
    
    @IBOutlet var mLabel: UILabel!
    
    @IBOutlet var slider: UISlider!
    
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        mLabel?.font = mLabel.font.withSize(35)
        mLabel?.textAlignment = .center
        mLabel?.numberOfLines = 2
        
        mSegment?.insertSegment(withTitle: "Third", at: 2, animated: false)
        slider.value = 1
        slider.maximumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        mLabel?.text = String(slider.value)
    }
    
    @IBAction func segmentAction() {
        switch mSegment.selectedSegmentIndex {
        case 0:
            mLabel?.text = "the first is selected"
            mLabel?.textColor = .red
        case 1:
            mLabel?.text = "the second is selected"
            mLabel?.textColor = .yellow
            
        default:
            break
        }
    }
    @IBAction func sliderAction() {
        
                let currentValue = CGFloat(slider.value)
                mLabel?.text = String(slider.value)
                view.backgroundColor = view.backgroundColor?.withAlphaComponent(currentValue)
    }
    
    @IBAction func buttonAction() {
                guard let inputText = textField.text, !inputText.isEmpty else {
                    print("Text field is empty")
                    return
                }
                if let number = Double(inputText) {
                    print("Wrong format")
                    return
                }
        mLabel.text = inputText
    }
    


}

