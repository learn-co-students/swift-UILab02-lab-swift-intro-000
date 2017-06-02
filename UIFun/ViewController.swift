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
        var index1 = firstColorSegmentedControl.selectedSegmentIndex
        var index2 = secondColorSegmentedControl.selectedSegmentIndex
        var color: UIColor = UIColor.white
        if index1 == 0 && index2 == 0 {
            color = mixColors(first: "Red", second: "Red")

        }
        else if index1 == 0 && index2 == 1{
             color = mixColors(first: "Red", second: "Yellow")
        }
        else if index1 == 0 && index2 == 2{
            color = mixColors(first: "Red", second: "Blue")
        }
        else if index1 == 1 && index2 == 0{
            color = mixColors(first: "Yellow", second: "Red")
        }
        else if index1 == 1 && index2 == 1{
            color = mixColors(first: "Yellow", second: "Yellow")
        }
        else if index1 == 1 && index2 == 2{
            color = mixColors(first: "Yellow", second: "Blue")
        }
        else if index1 == 2 && index2 == 0{
            color = mixColors(first: "Blue", second: "Red")
        }
        else if index1 == 2 && index2 == 1{
            color = mixColors(first: "Blue", second: "Yellow")
        }
        else if index1 == 2 && index2 == 2{
            color = mixColors(first: "Blue", second: "Blue")
        }
        
        paintBucket.backgroundColor = color
        
        
    }

}
