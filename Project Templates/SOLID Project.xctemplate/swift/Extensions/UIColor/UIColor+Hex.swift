//
//  UIColor+Hex.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(hex: Int, alpha: CGFloat? = nil) {
        self.init(((hex >> 16) & 0xFF),
                  ((hex >> 8)  & 0xFF),
                   (hex        & 0xFF),
                   alpha)
    }
    
    convenience init(_ red: Int,
                     _ green: Int,
                     _ blue: Int,
                     _ alpha: CGFloat? = nil) {
        self.init(red:   CGFloat(red)   / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue:  CGFloat(blue)  / 255.0,
                  alpha: alpha ?? 1.0)
    }
}
