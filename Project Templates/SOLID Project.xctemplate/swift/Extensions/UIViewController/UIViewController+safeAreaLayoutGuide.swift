//
//  UIViewController+safeAreaLayoutGuide.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

extension UIViewController {
    
    /// Use safeAreaLayoutGuide on iOS 11+, otherwise default to dummy layout guide
    var safeAreaLayoutGuide: UILayoutGuide {
        if #available(iOS 11, *) {
            return view.safeAreaLayoutGuide
        }
        else if let layoutGuide = self.associatedLayoutGuide {
            return layoutGuide
        }
        else {
            let layoutGuide = UILayoutGuide()
            view.addLayoutGuide(layoutGuide)
            NSLayoutConstraint.activate([layoutGuide.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor),
                                         layoutGuide.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor),
                                         layoutGuide.leftAnchor.constraint(equalTo: view.leftAnchor),
                                         layoutGuide.rightAnchor.constraint(equalTo: view.rightAnchor)])
            self.associatedLayoutGuide = layoutGuide
            
            return layoutGuide
        }
    }

    fileprivate struct AssociatedKeys {
        static var layoutGuide = "safeAreaLayoutGuide"
    }

    fileprivate var associatedLayoutGuide: UILayoutGuide? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.layoutGuide) as? UILayoutGuide
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self, &AssociatedKeys.layoutGuide,
                    newValue as UILayoutGuide?,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }
}
