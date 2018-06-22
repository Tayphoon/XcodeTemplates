//
//  UIViewController+ChildController.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addChild(controller: UIViewController, in view: UIView) {
        controller.willMove(toParentViewController: self)
        
        addChildViewController(controller)
        controller.beginAppearanceTransition(true, animated: false)
        view.addSubview(controller.view)
        controller.endAppearanceTransition()
        
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        controller.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        controller.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        controller.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        controller.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        controller.didMove(toParentViewController: self)
    }
}
