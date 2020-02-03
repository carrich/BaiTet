//
//  WaterViewController.swift
//  slider
//
//  Created by Ngoduc on 2/3/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class WaterViewController: UIViewController {

    @IBOutlet weak var WaterView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func changeLevel(_ sender: UISlider) {
        WaterView.frame = CGRect(x: 0, y: WaterView.frame.origin.y + CGFloat(sender.value*8) , width: view.bounds.width, height: view.bounds.height)
    }
}
