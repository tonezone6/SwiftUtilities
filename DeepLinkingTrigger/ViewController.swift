//
//  ViewController.swift
//  DeepLinkingTrigger
//
//  Created by Alex on 28/03/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBAction func openFirstTab(_ sender: Any) {
        handle(url: "com.deeplinking.test://tab1")
    }
    
    @IBAction func openSecondTab(_ sender: Any) {
        handle(url: "com.deeplinking.test://tab2")
    }
    
    @IBAction func openModal(_ sender: Any) {
        handle(url: "com.deeplinking.test://modal")
    }
    
    private func handle(url: String) {
        guard let url = URL(string: url) else { fatalError() }
        UIApplication.shared.open(url)
    }
}

