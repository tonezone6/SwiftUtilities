//
//  SceneDelegate.swift
//  DeepLinking
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        guard let _ = (scene as? UIWindowScene) else { return }

        if let url = connectionOptions.urlContexts.first?.url, let route = Route(url: url) {
            handle(route)
        }
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url, let route = Route(url: url) {
            handle(route)
        }
    }
}

extension SceneDelegate {
    func handle(_ route: Route) {
        guard let tabController = window?.rootViewController as? TabBarViewController else {
            fatalError()
        }
        
        switch route {
        case .firstTab:
            tabController.showTab(.tab1)
        
        case .secondTab:
            tabController.showTab(.tab3)
        
        case .modal:
            tabController.showModal()
        }
    }
}
