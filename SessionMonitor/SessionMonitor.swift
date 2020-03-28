//
//  SessionMonitor.swift
//  SessionTest
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 Udevoffice. All rights reserved.
//

import UIKit

public protocol SessionTracking {
    func startSession()
    func stopCurrentSession()
}

final class SessionMonitor {
    private let tracker: SessionTracking

    init(tracker: SessionTracking) {
        self.tracker = tracker
        startObserving()
    }

    private func startObserving() {
        let center = NotificationCenter.default
        
        center.addObserver(
            self, selector: #selector(startSession), name: UIApplication.willEnterForegroundNotification, object: nil)
        
        center.addObserver(
            self, selector: #selector(endSession), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    @objc private func startSession() {
        tracker.startSession()
    }

    @objc private func endSession() {
        tracker.stopCurrentSession()
    }
}
