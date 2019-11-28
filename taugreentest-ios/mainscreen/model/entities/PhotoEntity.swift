//
//  PhotoEntity.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class PhotoEntity: Object {
    @objc dynamic var serverId: String = ""
    @objc dynamic var url: String = ""
    @objc dynamic var createdAt: Date = Date()
}
