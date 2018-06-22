//
//  Sale.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/1/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct Sale: Codable {
    
    let id: Int
    
    let title: String
    let imageURL: URL
    let htmlContent: String
    
    let startDate: Date
    let endDate: Date
    
    let pharmaciesCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "name"
        case imageURL = "image"
        case htmlContent = "details"
        case startDate = "dateStart"
        case endDate = "dateEnd"
        case pharmaciesCount = "storesCount"
    }
}
