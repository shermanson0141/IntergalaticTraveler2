//
//  ViewController.swift
//  IntergalaticTraveler2
//
//  Created by Severin on 11/6/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nameOfColor = colorTextField.text!
        let NVC = segue.destination as! SecondViewController
        NVC.starColor = nameOfColor
    }
}

