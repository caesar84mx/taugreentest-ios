//
//  OpeningHours.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

struct OpeningHours: Codable {
    let openNow: Bool
    let periods: [Period]

    enum CodingKeys: String, CodingKey {
        case openNow = "open_now"
        case periods
    }
}
