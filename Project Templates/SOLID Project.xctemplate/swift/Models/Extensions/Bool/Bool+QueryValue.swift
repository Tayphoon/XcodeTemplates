//
//  Bool+QueryValue.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/4/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

extension Bool {
    
    var toQueryValue: String {
        return self ? "1" : "0"
    }
}
