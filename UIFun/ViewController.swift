//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Setup the IBOutlets
    
    @IBOutlet var paintBucket: UIImageView!
    @IBOutlet var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet var secondColorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            return UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            return UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            return UIColor.purple
        case ("Yellow", "Yellow"):
            return UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            return UIColor.green
        case ("Blue", "Blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        // TODO: Implement this function according to the instructions.
        let firstSelected = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelected = secondColorSegmentedControl.selectedSegmentIndex
        let firstString = setString(selected: firstSelected)
        let secondString = setString(selected: secondSelected)
        let color = mixColors(first: firstString, second: secondString)
        paintBucket.backgroundColor = color
    }
    
    func setString(selected: Int) -> String {
        var output = ""
        switch selected {
        case 0 :
            output = "Red"
        case 1 :
            output = "Yellow"
        default :
            output = "Blue"
        }
        
        return output
    }

}
