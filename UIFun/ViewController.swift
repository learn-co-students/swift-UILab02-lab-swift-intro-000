//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var paintBucket: UIImageView!
    // TODO: Setup the IBOutlets
    
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
        mixColors(first: <#T##String#>, second: <#T##String#>)
        /*TODO:
         - Need to pull the segment values and conver it to the color string.
         - Figure out how to make both fire the value and into what, which gets sent to mixColors.
         - Under this IBAction func, call two IBOutlet vars of the segments and have them active here, then dump it into mixColors function. Linking two actions to the same control.
         */
        
        
        
    }

    /*
     let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
     let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
     */
    
}
