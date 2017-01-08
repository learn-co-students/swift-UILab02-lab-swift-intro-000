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
    
    @IBOutlet weak var colorPickYourNose: UISegmentedControl!
    @IBOutlet weak var colorPickYourFriendsNose: UISegmentedControl!
    @IBOutlet weak var mrBucket: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorPickYourNose.setTitle("Red", forSegmentAt: 0)
        colorPickYourNose.setTitle("Yellow", forSegmentAt: 1)
        colorPickYourNose.setTitle("Blue", forSegmentAt: 2)
        colorPickYourFriendsNose.setTitle("Red", forSegmentAt: 0)
        colorPickYourFriendsNose.setTitle("Yellow", forSegmentAt: 1)
        colorPickYourFriendsNose.setTitle("Blue", forSegmentAt: 2)
    }
    
/*
    func mixColors(_ sender1: UISegmentedControl,_ sender2: UISegmentedControl) -> UIColor {
        
        
        }
    }
  */
    
    @IBAction func disregardBeatHappening () {
        
        let first = colorPickYourNose.titleForSegment(at: colorPickYourNose.selectedSegmentIndex)
        let second = colorPickYourFriendsNose.titleForSegment(at: colorPickYourFriendsNose.selectedSegmentIndex)
        
        switch (first, second) {
        case ("Red"?, "Red"?) , (nil, "Red"?), ("Red"?, nil):
            mrBucket.backgroundColor = UIColor.red
        case ("Red"?, "Yellow"?), ("Yellow"?, "Red"?):
            mrBucket.backgroundColor =  UIColor.orange
        case ("Red"?, "Blue"?), ("Blue"?, "Red"?):
            mrBucket.backgroundColor =  UIColor.purple
        case ("Yellow"?, "Yellow"?), (nil, "Yellow"?) , ("Yellow"?, nil):
            mrBucket.backgroundColor =  UIColor.yellow
        case ("Yellow"?, "Blue"?), ("Blue"?, "Yellow"?):
            mrBucket.backgroundColor =  UIColor.green
        case ("Blue"?, "Blue"?), (nil , "Blue"?), ("Blue"?, nil):
            mrBucket.backgroundColor =  UIColor.blue
        default:
            mrBucket.backgroundColor =  UIColor.white
              }
    }
}
