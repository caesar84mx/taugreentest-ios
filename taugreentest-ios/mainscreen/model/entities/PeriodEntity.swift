//
//  PeriodEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class PeriodEntity: Object {
    @objc dynamic var day: Int = 0
    @objc dynamic var opensAt: String = ""
    @objc dynamic var closesAt: String = ""
}
