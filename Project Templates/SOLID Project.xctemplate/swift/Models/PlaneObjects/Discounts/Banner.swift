//
//  Banner.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/4/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct Banner: Codable {
    
    let id: Int
    let saleId: Int
    
    let title: String
    let imageURL: URL
    
    let startDate: Date
    let endDate: Date
    
    let linkURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case saleId = "saleId"
        case title = "title"
        case imageURL = "image"
        case startDate = "dateStart"
        case endDate = "dateEnd"
        case linkURL = "link"
    }
}
