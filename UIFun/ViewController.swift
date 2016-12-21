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
        
        var firstColor: String
        var secondColor: String
        var mixedColor: UIColor
        switch (firstColorSegmentedControl.selectedSegmentIndex, secondColorSegmentedControl.selectedSegmentIndex) {
        case (0, 0):
            firstColor = "Red"
            secondColor = "Red"
        case (0, 1), (1, 0):
            firstColor = "Red"
            secondColor = "Yellow"
        case (0, 2), (2, 0):
            firstColor = "Red"
            secondColor = "Blue"
        case (1, 1):
            firstColor = "Yellow"
            secondColor = "Yellow"
        case (1, 2), (2, 1):
            firstColor = "Yellow"
            secondColor = "Blue"
        case (2, 2):
            firstColor = "Blue"
            secondColor = "Blue"
        
        default:
            firstColor = "Clear"
            secondColor = "Clear"
            
        }
        mixedColor = mixColors(first: firstColor, second: secondColor)
        paintBucket.backgroundColor = mixedColor
        
    }

}
