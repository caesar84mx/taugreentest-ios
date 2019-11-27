//
//  ChargerLocationApi.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import Alamofire

protocol ChargingLocationApi {
    func getChargingLocationById(
        id: String,
        onSuccess: @escaping (ChargingLocation) -> Void,
        onError: @escaping (AFError) -> Void
    )

    func getChargingLocations(
        onSuccess: @escaping ([ChargingLocationPoint]) -> Void,
        onError: @escaping (AFError) -> Void
    )
}
