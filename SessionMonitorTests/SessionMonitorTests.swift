//
//  SessionTrackerTests.swift
//  SessionTrackerTests
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import XCTest
@testable import SessionTracker

class SessionTrackerTests: XCTestCase {
    var monitor: SessionMonitor!

    func testMonitorEnteringForeground() {
        let tracker = TrackerMock()
        monitor = SessionMonitor(tracker: tracker)
        
        NotificationCenter.default.post(
            name: UIApplication.willEnterForegroundNotification, object: nil)
        
        XCTAssertTrue(tracker.activeSession)
    }
    
    func testMonitorEnteringBackground() {
        let tracker = TrackerMock()
        monitor = SessionMonitor(tracker: tracker)
        
        NotificationCenter.default.post(
            name: UIApplication.didEnterBackgroundNotification, object: nil)
        
        XCTAssertFalse(tracker.activeSession)
    }
}
