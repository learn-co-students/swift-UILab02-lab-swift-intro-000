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
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        if firstSelection == 0 {
            
            if secondSelection == 0 {
             paintBucket.backgroundColor = mixColors(first: "Red", second:  "Red")
            }
            
            if secondSelection == 1 {
                paintBucket.backgroundColor = mixColors(first: "Red", second:  "Yellow")
            }
            
            if secondSelection == 2 {
                paintBucket.backgroundColor = mixColors(first: "Red", second:  "Blue")
            }
        }
        
        if firstSelection == 1 {
            
            if secondSelection == 0 {
                paintBucket.backgroundColor = mixColors(first: "Yellow", second:  "Red")
            }
            
            if secondSelection == 1 {
                paintBucket.backgroundColor = mixColors(first: "Yellow", second:  "Yellow")
            }
            
            if secondSelection == 2 {
                paintBucket.backgroundColor = mixColors(first: "Yellow", second:  "Blue")
            }
        }
        
        if firstSelection == 2 {
            
            if secondSelection == 0 {
                paintBucket.backgroundColor = mixColors(first: "Blue", second:  "Red")
            }
            
            if secondSelection == 1 {
                paintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
            }
            
            if secondSelection == 2 {
                paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
            }
        }
    }
}
