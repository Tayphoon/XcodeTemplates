//
//  Environment.swift
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

enum Environment: String, Equatable {

    case development
    case production
    
    var name: String {
        return self.rawValue.capitalized
    }
}
