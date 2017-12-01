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
    @IBOutlet weak var segment1: UISegmentedControl!
    @IBOutlet weak var segment2: UISegmentedControl!
    @IBOutlet weak var bucket: UIImageView!
    
    func getcolorfromint(pos: Int) -> String {
        switch pos {
        case 0:
            return "Red"
        case 1:
            return "Yellow"
        case 2:
            return "Blue"
        default: return ""
        }
    }
    
    func getColor(num: Int) -> String {
        switch num {
            case 1:
            return getcolorfromint(pos: segment1.selectedSegmentIndex)
            case 2:
            return getcolorfromint(pos: segment2.selectedSegmentIndex)
            default:
            return ""
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
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

    func setColor() {
        let color = mixColors(first: getColor(num: 1), second: getColor(num: 2))
        bucket.backgroundColor = color
    }
    
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        setColor()
    }

}
