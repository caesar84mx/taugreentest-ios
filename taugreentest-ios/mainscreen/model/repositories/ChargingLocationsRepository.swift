//
//  ChargingLocationsRepository.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import RealmSwift

class ChargingLocationsRepository {
    private let apiClient: ChargingLocationApiImpl = ChargingLocationApiImpl()
    private let realm = try! Realm()

    func fetchFresh() {
        apiClient.getChargingLocations(onSuccess: { rawPoints in
            NSLog("\(rawPoints.count) points downloaded")

            self.deleteAllLocally()
            try! self.realm.write {
                rawPoints.forEach { rawPoint in
                    self.realm.add(self.mapToEntity(rawPoint: rawPoint))
                }
            }
        }, onError: { error in
            NSLog("An error occurred on points downloading: \(error.errorDescription ?? "no description")")
        })
    }

    func deleteAllLocally() {
        let all = realm.objects(ChargingLocationPointEntity.self)

        try! realm.write {
            self.realm.delete(all)
        }
    }

    func get() -> [ChargingLocationPointEntity] {
        if realm.objects(ChargingLocationPointEntity.self).count == 0 {
            apiClient.getChargingLocations(onSuccess: { rawPoints in
                try! self.realm.write {
                    rawPoints.forEach { rawPoint in
                        self.realm.add(self.mapToEntity(rawPoint: rawPoint))
                    }
                }
            }, onError: { error in
                NSLog("An error occurred on points downloading: \(error.errorDescription ?? "no description")")
            })
        }

        return self.realm.objects(ChargingLocationPointEntity.self).map { $0 }
    }

    private func mapToEntity(rawPoint: ChargingLocationPoint) -> ChargingLocationPointEntity {
        let resultPoint = ChargingLocationPointEntity()
        let resultCoordinates = CoordinatesEntity()
        let resultEvseStatus = EvseStatusEntity()

        resultCoordinates.lat = rawPoint.coordinates.lat
        resultCoordinates.lng = rawPoint.coordinates.lng

        resultEvseStatus.available = rawPoint.evseStatuses.available
        resultEvseStatus.busy = rawPoint.evseStatuses.busy
        resultEvseStatus.faulted = rawPoint.evseStatuses.faulted
        resultEvseStatus.offline = rawPoint.evseStatuses.offline

        resultPoint.internalId = rawPoint.id
        resultPoint.coordinates = resultCoordinates
        resultPoint.evseStatuses = resultEvseStatus

        return resultPoint
    }
}
