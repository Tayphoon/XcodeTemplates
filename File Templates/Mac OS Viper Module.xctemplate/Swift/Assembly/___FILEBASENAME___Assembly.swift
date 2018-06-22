//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Cocoa

/**
 *  Assembly
 *	
 */

class ___VARIABLE_viperModuleName:identifier___Assembly {

    static func createModule() -> NSWindowController {
        let view = ___VARIABLE_viperModuleName:identifier___Controller()
        let interactor = ___VARIABLE_viperModuleName:identifier___Interactor()
        let presenter = ___VARIABLE_viperModuleName:identifier___Presenter()
        let router = ___VARIABLE_viperModuleName:identifier___Router()
        
        view.output = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        router.transitionHandler = view
        
        return view
    }
}
