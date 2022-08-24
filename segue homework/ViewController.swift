//
//  ViewController.swift
//  segue homework
//
//  Created by Consultant on 8/23/22.
//

import UIKit

class ViewController: UIViewController {
var segue = "CLOCK"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TimeButtonPress(_ sender: Any) {
        
        performSegue(withIdentifier: segue, sender: nil)
    }
    
}

