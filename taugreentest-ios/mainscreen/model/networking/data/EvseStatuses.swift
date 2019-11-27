//
//  EvseStatuses.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

struct EvseStatuses: Codable {
    let available, busy, offline, faulted: Int
}
