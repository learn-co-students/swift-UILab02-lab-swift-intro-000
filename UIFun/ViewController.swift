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
    
    @IBOutlet weak var firstSegmentControl: UISegmentedControl!
    @IBOutlet weak var secondSegmentControl: UISegmentedControl!
    
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
        
        let indexA = firstSegmentControl.selectedSegmentIndex
        var colorA : String = String();
        
        switch indexA {
        case 0:
            colorA = "Red";
        case 1:
            colorA = "Yellow";
        case 2:
            colorA = "Blue";
        default:
            colorA = "White"
        }
        
        let indexB = secondSegmentControl.selectedSegmentIndex
        var colorB : String = String();
        
        switch indexB {
        case 0:
            colorB = "Red";
        case 1:
            colorB = "Yellow";
        case 2:
            colorB = "Blue";
        default:
            colorB = "White"
        }
        
        paintBucket.backgroundColor = mixColors(first: colorA, second: colorB)
    }

}
