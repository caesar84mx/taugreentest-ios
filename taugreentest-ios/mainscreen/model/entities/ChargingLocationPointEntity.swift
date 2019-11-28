//
//  ChargingLocationPointEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class ChargingLocationPointEntity: Object {
    @objc dynamic var internalId: String = ""
    @objc dynamic var coordinates: CoordinatesEntity? = nil
    @objc dynamic var evseStatuses: EvseStatusEntity? = nil
}
