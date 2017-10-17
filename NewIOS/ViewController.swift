//
//  ViewController.swift
//  NewIOS
//
//  Created by Wing Kei Leung on 2017-10-15.
//  Copyright © 2017 Wing Kei Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dateLabel.text = getDateString()
        
        let timer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(updateTime),
                                         userInfo: nil,
                                         repeats: true
        )
        timer.fire()
    }

    func getDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM, dd, yyyy"
        return formatter.string(from: Date())
    }

    @objc func updateTime() {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        
        timeLabel.text = formatter.string(from: Date())
    }
    
}

