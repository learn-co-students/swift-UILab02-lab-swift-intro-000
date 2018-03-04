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
        paintBucket.backgroundColor = UIColor.white
    }


    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        if firstSelection == 0 && secondSelection == 0 {
            paintBucket.backgroundColor = UIColor.red
        }
        if firstSelection == 1 && secondSelection == 1 {
            paintBucket.backgroundColor = UIColor.yellow
        }
        if firstSelection == 2 && secondSelection == 2 {
            paintBucket.backgroundColor = UIColor.blue
        }
        else if (firstSelection == 0 && secondSelection == 1) || (firstSelection == 1 && secondSelection == 0) {
            paintBucket.backgroundColor = UIColor.orange
        }
        else if (firstSelection == 0 && secondSelection == 2) || (firstSelection == 2 && secondSelection == 0) {
            paintBucket.backgroundColor = UIColor.purple
        }
        else if (firstSelection == 1 && secondSelection == 2) || (firstSelection == 2 && secondSelection == 1) {
            paintBucket.backgroundColor = UIColor.green
        }
        
    }

}
