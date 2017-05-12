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
        paintBucket.backgroundColor = UIColor.red
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
        
        // TODO: Implement this function according to the instructions.
        let colors = convertIndicesToColors(firstColorSegmentedControl.selectedSegmentIndex, secondColorSegmentedControl.selectedSegmentIndex)
        paintBucket.backgroundColor = mixColors(first: colors[0], second: colors[1])
        
    }
    
    func convertIndicesToColors(_ first: Int, _ second: Int) -> [String] {
        var colors = [String]()
        for color in [first, second] {
            switch color {
            case 0 :
                colors.append("Red")
            case 1:
                colors.append("Yellow")
            case 2:
                colors.append("Blue")
            default:
                colors.append("White")
            }
        }
        return colors
    }
    

}
