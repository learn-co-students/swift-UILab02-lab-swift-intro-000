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
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        // TODO: Implement this function according to the instructions.
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        switch (firstSelection, secondSelection) {
        case (0, 0):
            paintBucket.backgroundColor = UIColor.red
        case (0, 1), (1, 0):
            paintBucket.backgroundColor = UIColor.orange
        case (0, 2), (2, 0):
            paintBucket.backgroundColor = UIColor.purple
        case (1, 1):
            paintBucket.backgroundColor = UIColor.yellow
        case (1, 2), (2, 1):
            paintBucket.backgroundColor = UIColor.green
        case (2, 2):
            paintBucket.backgroundColor = UIColor.blue
        default:
            paintBucket.backgroundColor = UIColor.white
        }
    
    }

}
