//
//  Page.swift
//  Stolichki
//
//  Created by Viktor Shabanov on 6/1/18.
//  Copyright © 2018 INOSTUDIO. All rights reserved.
//

import Foundation

struct Page {
    
    var limit: Int
    var page: Int
    
    init(page: Int) {
        self.limit = 200
        self.page = page
    }
}

// MARK: - QueryRepresentable
extension Page: QueryRepresentable {
    
    func toQuery() -> [String : String] {
        return ["limit" : String(limit),
                "page"  : String(page)]
    }
}
