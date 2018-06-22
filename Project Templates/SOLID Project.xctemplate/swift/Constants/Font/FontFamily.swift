//
//  FontFamily.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: - Application's UI fonts protocol
protocol FontFamily {
    
    var fontName: String { get }
}

// MARK: - FontFamily Protocol default implementation
extension FontFamily where Self: RawRepresentable, Self.RawValue == String {
    
    var fontName: String {
        return rawValue
    }
}

// MARK: - UIFont extension for application's UI fonts
extension UIFont {
    
    enum Size: CGFloat {
        case small  = 10
        case lite   = 12
        case medium = 14
        case normal = 16
        case big    = 20
        case extra  = 24
    }
    
    convenience init?(_ fontFamily: FontFamily, size: UIFont.Size) {
        self.init(name: fontFamily.fontName, size: size.rawValue)
    }
    
    convenience init?(_ fontFamily: FontFamily, size: CGFloat) {
        self.init(name: fontFamily.fontName, size: size)
    }
}

