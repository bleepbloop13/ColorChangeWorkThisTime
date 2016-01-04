//
//  ViewController.swift
//  ColorChangeWorkThisTime
//
//  Created by Baker, Rory on 1/4/16.
//  Copyright © 2016 Baker, Rory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func changeBackgroundColor(sender: UIButton)
    {
        changeColor()
    }
    
    @IBAction func changeBackground(sender: UISlider)
    {
        changeColor()
    }
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func indexChanged(sender: UISegmentedControl)
    {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            view.backgroundColor = UIColor.blueColor();
        case 1:
            view.backgroundColor = UIColor.redColor();
        default:
            break;
        }

    }
    
    
    func changeColor()
    {
        let newRed = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        let newGreen = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        let newBlue = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        
        view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

