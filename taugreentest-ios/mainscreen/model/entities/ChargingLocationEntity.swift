//
//  ChargingLocationEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class ChargingLocationEntity: Object {
    @objc dynamic var serverId: String = ""
    @objc dynamic var ownerID: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var country: String = ""
    @objc dynamic var city: String = ""
    @objc dynamic var street: String = ""
    @objc dynamic var postalCode: String = ""
    @objc dynamic var coordinates: CoordinatesEntity? = nil
    @objc dynamic var rating: Double = 0.0
    @objc dynamic var createdAt: Date = Date()
    @objc dynamic var openingHours: OpeningHoursEntity? = nil
    @objc dynamic var numberOfStations: Int = 0
    @objc dynamic var evseStatuses: EvseStatusEntity? = nil
    var connectors = List<ConnectorEntity>()
    var photos = List<PhotoEntity>()
    @objc dynamic var updatedAt: Date = Date()
}
