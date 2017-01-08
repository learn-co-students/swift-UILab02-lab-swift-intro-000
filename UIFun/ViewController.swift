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
    
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var PaintBucket: UIImageView!
    
    
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
        
        if firstSelection == 0 && secondSelection == 0 {
            PaintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
        }
        if firstSelection == 0 && secondSelection == 1{
            PaintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
        }
        if firstSelection == 1 && secondSelection == 0{
            PaintBucket.backgroundColor = mixColors(first: "Yellow", second: "Red")
        }
        if firstSelection == 0 && secondSelection == 2{
            PaintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
        }
        if firstSelection == 2 && secondSelection == 0{
            PaintBucket.backgroundColor = mixColors(first: "Blue", second: "Red")
        }
        if firstSelection == 1 && secondSelection == 1{
            PaintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
        }
        if firstSelection == 1 && secondSelection == 2{
            PaintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
        }
        if firstSelection == 2 && secondSelection == 1{
            PaintBucket.backgroundColor = mixColors(first: "Blue", second: "Yellow")
        }
        if firstSelection == 2 && secondSelection == 2{
            PaintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
        }
        
        
        print(sender.selectedSegmentIndex)
        
    }

}
