//
//  ConnectorEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class ConnectorEntity: Object {
    @objc dynamic var locationID: String = ""
    @objc dynamic var type: String = ""
    @objc dynamic var power: Double = 0.0
    @objc dynamic var current: String = ""
    @objc dynamic var stationID: String = ""
    @objc dynamic var serverId: String = ""
    @objc dynamic var evseNumber: Int = 0
    @objc dynamic var number: Int = 0
    @objc dynamic var status: String = ""
    @objc dynamic var statusUpdatedAt: Date = Date()
    @objc dynamic var operational: Bool = false
    @objc dynamic var parking: ParkingEntity? = nil
    @objc dynamic var feePerMinute: Int = 0
    @objc dynamic var stationNumber: Int = 0
}
