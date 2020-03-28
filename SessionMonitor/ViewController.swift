//
//  ViewController.swift
//  SessionTracker
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var monitor: SessionMonitor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tracker = Tracker()
        monitor = SessionMonitor(tracker: tracker)
    }
}

