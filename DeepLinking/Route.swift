//
//  Route.swift
//  DeepLinkingTest
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import Foundation

enum Route {
    case firstTab
    case secondTab
    case modal
    
    static var scheme: String {
        "com.deeplinking.test"
    }
    
    init?(url: URL) {
        switch url.absoluteString {
        case "\(Route.scheme)://tab1":
            self = .firstTab
      
        case "\(Route.scheme)://tab2":
            self = .secondTab
        
        case "\(Route.scheme)://modal":
            self = .modal
        
        default:
            return nil
        }
    }
}
