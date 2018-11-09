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
    @IBOutlet var paintBucketImage: UIImageView!
    @IBOutlet var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet var secondColorSegmentedControl: UISegmentedControl!
    
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
        var first = ""
        var second = ""
        
        switch firstColorSegmentedControl.selectedSegmentIndex {
        case 0:
            first = "Red"
        case 1:
            first = "Yellow"
        case 2:
            first = "Blue"
        default:
            break
        }
        
        switch secondColorSegmentedControl.selectedSegmentIndex {
        case 0:
            second = "Red"
        case 1:
            second = "Yellow"
        case 2:
            second = "Blue"
        default:
            break
        }
        
        paintBucketImage.backgroundColor = mixColors(first: first, second: second)
    }
}
