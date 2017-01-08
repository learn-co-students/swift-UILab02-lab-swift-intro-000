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
    
    @IBOutlet weak var bret: UISegmentedControl!
    @IBOutlet weak var heather: UISegmentedControl!
    @IBOutlet weak var calvin: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bret.setTitle("Red", forSegmentAt: 0)
        bret.setTitle("Yellow", forSegmentAt: 1)
        bret.setTitle("Blue", forSegmentAt: 2)
        heather.setTitle("Red", forSegmentAt: 0)
        heather.setTitle("Yellow", forSegmentAt: 1)
        heather.setTitle("Blue", forSegmentAt: 2)
    }
    
/*
    func mixColors(_ sender1: UISegmentedControl,_ sender2: UISegmentedControl) -> UIColor {
        
     i got rid of this because i wanted to do everything in one function
     
        }
    }
  */
    
    @IBAction func disregardBeatHappening () {
        
        //they have a B side called "don't mix the colors"
        
        let first = bret.titleForSegment(at: bret.selectedSegmentIndex)!
        let second = heather.titleForSegment(at: heather.selectedSegmentIndex)!
        
        switch (first, second) {
        case ("Red", "Red"):
            calvin.backgroundColor = UIColor.red
        case ("Red", "Yellow"), ("Yellow", "Red"):
            calvin.backgroundColor =  UIColor.orange
        case ("Red", "Blue"), ("Blue", "Red"):
            calvin.backgroundColor =  UIColor.purple
        case ("Yellow", "Yellow"):
            calvin.backgroundColor =  UIColor.yellow
        case ("Yellow", "Blue"), ("Blue", "Yellow"):
            calvin.backgroundColor =  UIColor.green
        case ("Blue", "Blue"):
            calvin.backgroundColor =  UIColor.blue
        default:
            calvin.backgroundColor =  UIColor.white
              }
    }
}
