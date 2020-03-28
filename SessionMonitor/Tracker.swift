//
//  Tracker.swift
//  SessionTest
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 Udevoffice. All rights reserved.
//

import Foundation

final class Tracker: SessionTracking {
    func startSession() {
        print("Session is active!")
    }

    func stopCurrentSession() {
        print("Session ended")
    }
}
