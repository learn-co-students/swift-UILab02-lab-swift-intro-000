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
    
    @IBOutlet weak var firstColorSegmentalControl: UISegmentedControl!
    
    @IBOutlet weak var secondColorSegmentalControl: UISegmentedControl!
    
    
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
        let colorType = [0:"Red",1:"Yellow",2:"Blue"]
        let firstColor = firstColorSegmentalControl.selectedSegmentIndex
        let secondColor = secondColorSegmentalControl.selectedSegmentIndex
        let first = colorType[firstColor]
        let second = colorType[secondColor]
        if (first != nil) && (second != nil) {
            let finalColor = mixColors(first: first!, second: second!)
            paintBucket.backgroundColor = finalColor
        }
        
    }

}
