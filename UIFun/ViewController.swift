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
    
    @IBOutlet weak var bucket: UIImageView!

    @IBOutlet weak var first: UISegmentedControl!

    @IBOutlet weak var second: UISegmentedControl!
    
    
    
    
    
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
        
        let segOne = first.selectedSegmentIndex
        let segTwo = second.selectedSegmentIndex
        var color1 = ""
        var color2 = ""
        
        switch segOne{
        case 0:
            color1 = "Red"
        case 1:
            color1 = "Yellow"
        case 2:
            color1 = "Blue"
        default:
            color1 = ""
        }
        
        switch segTwo{
        case 0:
            color2 = "Red"
        case 1:
            color2 = "Yellow"
        case 2:
            color2 = "Blue"
        default:
            color2 = ""
        }
        
        bucket.backgroundColor = mixColors(first: color1, second: color2)
    }

}



























