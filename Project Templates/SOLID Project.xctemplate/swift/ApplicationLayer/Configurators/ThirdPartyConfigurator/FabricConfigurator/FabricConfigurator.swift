//
//  FabricConfigurator.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Fabric
import Crashlytics

class FabricConfigurator: ThirdPartyConfigurator {
    
    func configurate(_ environment: Environment) {
        Fabric.with([Crashlytics.self])
    }
}
