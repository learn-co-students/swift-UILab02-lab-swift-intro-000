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
    
 func firstIndexToString(uno: Int) -> (String) {
        if uno == 0 {
            return "Red"
        } else if uno == 1 {
            return "Yellow"
        } else if uno == 2 {
            return "Blue"
        }
        return " "
    }
    func secondIndexToString(dos: Int) -> (String) {
        if dos == 0 {
            return "Red"
        } else if dos == 1 {
            return "Yellow"
        } else if dos == 2 {
            return "Blue"
        }
        return " "
    }


    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        // TODO: Implement this function according to the instructions.
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
       let firstStringColor = firstIndexToString(uno: firstSelection)
        let secondStringColor = secondIndexToString(dos: secondSelection)
        
        paintBucket.backgroundColor = mixColors(first: firstStringColor, second: secondStringColor)
        
    }

}
