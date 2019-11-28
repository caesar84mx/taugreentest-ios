//
//  ChargingLocationPoint.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

struct ChargingLocationPoint: Codable {
    let id: String
    let coordinates: Coordinates
    let evseStatuses: EvseStatus

    enum CodingKeys: String, CodingKey {
        case id, coordinates
        case evseStatuses = "evse_statuses"
    }
}
