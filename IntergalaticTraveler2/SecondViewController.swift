//
//  SecondViewController.swift
//  IntergalaticTraveler2
//
//  Created by Severin on 11/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var starImageView: UIImageView!
    var starColor: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let randomNumber = Int.random(in:1...3)
        let myImage = UIImage(named: "\(starColor)\(randomNumber)")
        print("\(starColor)\(randomNumber)")
        
        starImageView.image = myImage
    }
    

    

}
