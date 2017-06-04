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
        
        if firstColorSegmentedControl.selectedSegmentIndex==0 && secondColorSegmentedControl.selectedSegmentIndex==0
        {
            paintBucket.backgroundColor=mixColors(first: "Red", second: "Red")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==0 && secondColorSegmentedControl.selectedSegmentIndex==1
        {
            paintBucket.backgroundColor=mixColors(first: "Red", second: "Yellow")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==0 && secondColorSegmentedControl.selectedSegmentIndex==2
        {
            paintBucket.backgroundColor=mixColors(first: "Red", second: "Blue")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==1 && secondColorSegmentedControl.selectedSegmentIndex==0
        {
            paintBucket.backgroundColor=mixColors(first: "Yellow", second: "Red")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==1 && secondColorSegmentedControl.selectedSegmentIndex==1
        {
            paintBucket.backgroundColor=mixColors(first: "Yellow", second: "Yellow")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==1 && secondColorSegmentedControl.selectedSegmentIndex==2
        {
            paintBucket.backgroundColor=mixColors(first: "Yellow", second: "Blue")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==2 && secondColorSegmentedControl.selectedSegmentIndex==0
        {
            paintBucket.backgroundColor=mixColors(first: "Blue", second: "Red")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==2 && secondColorSegmentedControl.selectedSegmentIndex==1
        {
            paintBucket.backgroundColor=mixColors(first: "Blue", second: "Yellow")
        }
        else if firstColorSegmentedControl.selectedSegmentIndex==2 && secondColorSegmentedControl.selectedSegmentIndex==2
        {
            paintBucket.backgroundColor=mixColors(first: "Blue", second: "Blue")
        }
        
    }

}
