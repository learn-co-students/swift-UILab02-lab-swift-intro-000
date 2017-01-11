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
        firstColorSegmentedControl.selectedSegmentIndex = 3
        secondColorSegmentedControl.selectedSegmentIndex = 3
        paintBucket.backgroundColor = mixColors(first: "White", second: "White")
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
        case ("White", "White"):
            return UIColor.white
        case ("White", "Red"), ("Red", "White"):
            return UIColor(red:1.00, green:0.50, blue:0.50, alpha:1.0)
        case ("White", "Yellow"), ("Yellow", "White"):
            return UIColor(red:1.00, green:0.96, blue:0.50, alpha:1.0)
        case ("White", "Blue"), ("Blue", "White"):
            return UIColor(red:0.50, green:0.64, blue:0.84, alpha:1.0)
        default:
            return UIColor.white
        }

    }

    @IBAction func colorSelected(_ sender: UISegmentedControl) {
    
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        switch (firstSelection, secondSelection) {
        case (0,0):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
        case (0,1):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
        case (0,2):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
        case (0,3):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "White")
        case (1,0):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
        case (1,1):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
        case (1,2):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
        case (1,3):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "White")
        case (2,0):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
        case (2,1):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
        case (2,2):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
        case (2,3):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "White")
        case (3,0):
            paintBucket.backgroundColor = mixColors(first: "White", second: "Red")
        case (3,1):
            paintBucket.backgroundColor = mixColors(first: "White", second: "Yellow")
        case (3,2):
            paintBucket.backgroundColor = mixColors(first: "White", second: "Blue")
        case (3,3):
            paintBucket.backgroundColor = mixColors(first: "White", second: "White")
        default:
            print ("That is not a valid choice.")
        }
    }

}
