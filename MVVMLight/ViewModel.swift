//
//  ViewModel.swift
//  MVVMLight
//
//  Created by Ian Bailey on 6/8/2022.
//

import Foundation


class LightViewModel: ObservableObject {
    @Published private var lightBulb = Light(on: false)
    
    func toggle() {
        lightBulb.on = !lightBulb.on
    }
    
    var isOn: Bool { return lightBulb.on }
    
}
