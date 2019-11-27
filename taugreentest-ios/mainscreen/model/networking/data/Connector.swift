//
//  ConnectorRaw.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

// MARK: - Connector
struct Connector: Codable {
    let locationID, type: String
    let power: Double
    let current, stationID, id: String
    let evseNumber, number: Int
    let status: String
    let statusUpdatedAt: Date
    let operational: Bool
    let parking: Parking
    let feePerMinute, stationNumber: Int

    enum CodingKeys: String, CodingKey {
        case locationID = "location_id"
        case type, power, current
        case stationID = "station_id"
        case id
        case evseNumber = "evse_number"
        case number, status
        case statusUpdatedAt = "status_updated_at"
        case operational, parking
        case feePerMinute = "fee_per_minute"
        case stationNumber = "station_number"
    }
}
