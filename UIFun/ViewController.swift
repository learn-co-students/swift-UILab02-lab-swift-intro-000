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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet var paintBucket: UIView!
    
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
        
        let choice1 = sender.selectedSegmentIndex
        let choice2 = sender.selectedSegmentIndex
        
        if choice1 == 0 && choice2 == 0 {
            
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
            
        } else if choice1 == 0 && choice2 == 1{
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
            
        } else if choice1 == 0 && choice2 == 2{
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
        }
        
    }


}
