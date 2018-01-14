//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    var colorA: String = ""
    var colorB: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = mixColors(first: colorA, second: colorB)
    }

    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"), ("Red", ""), ("", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"), ("Yellow", ""), ("", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"), ("Blue", ""), ("", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {

        if sender == firstColorSegmentedControl {
            switch(firstColorSegmentedControl.selectedSegmentIndex) {
            case 0:
                colorA = "Red"
                break
            case 1:
                colorA = "Yellow"
                break
            case 2:
                colorA = "Blue"
                break
            default:
                break
            }
        }
        else if sender == secondColorSegmentedControl {
            switch(secondColorSegmentedControl.selectedSegmentIndex) {
            case 0:
                colorB = "Red"
                break
            case 1:
                colorB = "Yellow"
                break
            case 2:
                colorB = "Blue"
                break
            default:
                break
            }
        }
        
        paintBucket.backgroundColor = mixColors(first: colorA, second: colorB)
    }
}
