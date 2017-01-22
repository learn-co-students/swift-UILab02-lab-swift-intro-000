//
//  ViewController.swift
//  UIFun
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paintBucket : UIImageView!
    @IBOutlet weak var aSegment : UISegmentedControl!
    @IBOutlet weak var bSegment : UISegmentedControl!
    
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
    
    func decodeColor (_ index:Int) -> String {
        switch index {
        case 0:
            return "Red"
        case 1:
            return "Yellow"
        case 2:
            return "Blue"
        default:
            return "Unknown"
        }
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        var aColor : String
        var bColor : String
        var mixedColor : UIColor
        
        aColor = decodeColor(aSegment.selectedSegmentIndex)
        bColor = decodeColor(bSegment.selectedSegmentIndex)
        
        print("aColor: " + aColor)
        print("bColor: " + bColor)
        
        mixedColor = mixColors(first: aColor, second: bColor)
        
        print("mixedColor: " + mixedColor.name)
        
        paintBucket.paintColorName = mixedColor.name
    }

}
