//
//  ViewController.swift
//  slider
//
//  Created by Ngoduc on 2/3/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var phantram: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeLevel(_ sender: UISlider) {
        view1.frame = CGRect(x: 0, y: view1.frame.origin.y + view.bounds.height, width: view.bounds.width, height: view.bounds.height)
    }
    
}

