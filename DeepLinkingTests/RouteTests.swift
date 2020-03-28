//
//  DeepLinkingTests.swift
//  DeepLinkingTests
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import XCTest
@testable import DeepLinking

class DeepLinkingTests: XCTestCase {
    func testFirstTabSceneRoute() throws {
        let url = try XCTUnwrap(URL(string: "com.deeplinking.test://tab1"))
        let route = Route(url: url)
        
        XCTAssertEqual(route, .firstTab)
    }
    
    func testSecondTabSceneRoute() throws {
        let url = try XCTUnwrap(URL(string: "com.deeplinking.test://tab2"))
        let route = Route(url: url)
        
        XCTAssertEqual(route, .secondTab)
    }
    
    func testModalSceneRoute() throws {
        let url = try XCTUnwrap(URL(string: "com.deeplinking.test://modal"))
        let route = Route(url: url)
        
        XCTAssertEqual(route, .modal)
    }
}
