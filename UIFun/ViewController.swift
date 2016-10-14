//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
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
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        let distVar = (firstSelection, secondSelection)
        
        switch distVar {
        case let distVar where distVar == (0, 0):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
        case let distVar where distVar == (0, 1):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
        case let distVar where distVar == (1, 0):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
        case let distVar where distVar == (0, 2):
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
        case let distVar where distVar == (2, 0):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
        case let distVar where distVar == (1, 1):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
        case let distVar where distVar == (1, 2):
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
        case let distVar where distVar == (2, 1):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
        case let distVar where distVar == (2, 2):
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
        default:
            paintBucket.backgroundColor = UIColor.white
        }
    }
    // Could have used switch true and switch distVar with case _
}
