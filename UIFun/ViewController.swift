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
    @IBOutlet var paintBucket: UIImageView!
    @IBOutlet var firstColorSegmentControl: UISegmentedControl!
    @IBOutlet var secondColorSegmentControl: UISegmentedControl!

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
    
    func colors(_ index: Int) -> String {
        switch index {
        case 0:
            return "Red"
        case 1:
            return "Yellow"
        case 2:
            return "Blue"
        default:
            break
        }
        return ""
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        let firstSelection = firstColorSegmentControl.selectedSegmentIndex
        let secondSelction = secondColorSegmentControl.selectedSegmentIndex
        paintBucket.backgroundColor = mixColors(first: colors(firstSelection), second: colors(secondSelction))
        // TODO: Implement this function according to the instructions.
        
        
    }


}
