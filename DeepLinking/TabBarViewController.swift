//
//  TabViewController.swift
//  DeepLinkingTest
//
//  Created by Alex on 28/01/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import UIKit

final class TabBarViewController: UITabBarController {
    enum Tab: Int {
        case tab1 = 0
        case tab2 = 1
        case tab3 = 2
    }
    
    func showTab(_ tab: Tab) {
        selectedIndex = tab.rawValue
    }
    
    func showModal() {
        let modal = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ModalViewController")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.present(modal, animated: true, completion: nil)
        }
    }
}
