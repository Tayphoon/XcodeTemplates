//
//  ApplicationAssembly.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class ApplicationAssembly {
    
    static var appCoordinator: AppCoordinator = {
        let appCoordinator = LaunchAppCoordinator()
        
        appCoordinator.applicationConfigurator = ApplicationAssembly.applicationConfigurator
        appCoordinator.thirdPartyConfigurator = ApplicationAssembly.thirdPartyConfigurator
        
        return appCoordinator
    }()
    
    // MARK: - Private components
    
    private static var applicationConfigurator: ApplicationConfigurator = {
        return ApplicationConfigurator()
    }()
    
    private static var thirdPartyConfigurator: ThirdPartyConfigurator = {
        return ThirdPartyCompoundConfigurator([FabricConfigurator])
    }()
}
