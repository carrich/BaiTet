//
//  ViewController.swift
//  MophongTime
//
//  Created by Ngoduc on 2/3/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var minut: UITextField!
    @IBOutlet weak var hour: UITextField!
    var time: Timer!
    var count: Int = 0
    var gio: Int = 0, phut: Int = 0, giay: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tranfer), userInfo: nil, repeats: true)
    }

   @objc func tranfer(){
          giay += 1
        if giay == 60 {
        phut += 1
        giay = 0
    }
    if phut == 60 {
        gio += 1
        phut = 0
    }
             second.text = String(giay)
             minut.text = String(phut)
             hour.text = String(gio)
           }
           
    @IBAction func start(_ sender: Any) {
         time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tranfer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        time.invalidate()
    }
    @IBAction func reset(_ sender: Any) {
        gio = 0
        phut = 0
        giay = 0
    }
}

