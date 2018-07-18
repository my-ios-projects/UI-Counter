//
//  ViewController.swift
//  counter
//
//  Created by Taha Magdy on 7/18/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var count = 0 // a counter
    
    // to be a reference to the label initialized in viewDidLoad()
    // so that we can use it from outside viewDidLoad()
    var label: UILabel!
    
    

    /*
     * 1 Draw some UI elements.
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // A) Creating a UIlabel
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150,        // Label position
                             width: 60, height: 60) // Label dimentions
        // Setting its text to hold "0"
        label.text = "0"
        // # Until now; now lables are shown on the view, you need to add them by yourself.
        view.addSubview(label)

        
        // @outlet
        // Making the label defined in the class
        // as a reference to the label defined in the viewDidLoad.
        // So we can control the label of viewDidLoad from outside
        self.label = label
        
        
        
        // B) Creating a UIButton
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250,
                              width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button)
        
        // @action
        // Adding target/action to the button
        button.addTarget(self, action: #selector(ViewController.increaseCount),
                         for: UIControlEvents.touchUpInside)
    
    } // end viewDidLoad()

    
    @objc func increaseCount(){
        self.count += 1
        // so self.label property is called outlet.
        self.label.text = "\(self.count)"
    } // end increaseCount()


} // end viewController

