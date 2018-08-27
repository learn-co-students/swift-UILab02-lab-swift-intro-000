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
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        // TODO: Implement this function according to the instructions.
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        var paintColor: (first: String, second: String){
            switch (firstSelection, secondSelection) {
            case (0, 0):
                return ("Red","Red")
            case (0, 1):
                return ("Red", "Yellow")
            case (1, 0):
                return ("Yellow", "Red")
            case (0, 2):
                return ("Red", "Blue")
            case (2, 0):
                return ("Blue", "Red")
            case (1, 1):
                return ("Yellow", "Yellow")
            case (1, 2):
                return ("Yellow", "Blue")
            case (2, 1):
                return ("Blue", "Yellow")
            case (2, 2):
                return ("Blue", "Blue")
            default:
                return ("White", "White")
            }
        }
        
        // So I know I can pass multiple args in the switch case by (foo1, foo2), (foo2, foo1) but there is no way to have the return be multiple and select the correct one is there?
        
        paintBucket.backgroundColor = mixColors(first: paintColor.first, second: paintColor.second)
        
    }

}
