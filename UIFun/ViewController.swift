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
        paintBucket.backgroundColor = UIColor.brown
    }

    func mixColors(first: String, second: String) -> UIColor {
        
        switch (first, second) {
        case ("Red", "Red"):
            paintBucket.backgroundColor = UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
           paintBucket.backgroundColor = UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            paintBucket.backgroundColor = UIColor.purple
        case ("Yellow", "Yellow"):
            paintBucket.backgroundColor = UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            paintBucket.backgroundColor = UIColor.green
        case ("Blue", "Blue"):
            paintBucket.backgroundColor = UIColor.blue
        default:
            return UIColor.white
        }
       return UIColor.white
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        switch (firstSelection, secondSelection){
        case (0,0):
            mixColors(first: "Red", second: "Red")
            print ("Red, Red")
        case (0,1), (1,0):
            mixColors(first: "Red", second: "Yellow")
        case (0,2), (2,0):
            mixColors(first: "Red", second: "Blue")
        case (1,1):
            mixColors(first: "Yellow", second: "Yellow")
        case (1,2), (2,1):
            mixColors(first: "Yellow", second: "Blue")
        case (2,2):
            mixColors(first: "Blue", second: "Blue")
            
        default:
            break
        }
    }

}
