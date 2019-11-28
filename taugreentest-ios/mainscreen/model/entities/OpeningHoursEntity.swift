//
//  OpeningHoursEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class OpeningHoursEntity: Object {
    @objc dynamic var openNow: Bool = false
    var periods = List<PeriodEntity>()
}
