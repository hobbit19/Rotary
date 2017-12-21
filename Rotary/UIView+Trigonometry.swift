//
//  UIView+Trigonometry.swift
//  Rotary
//
//  Created by Robert Nash on 17/12/2017.
//  Copyright © 2017 Robert Nash. All rights reserved.
//

import UIKit

extension UIView {
  
  var radians: Double {
    return Double(atan2f(Float(transform.b), Float(transform.a)))
  }
  
}
