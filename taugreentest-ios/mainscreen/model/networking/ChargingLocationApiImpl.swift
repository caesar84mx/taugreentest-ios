//
//  ChargingLocationApiImpl.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import Alamofire

class ChargingLocationApiImpl: ChargingLocationApi {
    func getChargingLocationById(
        id: String,
        onSuccess: @escaping (ChargingLocation) -> Void,
        onError: @escaping (AFError) -> Void
    ) {
        AF.request(ApiRouter.location(id: id)).responseDecodable { (response: AFDataResponse<ChargingLocation>) in
            do {
                let data = try response.result.get()
                onSuccess(data)
            } catch {
                onError(error as! AFError)
            }
        }
    }

    func getChargingLocations(onSuccess: @escaping ([ChargingLocationPoint]) -> Void, onError: @escaping (AFError) -> Void) {
        AF.request(ApiRouter.locations).responseDecodable { (response: AFDataResponse<[ChargingLocationPoint]>) in
            do {
                let data = try response.result.get()
                onSuccess(data)
            } catch {
                onError(error as! AFError)
            }
        }
    }
}
