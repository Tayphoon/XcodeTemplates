//
//  ThirdPartyCompoundConfigurator.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ThirdPartyCompoundConfigurator: ThirdPartyConfigurator {
    
    private(set) var configurators: [ThirdPartyConfigurator]
    
    init(_ configurators: [ThirdPartyConfigurator]) {
        self.configurators = configurators
    }
    
    func configurate(_ environment: Environment) {
        for configurator in configurators {
            configurator.configurate(environment)
        }
    }
}
