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
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        
       var firstColor = ""
      switch firstSelection {
        case 0:
            firstColor = "Red"
        case 1:
            firstColor = "Yellow"
        case 2:
            firstColor = "Blue"
        default:
            firstColor = "Orange"
        }
        
        var secondColor = ""
        switch secondSelection {
        case 0:
            secondColor = "Red"
        case 1:
            secondColor = "Yellow"
        case 2:
            secondColor = "Blue"
        default:
            secondColor = "Orange"
        }
        
        let currentColor = mixColors(first: firstColor, second: secondColor)
        
        paintBucket.backgroundColor = currentColor
        
        
    }

}
