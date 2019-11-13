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
        if let data = colorTextField.text, data == "Blue" || data == "Red" {
            let NVC = segue.destination as! SecondViewController
            NVC.starColor = data
        } else {
            
            let message = "You will not be transported through the wormhole since you could not follow simple directions."
            
            let alert = UIAlertController (title: "Error", message: message, preferredStyle: .alert)
            let button = UIAlertAction (title: "Ok", style: .default, handler: nil)
            alert.addAction(button)
            present(alert, animated: true, completion: nil)
            
        }
        
    }
}

