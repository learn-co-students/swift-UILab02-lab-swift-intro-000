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
    @IBOutlet var colorImg: UIImageView!
    @IBOutlet var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet var secondColorSegmentedControl: UISegmentedControl!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorSelected(firstColorSegmentedControl)
        
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
        let str1 = firstColorSegmentedControl.titleForSegment(at: firstColorSegmentedControl.selectedSegmentIndex)
        let str2 = secondColorSegmentedControl.titleForSegment(at: secondColorSegmentedControl.selectedSegmentIndex)
        
        let color = mixColors(first: str1!, second: str2!)
        colorImg.backgroundColor = color
        
    }

}
