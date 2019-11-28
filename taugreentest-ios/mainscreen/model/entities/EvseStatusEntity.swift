//
//  EvseStatusEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class EvseStatusEntity: Object {
    @objc dynamic var available: Int = 0
    @objc dynamic var busy: Int = 0
    @objc dynamic var offline: Int = 0
    @objc dynamic var faulted: Int = 0
}
