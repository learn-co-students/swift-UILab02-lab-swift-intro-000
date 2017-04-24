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
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintbucket.backgroundColor = UIColor.red
    }

    func mixColors(_ first: String, _ second: String) -> UIColor {
        
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
        var backgroundColor: UIColor!
        switch(firstSelection, secondSelection) {
        case (0, 0):
            backgroundColor = mixColors("Red", "Red")
        case (0, 1), (1, 0):
            backgroundColor = mixColors("Red", "Yellow")
        case (0, 2), (2, 0):
            backgroundColor = mixColors("Red", "Blue")
        case (1, 1):
            backgroundColor = mixColors("Yellow", "Yellow")
        case (1, 2), (2, 1):
            backgroundColor = mixColors("Yellow", "Blue")
        case (2, 2):
            backgroundColor = mixColors("Blue", "Blue")
        default:
            backgroundColor = UIColor.white
        }
        paintBucket.backgroundColor = backgroundColor
    }


}
