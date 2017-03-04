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
        case ("red", "red"):
            return UIColor.red
        case ("red", "yellow"), ("yellow", "red"):
            return UIColor.orange
        case ("red", "blue"), ("blue", "red"):
            return UIColor.purple
        case ("yellow", "yellow"):
            return UIColor.yellow
        case ("yellow", "blue"), ("blue", "yellow"):
            return UIColor.green
        case ("blue", "blue"):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        if let firstSelection = firstColorSegmentedControl.titleForSegment(at: firstColorSegmentedControl.selectedSegmentIndex),
           let secondSelection = secondColorSegmentedControl.titleForSegment(at: secondColorSegmentedControl.selectedSegmentIndex) {
            let first = firstSelection.lowercased()
            let second = secondSelection.lowercased()
            
            let color = mixColors(first: first, second: second)
            
            paintBucket.backgroundColor = color
        }
        
        
    }

}
