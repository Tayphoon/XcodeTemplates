//
//  UIViewController+TransitionAnimator.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension UIViewController {
    
    fileprivate struct AssociatedKeys {
        
        static var transitionAnimatorAssociated = "TransitionAnimatorAssociated"
    }
    
    var transitionAnimator: UIViewControllerTransitioningDelegate {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.transitionAnimatorAssociated) as! UIViewControllerTransitioningDelegate
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.transitionAnimatorAssociated, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            self.transitioningDelegate = newValue
        }
    }
}
