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
        
        // TODO: Implement this function according to the instructions.
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentControl.selectedSegmentIndex
        
        if firstSelection == 0 && secondSelection == 0 {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
        }else if firstSelection == 0 && secondSelection == 1 || firstSelection == 1 && secondSelection == 0 {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
        }else if firstSelection == 0 && secondSelection == 2 || firstSelection == 2 && secondSelection == 0 {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blus")
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
        }
        if firstSelection == 1 && secondSelection == 1 {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
        }else if firstSelection == 1 && secondSelection == 2 || firstSelection == 2 && secondSelection == 1 {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
        }
        
        if firstSelection == 2 && secondSelection == 2{
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
        }
        
    }

}
