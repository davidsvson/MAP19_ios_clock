//
//  ViewController.swift
//  ClockApp
//
//  Created by David Svensson on 2020-01-09.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTimeLabel()
        timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(ViewController.updateTimeLabel), userInfo: nil, repeats: true)
      
    }
    
    @objc func updateTimeLabel() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        let timeString = formatter.string(from: date)
               
        timeLabel.text = timeString
    }
    
    
    deinit {
//        if timer != nil {
//            timer!.invalidate()
//        }
        
        if let timer = self.timer {
            timer.invalidate()
        }
        
   //     timer?.invalidate()
    }


}

