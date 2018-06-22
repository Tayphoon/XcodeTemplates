//
//  City.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/1/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct City: Codable {
    
    let id: Int
    let name: String
    
    let region: Region
    let coordinates: Сoordinates
}
