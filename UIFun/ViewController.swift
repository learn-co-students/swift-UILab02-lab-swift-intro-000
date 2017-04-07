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
        
        paintBucket.backgroundColor = mixColors(first: 0, second: 0)
        
    }

    func mixColors(first: Int, second: Int) -> UIColor {
        
        switch (first, second) {
        case (0, 0):
            return UIColor.red
        case (0, 1), (1, 0):
            return UIColor.orange
        case (0, 2), (2, 0):
            return UIColor.purple
        case (1, 1):
            return UIColor.yellow
        case (1, 2), (2, 1):
            return UIColor.green
        case (2, 2):
            return UIColor.blue
        default:
            return UIColor.white
        }
        
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        paintBucket.backgroundColor = mixColors(first: firstSelection, second: secondSelection)
        
        
    }

}
