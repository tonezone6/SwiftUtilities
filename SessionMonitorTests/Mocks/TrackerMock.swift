//
//  SessionTrackerMock.swift
//  SessionTrackerTests
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import Foundation
import SessionTracker

class TrackerMock: SessionTracking {
    private(set) var activeSession: Bool = false

    func startSession() {
        activeSession = true
    }
    
    func stopCurrentSession() {
        activeSession = false
    }
}
