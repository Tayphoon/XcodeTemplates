//
//  ViperViewController.swift
//  Stolichki
//
//  Created by Tayphoon on 01/04/2018.
//  Copyright © 2018 Inostudio. All rights reserved.
//

import UIKit

protocol ViperController: ViperModuleWithInput {
    
    associatedtype T
    
    var output: T? { get set}
}

extension ViperController where Self: UIViewController {
    
    var moduleInput: ViperModuleInput? {
        get {
            return output as? ViperModuleInput
        }
    }
}

class ViperViewController<T>: UIViewController, ViperModuleWithInput {
    
    var output: T?

    var moduleInput: ViperModuleInput? {
        get {
            return output as? ViperModuleInput
        }
    }
}
