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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var firstColorSegControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegControl: UISegmentedControl!
    @IBOutlet weak var paintBucket: UIImageView!
    
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
    
    
    let indexedColor = [
        0 : "Red",
        1 : "Yellow",
        2 : "Blue"
    ]
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        let firstSelection = firstColorSegControl.selectedSegmentIndex
        let secondSelection = secondColorSegControl.selectedSegmentIndex
        // TODO: Implement this function according to the instructions.
            paintBucket.backgroundColor = mixColors(first: indexedColor[firstSelection]!, second: indexedColor[secondSelection]!)
 
    }

}
