//
//  Localization.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

struct Localization {
    
    struct General {

        static var ok: String = {
            return "general.ok".localized()
        }()
        static var no: String = {
            return "general.no".localized()
        }()
        static var yes: String = {
            return "general.yes".localized()
        }()

        static var ready: String = {
            return "general.ready".localized()
        }()
        static var further: String = {
            return "general.further".localized()
        }()
        static var `continue`: String = {
            return "general.continue".localized()
        }()
    }
}
