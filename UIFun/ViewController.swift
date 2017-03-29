//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstColourSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColourSegmentedControl: UISegmentedControl!
    @IBOutlet weak var paintBucket: UIImageView!
    // TODO: Setup the IBOutlets
    
    override func viewDidLoad() {
        paintBucket.backgroundColor = UIColor.blue
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
        
        print(firstColourSegmentedControl.titleForSegment(at: firstColourSegmentedControl.selectedSegmentIndex) ?? "null")
        print(secondColourSegmentedControl.titleForSegment(at: secondColourSegmentedControl.selectedSegmentIndex) ?? "null")
        
        paintBucket.backgroundColor = mixColors(first:
            firstColourSegmentedControl.titleForSegment(at: firstColourSegmentedControl.selectedSegmentIndex) ?? "null",
                                                second:
            secondColourSegmentedControl.titleForSegment(at: secondColourSegmentedControl.selectedSegmentIndex) ?? "null")

    }

}
