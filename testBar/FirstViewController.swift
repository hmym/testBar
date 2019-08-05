//
//  FirstViewController.swift
//  testBar
//
//  Created by 濱山知香 on 2019/08/05.
//  Copyright © 2019 濱山知香. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {
//    var countNumber: Int = 0
    @IBOutlet weak var timeText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timeText.text = "TODAY"
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FirstViewController.timerUpdate), userInfo: nil, repeats: true)
    }
    @objc func timerUpdate() {
    
//        countNumber += 1
        let date: Date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy/MM/dd HH:mm:ss"
        timeText.text = format.string(from: date)
        

//      timeText.text = Date.stringFromDate(date: Date(), format: "yyyy/MM/dd HH:mm:ss")
    }

}

