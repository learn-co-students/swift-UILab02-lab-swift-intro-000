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
    
    @IBOutlet weak var paintTub: UIImageView!
    var firstColor:String = "White"
    var secondColor:String = "White"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       paintTub.backgroundColor = UIColor.white
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
        firstColor = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        
        paintTub.backgroundColor = mixColors(first: firstColor, second: secondColor)
    }

    @IBAction func colorSelected2(_ sender: UISegmentedControl) {
        secondColor = sender.titleForSegment(at: sender.selectedSegmentIndex)!
        
        paintTub.backgroundColor = mixColors(first: firstColor , second: secondColor)
    }
    
    
    
    
}
