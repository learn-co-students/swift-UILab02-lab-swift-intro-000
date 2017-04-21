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
        
        colorSelected(firstColorSegmentedControl)
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
        
        // get colours
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let firstColour = indexToColour(index: firstSelection)
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        let secondColour = indexToColour(index: secondSelection)
        // mix
        let colour: UIColor = mixColors(first: firstColour, second: secondColour)
        
        // update bucket
        paintBucket.backgroundColor = colour
        
    }
    
    func indexToColour(index: Int) -> String {
        let ret: String
        switch index {
        case 0:
            ret = "Red"
        case 1:
            ret = "Yellow"
        case 2:
            ret = "Blue"
        default:
            ret = "Red"
        }
        
        return ret
    }

}
