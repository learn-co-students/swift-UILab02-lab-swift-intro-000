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
    @IBOutlet weak var firstColorSegmentControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentControl: UISegmentedControl!
    
    
    
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
        
        let firstColor = firstColorSegmentControl.selectedSegmentIndex
        let secondColor = secondColorSegmentControl.selectedSegmentIndex
        
        if firstColor == 0 && secondColor == 0 {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
            print("Red")
        }
        else if (firstColor == 0 && secondColor == 1) || (firstColor == 1 && secondColor == 0) {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
            print("Orange")
        }
        else if (firstColor == 0 && secondColor == 2) || (firstColor == 2 && secondColor == 0) {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
            print("purple")
        }
        else if firstColor == 1 && secondColor == 1 {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
            print("yellow")
        }
        else if (firstColor == 1 && secondColor == 2) || (firstColor == 2 && secondColor == 1) {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
            print("green")
        }
        else if firstColor == 2 && secondColor == 2 {
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
            print("blue")
        }
    }

}
