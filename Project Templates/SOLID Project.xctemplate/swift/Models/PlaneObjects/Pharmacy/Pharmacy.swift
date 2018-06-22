//
//  Pharmacy.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/1/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct Pharmacy: Codable {
    
    let id: Int
    let name: String
    let description: String?
    
    let email: String
    let phoneNumber: String
    
    let address: String
    let coordinates: Сoordinates
    
    let metro: Metro
    let workTime: WorkTime
}

// MARK: - Equatable
extension Pharmacy: Equatable {
    
    static func == (lhs: Pharmacy, rhs: Pharmacy) -> Bool {
        return lhs.id == rhs.id
    }
}
