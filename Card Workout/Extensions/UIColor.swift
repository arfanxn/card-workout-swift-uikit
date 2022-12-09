//
//  UIImage.swift
//  Card Workout
//
//  Created by Muhammad Arfan on 09/12/22.
//

import Foundation
import UIKit

extension UIColor {
    static func random(alpha : CGFloat? = nil) -> UIColor {
            return UIColor(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue:  .random(in: 0...1),
                alpha: 1.0
            )
    }
}
