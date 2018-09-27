//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBAction func firstColorSegmentedControl(_ sender: UISegmentedControl) {
      var firstSelection = sender.selectedSegmentIndex
    }
    
    
    
    @IBAction func secondColorSegmentedControl(_ sender: UISegmentedControl) {
     
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
       
        
    }

}
