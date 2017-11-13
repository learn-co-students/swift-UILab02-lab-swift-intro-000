//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paintBucketImageView: UIImageView!
    @IBOutlet weak var firstSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondSegmentedControl: UISegmentedControl!
    
    
    
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
        var firstColor = firstSegmentedControl.selectedSegmentIndex
        var secondColor = secondSegmentedControl.selectedSegmentIndex
        
        
        var primaryColor1 = ""
        var primaryColor2 = ""
        
        switch firstColor {
        case 0:
            primaryColor1 = "Red"
        case 1:
            primaryColor1 = "Yellow"
        case 2:
            primaryColor1 = "Blue"
        default:
            print("error")
        }
        
        switch secondColor {
        case 0:
            primaryColor2 = "Red"
        case 1:
            primaryColor2 = "Yellow"
        case 2:
            primaryColor2 = "Blue"
        default:
            print("error")
        }
        
       paintBucketImageView.backgroundColor =  mixColors(first: primaryColor1, second: primaryColor2)
        
        
    }

}
