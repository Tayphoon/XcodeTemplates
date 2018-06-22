//
//  Font.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum Font: String {
    case RobotoRegular = "Roboto-Regular"
    case RobotoMedium = "Roboto-Medium"
    case RobotoBold = "Roboto-Bold"
    case RobotoThin = "Roboto-Thin"
    
    func of(size: CGFloat) -> UIFont {
        return UIFont(name: self.rawValue, size: size)!
    }
}
