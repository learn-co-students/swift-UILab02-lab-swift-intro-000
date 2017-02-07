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
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    
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
        var colorOne = ""
        var colorTwo = ""
        
        switch firstColorSegmentedControl.selectedSegmentIndex {
        case 0: colorOne = "Red"
        case 1: colorOne = "Yellow"
        case 2: colorOne = "Blue"
        default: return
        }
        
        switch secondColorSegmentedControl.selectedSegmentIndex {
        case 0: colorTwo = "Red"
        case 1: colorTwo = "Yellow"
        case 2: colorTwo = "Blue"
        default: return
        }
        
        paintBucket.backgroundColor = mixColors(first: colorOne, second: colorTwo)
        
    }

}
