//
//  RotaryWheelSector.swift
//  Rotary
//
//  Created by Robert Nash on 17/12/2017.
//  Copyright © 2017 Robert Nash. All rights reserved.
//

import Foundation

func ==<T>(lhs: RotaryWheelSector<T>, rhs: RotaryWheelSector<T>) -> Bool {
    return lhs.title == rhs.title
}

struct RotaryWheelSector<T>: Equatable where T: WheelOption {
    
    let title: String
    let wheelOption: T
    var minValue: Double = 0
    var midValue: Double = 0
    var maxValue: Double = 0
    var angleSize: Double = 0
    
    init(option: T) {
        self.title = option.wheelOptionTitle
        self.wheelOption = option
    }
    
    private func isSpecialCase(_ radians: Double) -> Bool {
        return midValue == -Double.pi && radians > 0
    }
    
    func isWithinRange(radians: Double) -> Bool {
        var r = radians
        if isSpecialCase(radians) {
            r = -r
        }
        return r > minValue && r < maxValue
    }
    
    static func angle(squashedModeEnabled: Bool, totalSectors: Int) -> Double {
        let x = squashedModeEnabled ? Double.pi : 2*Double.pi
        return x/Double(totalSectors)
    }
    
}

extension RotaryWheelSector: WheelOption {
    
    var wheelOptionTitle: String {
        return title
    }
}

extension RotaryWheelSector: CustomStringConvertible {
    
    var description: String {
        return "Index: \(String(describing: index)), Title: \(title), Min: \(minValue), Mid: \(midValue), Max: \(maxValue)"
    }
    
}
