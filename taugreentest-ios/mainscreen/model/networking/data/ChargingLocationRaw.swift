//
//  ChargingLocationRaw.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

// MARK: - ChargingLocation
struct ChargingLocation: Codable {
    let id, ownerID, name, country: String
    let city, street, postalCode: String
    let coordinates: Coordinates
    let rating: Double
    let createdAt: Date
    let openingHours: OpeningHours
    let numberOfStations: Int
    let evseStatuses: EvseStatuses
    let connectors: [Connector]
    let photos: [Photo]
    let updatedAt: Date

    enum CodingKeys: String, CodingKey {
        case id
        case ownerID = "owner_id"
        case name, country, city, street
        case postalCode = "postal_code"
        case coordinates, rating
        case createdAt = "created_at"
        case openingHours = "opening_hours"
        case numberOfStations = "number_of_stations"
        case evseStatuses = "evse_statuses"
        case connectors, photos
        case updatedAt = "updated_at"
    }
}
