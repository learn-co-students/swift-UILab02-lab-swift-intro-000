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
    
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let first = firstColorSegmentedControl.selectedSegmentIndex
        let second = secondColorSegmentedControl.selectedSegmentIndex
        var x: String
        switch first {
            case 0:
                x = "Red"
            case 1:
                x = "Yellow"
            case 2:
                x = "Blue"
            default:
                x = "Red"
        }
        var y: String
        switch second {
            case 0:
                y = "Red"
            case 1:
                y = "Yellow"
            case 2:
                y = "Blue"
            default:
                y = "Red"
        }
        paintBucket.backgroundColor = mixColors(first: x, second: y)
    }

}
