//
//  Period.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

struct Period: Codable {
    let day: Int
    let opensAt, closesAt: String

    enum CodingKeys: String, CodingKey {
        case day
        case opensAt = "opens_at"
        case closesAt = "closes_at"
    }
}
