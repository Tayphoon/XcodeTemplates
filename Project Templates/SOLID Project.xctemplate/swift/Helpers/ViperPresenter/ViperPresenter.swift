//
//  ViperPresenter.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/13/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

class ViperPresenter<T>: ViperModuleInput {
    
    private weak var _moduleOutput: AnyObject?
    
    public var moduleOutput: T? {
        get {
            return _moduleOutput as? T
        }
    }
    
    func setModuleOutput(_ moduleOutput: ViperModuleOutput) {
        _moduleOutput = moduleOutput as? T as AnyObject
    }
}
