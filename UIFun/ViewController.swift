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
    // TODO: Setup the IBOutlets
    
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
        let firstSelection = firstColorSegmentControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentControl.selectedSegmentIndex
        switch firstSelection {
        case 0:
            switch secondSelection {
            case 0:
                paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
            case 1:
                paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
            case 2:
                paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
            default:
                paintBucket.backgroundColor = mixColors(first: "", second: "")
            }
        case 1:
            switch secondSelection {
            case 0:
                paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
            case 1:
                paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
            case 2:
                paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
            default:
                paintBucket.backgroundColor = mixColors(first: "", second: "")
            }
        case 2:
            switch secondSelection {
            case 0:
                paintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
            case 1:
                paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
            case 2:
                paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
            default:
                paintBucket.backgroundColor = mixColors(first: "", second: "")
            }
        default:
            paintBucket.backgroundColor = mixColors(first: "", second: "")
        }
        
        // TODO: Implement this function according to the instructions.
        
        
    }

}
