//
//  MainModel.swift
//  ThinReactiveLayer
//
//  Copyright © 2020 tonezone. All rights reserved.

import Foundation

struct MainModel {
    private var labelShown = false
    
    var displayText: Observable<String?>
    var buttonTitle: Observable<String>
    
    init() {
        displayText = Observable(value: nil)
        buttonTitle = Observable(value: "Show label")
    }
    
    mutating func buttonTapped() {
        labelShown.toggle()
        
        if labelShown {
            displayText.update(with: "Hello World!")
            buttonTitle.update(with: "Hide label")
        } else {
            displayText.update(with: nil)
            buttonTitle.update(with: "Show label")
        }
    }
}

