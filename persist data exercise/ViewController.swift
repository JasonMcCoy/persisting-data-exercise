//
//  ViewController.swift
//  persist data exercise
//
//  Created by Jason McCoy on 8/4/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var favColorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let color = UserDefaults.standard.value(forKey: "color") as? String {
            favColorLabel.text = "Favorite Color: \(color)"
        } else {
            favColorLabel.text = "Pick either Red, Green or Blue!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func redBtn(_ sender: AnyObject) {
        
        favColorLabel.text = "Favorite Color: Red"
        UserDefaults.standard.setValue("Red", forKey: "color")
        UserDefaults.standard.synchronize()
        
    }
    
    @IBAction func greenBtn(_ sender: AnyObject) {
        
        favColorLabel.text = "Favorite Color: Green"
        UserDefaults.standard.setValue("Green", forKey: "color")
        UserDefaults.standard.synchronize()
        
    }
    
    @IBAction func blueBtn(_ sender: AnyObject) {
        
        favColorLabel.text = "Favorite Color: Blue"
        UserDefaults.standard.setValue("Blue", forKey: "color")
        UserDefaults.standard.synchronize()
        
    }
    
}

