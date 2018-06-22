//
//  PharmacyFilter.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/1/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct PharmacyFilter: Codable {
    
    var city: City?
    
    var isDayNight: Bool
    var isNearMetro: Bool
    var isNearestHour: Bool
    
    init(city: City? = nil,
         isDayNight: Bool? = nil,
         isNearMetro: Bool? = nil,
         isNearestHour: Bool? = nil) {
     
        self.city = city
        self.isDayNight = isDayNight ?? false
        self.isNearMetro = isNearMetro ?? false
        self.isNearestHour = isNearestHour ?? false
    }
}

// MARK: - QueryRepresentable
extension PharmacyFilter: QueryRepresentable {
    
    func toQuery() -> [String : String] {
        var params = ["24h"         : isDayNight.toQueryValue,
                      "nearMetro"   : isNearMetro.toQueryValue,
                      "nearestHour" : isNearestHour.toQueryValue]
        
        if let id = city?.id {
            params["cityId"] = String(id)
        }
        
        return params
    }
}
