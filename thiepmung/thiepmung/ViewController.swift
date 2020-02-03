//
//  ViewController.swift
//  thiepmung
//
//  Created by Ngoduc on 2/3/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit
import AVFoundation // thu vien he thông lam viec voi am thanh

class ViewController: UIViewController {
     var sound: AVAudioPlayer?
    @IBOutlet weak var t10: UIImageView!
    @IBOutlet weak var t9: UIImageView!
    @IBOutlet weak var t7: UIImageView!
    @IBOutlet weak var t8: UIImageView!
    @IBOutlet weak var t6: UIImageView!
    @IBOutlet weak var t5: UIImageView!
    @IBOutlet weak var bia: UIImageView!
    @IBOutlet weak var t4: UIImageView!
    @IBOutlet weak var t3: UIImageView!
    @IBOutlet weak var t2: UIImageView!
    @IBOutlet weak var t1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
        self.t1.center.y = self.t1.center.y - 300
        self.t2.center.y = self.t2.center.y - 300
        self.t3.center.y = self.t3.center.y - 400
        self.t4.center.y = self.t4.center.y - 400
        self.t5.center.y = self.t5.center.y - 500
        self.t6.center.y = self.t6.center.y - 500
        self.t7.center.y = self.t7.center.y - 500
        self.t8.center.y = self.t8.center.y - 500
              self.t9.center.y = self.t9.center.y - 700
         self.t10.center.y = self.t10.center.y - 700
        self.bia.center.y = self.bia.center.y - 500
       UIView.animate(withDuration: 8) {
                 
           self.t1.center.y = self.t1.center.y + 300
        self.t2.center.y = self.t2.center.y + 300
        self.t3.center.y = self.t3.center.y + 400
        self.t4.center.y = self.t4.center.y + 400
        self.t5.center.y = self.t5.center.y + 500
        self.t6.center.y = self.t6.center.y + 500
        self.t7.center.y = self.t7.center.y + 500
        self.t8.center.y = self.t8.center.y + 500
              self.t9.center.y = self.t9.center.y + 700
         self.t10.center.y = self.t10.center.y + 700
        self.bia.center.y = self.bia.center.y + 500
              }
    }
    func playSound() {
        let path = Bundle.main.path(forResource: "hp.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        do {
            sound = try AVAudioPlayer(contentsOf: url)
            sound?.play()
            sound?.numberOfLoops = -1
        } catch {
            print("lỗi")
        }
        
    }

}

