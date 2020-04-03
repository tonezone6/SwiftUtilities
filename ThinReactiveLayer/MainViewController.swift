//
//  ViewController.swift
//  ThinReactiveLayer
//
//  Created by Alex on 03/04/2020.
//  Copyright © 2020 tonezone. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var model = MainModel()

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    @IBAction func mainButtonTapped(_ sender: Any) {
        model.buttonTapped()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model.displayText.addObserver(self) { (vc, text) in
            vc.mainLabel.text = text
        }
        
        model.buttonTitle.addObserver(self) { (vc, title) in
            vc.mainButton.setTitle(title, for: .normal)
        }
    }
}


