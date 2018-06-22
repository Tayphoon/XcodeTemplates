//
//  Metro.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/1/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct Metro: Codable {
    
    let name: String
    let hexColor: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case hexColor = "сolor"
    }
}
