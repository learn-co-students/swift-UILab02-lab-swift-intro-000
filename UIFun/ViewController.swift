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
    @IBOutlet weak var firstColorSegmentedColor: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedColor: UISegmentedControl!
    
    override func viewDidLoad()
    {
        paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
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
    
    @IBAction func colorSelected(_ sender: UISegmentedControl)
    {
        var firstColorSelected = firstColorSegmentedColor.selectedSegmentIndex
        var secondColorSelected = secondColorSegmentedColor.selectedSegmentIndex
        
        if firstColorSelected == 0 && secondColorSelected == 0
        {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
        }
        else if firstColorSelected == 0 && secondColorSelected == 1
        {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
        }
        else if firstColorSelected == 0 && secondColorSelected == 2
        {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
        }
        else if firstColorSelected == 1 && secondColorSelected == 0
        {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
        }
        else if firstColorSelected == 2 && secondColorSelected == 0
        {
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
        }
        else if firstColorSelected == 1 && secondColorSelected == 1
        {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
        }
        else if firstColorSelected == 1 && secondColorSelected == 2
        {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
        }
        else if firstColorSelected == 2 && secondColorSelected == 1
        {
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
        }
        else if firstColorSelected == 2 && secondColorSelected == 2
        {
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
        }
        else
        {
            print("selection not coded: \(firstColorSelected):\(secondColorSelected)")
        }
    }

}
