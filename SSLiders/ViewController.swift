//
//  ViewController.swift
//  SSLiders
//
//  Created by Cyberjaya 7 iTrain on 11/09/2017.
//  Copyright © 2017 iTrain Asia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mySwitch: UISwitch!

    @IBOutlet var mySlider: UISlider!
    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var sliderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchChanged(_ sender: Any) {
    
        if mySwitch.isOn {
            self.mySlider.isHidden = false
            self.valueLabel.isHidden = false
            self.sliderLabel.isHidden = false
        }
        else {
            self.mySlider.isHidden = true
            self.valueLabel.isHidden = true
            self.sliderLabel.isHidden = true
        }
    
    }

    @IBAction func sliderChanged(_ sender: Any) {
    
        self.valueLabel.text = String(format: "%i", mySlider.value)
    }
}

