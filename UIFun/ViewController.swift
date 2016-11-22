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
    @IBOutlet weak var firstColourSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondColourSegmentedControl: UISegmentedControl!
    
    
    
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
    
    func chooseColourFromIndex(selectedIndex: Int) -> String {
        var selectedColour: String = ""
        
        switch selectedIndex {
        case 0:
            selectedColour = "Red"
        case 1:
            selectedColour = "Yellow"
        case 2:
            selectedColour = "Blue"
        default:
            selectedColour = "White"
            
        }
        
        return selectedColour
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        // TODO: Implement this function according to the instructions.
        
        let firstSelection = firstColourSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColourSegmentedControl.selectedSegmentIndex
        var firstColour: String = ""
        var secondColour: String = ""
        
        firstColour = chooseColourFromIndex(selectedIndex: firstSelection)
        secondColour = chooseColourFromIndex(selectedIndex: secondSelection)
        
        paintBucket.backgroundColor = mixColors(first: firstColour, second: secondColour)
    }

}
