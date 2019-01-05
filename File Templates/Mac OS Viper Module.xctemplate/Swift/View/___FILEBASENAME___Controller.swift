//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Cocoa

/**
 *  View
 *
 */
class ___VARIABLE_viperModuleName:identifier___Controller: NSWindowController {

	var output: ___VARIABLE_viperModuleName:identifier___ViewOutput?

    override var window: NSWindow? {
        willSet {

            output?.setupView()
        }
    }
}

extension ___VARIABLE_viperModuleName:identifier___Controller:  ___VARIABLE_viperModuleName:identifier___ViewInput {
