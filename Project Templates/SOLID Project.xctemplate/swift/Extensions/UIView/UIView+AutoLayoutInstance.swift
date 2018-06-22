//
//  UIView+AutoLayoutInstance.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension UIView {
    
    static func autoLayoutInstance() -> Self {
        let autoLayoutView = self.init()
        autoLayoutView.translatesAutoresizingMaskIntoConstraints = false

        return autoLayoutView
    }
}
