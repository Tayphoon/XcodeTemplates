//
//  ApplicationConfigurator.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ApplicationConfigurator: EnvironmentConfigurator {
    
    func configurate(_ environment: Environment) {
        setupCoreDataStack(environment)
    }
}

// MARK: - CoreData stack
fileprivate extension ApplicationConfigurator {
    
    private func setupCoreDataStack(_ environment: Environment) {
        
    }
}
