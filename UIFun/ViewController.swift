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
    @IBOutlet weak var colorSeg1: UISegmentedControl!
    @IBOutlet weak var colorSeg2: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paintBucket.backgroundColor = mixColors(first: colorSeg1.titleForSegment(at: 0)!, second: colorSeg2.titleForSegment(at: 0)!)
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
        
        let firstSelection = colorSeg1.selectedSegmentIndex
        let secondSelection = colorSeg2.selectedSegmentIndex
        paintBucket.backgroundColor = mixColors(first: colorSeg1.titleForSegment(at: firstSelection)!, second: colorSeg2.titleForSegment(at: secondSelection)!)
    }

}
