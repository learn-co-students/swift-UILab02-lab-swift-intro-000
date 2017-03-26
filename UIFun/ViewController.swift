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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paintBucket.backgroundColor = UIColor.red // Default
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
    
    func indexToColor(index: Int) -> String {
        switch index {
        case 0: return "Red"
        case 1: return "Yellow"
        case 2: return "Blue"
        default: return "White"
        }
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let firstSelection = indexToColor(index: firstColorSegmentedControl.selectedSegmentIndex)
        let secondSelection = indexToColor(index: secondColorSegmentedControl.selectedSegmentIndex)
        
        paintBucket.backgroundColor = mixColors(first: firstSelection, second: secondSelection)
        
    }

}
