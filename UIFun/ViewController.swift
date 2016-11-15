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
    @IBOutlet weak var firstColorSegmentedControl :UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl : UISegmentedControl!
    
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
        
        var first_color : String
        var second_color : String
        
        switch firstColorSegmentedControl.selectedSegmentIndex {
        case 0:
            first_color = "Red"
        case 1:
            first_color = "Yellow"
        case 2:
            first_color = "Blue"
        default:
            first_color = "Red"
        }
        
        switch secondColorSegmentedControl.selectedSegmentIndex {
        case 0:
            second_color = "Red"
        case 1:
            second_color = "Yellow"
        case 2:
            second_color = "Blue"
        default:
            second_color = "Red"
        }
        
        
        paintBucket.backgroundColor = mixColors(first: first_color, second: second_color)
        
        
    }

}
