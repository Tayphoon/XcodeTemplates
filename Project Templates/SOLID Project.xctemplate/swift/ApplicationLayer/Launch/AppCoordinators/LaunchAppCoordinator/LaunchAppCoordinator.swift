//
//  LaunchAppCoordinator.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import SideMenu

final class LaunchAppCoordinator: AppCoordinator {
    
    private(set) var window: UIWindow!
    
    var applicationConfigurator: ApplicationConfigurator!
    
    var thirdPartyConfigurator: ThirdPartyConfigurator!
    
    // MARK: - AppCoordinator
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]?) -> Bool {
        let environment = Environment.development
        
        applicationConfigurator.configurate(environment)
        thirdPartyConfigurator.configurate(environment)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = createRootModule()
        window.makeKeyAndVisible()
        
        return true
    }
    
    // MARK: - Private methods
    
    private func createRootModule() -> UIViewController {
        return nil
    }
}
