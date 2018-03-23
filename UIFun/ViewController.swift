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
    
    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBOutlet weak var firstColorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColorSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //As the first segmentedController is already Selected, default it.
        paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
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
    
    func getSelectedColor (fromIndex: Int) -> String
    {
        var returnString: String = ""
        
        switch fromIndex {
        case 0:
            returnString = "Red"
        case 1:
            returnString = "Yellow"
        case 2:
            returnString = "Blue"
        default:
            returnString = "Red"
        }
        
        return returnString
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        
//        Without Using a case/if-else statements
//        let firstColor  = firstColorSegmentedControl.titleForSegment(at: firstColorSegmentedControl.selectedSegmentIndex)!
//        let secondColor = secondColorSegmentedControl.titleForSegment(at: secondColorSegmentedControl.selectedSegmentIndex)!
//
//        let backgroundColor: UIColor = self.mixColors(first: firstColor, second: secondColor)

        let firstColorIndex  = firstColorSegmentedControl.selectedSegmentIndex
        let secondColorIndex = secondColorSegmentedControl.selectedSegmentIndex
        
        let firstColor: String = self.getSelectedColor(fromIndex: firstColorIndex)
        let secondColor: String = self.getSelectedColor(fromIndex: secondColorIndex)
        
        paintBucket.backgroundColor = mixColors(first: firstColor, second: secondColor)
    }

}
