//
//  ParkingEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class ParkingEntity: Object {
    @objc dynamic var car: Bool = false
    @objc dynamic var bike: Bool = false
}
