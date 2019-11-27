//
//  Photo.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

struct Photo: Codable {
    let id: String
    let url: String
    let createdAt: Date

    enum CodingKeys: String, CodingKey {
        case id, url
        case createdAt = "created_at"
    }
}
