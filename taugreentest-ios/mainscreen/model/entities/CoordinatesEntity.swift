//
//  CoordinatesEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class CoordinatesEntity: Object {
    @objc dynamic var lat: Double = 0.0
    @objc dynamic var lng: Double = 0.0
}
