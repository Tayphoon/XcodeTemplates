//
//  WorkTime.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/1/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct WorkTime: Codable {
    
    let isDayNight: Bool
    let schedule: String
    
    enum CodingKeys: String, CodingKey {
        case isDayNight = "24h"
        case schedule = "fulltext"
    }
}
