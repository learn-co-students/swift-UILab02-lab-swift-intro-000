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
    
    @IBOutlet weak var firstSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var secondSegmentControl: UISegmentedControl!
    
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
        
        // TODO: Implement this function according to the instructions.
        let firstSegment = firstSegmentControl.selectedSegmentIndex
        let secondSegment = secondSegmentControl.selectedSegmentIndex
        
        if firstSegment == 0 && secondSegment == 0 {
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
        }else if (firstSegment == 0 && secondSegment == 1) || (firstSegment == 1 && secondSegment == 0){
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Yellow")
        }else if (firstSegment == 0 && secondSegment == 2) || (firstSegment == 2 && secondSegment == 0){
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Blue")
        }else if firstSegment == 1 && secondSegment == 1 {
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Yellow")
        }else if (firstSegment == 1 && secondSegment == 2) || (firstSegment == 2 && secondSegment == 1){
            paintBucket.backgroundColor = mixColors(first: "Yellow", second: "Blue")
        }else if firstSegment == 2 && secondSegment == 2 {
            paintBucket.backgroundColor = mixColors(first: "Blue", second: "Blue")
        }else {
            paintBucket.backgroundColor = UIColor.white
        }
        
    }

}
