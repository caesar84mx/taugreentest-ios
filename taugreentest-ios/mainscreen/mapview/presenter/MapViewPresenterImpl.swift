//
//  MapViewPresenterImpl.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

class MapViewPresenterImpl: MapViewPresenter {
    private weak var view: MapScreenView? = nil

    private let apiClient: ChargingLocationApi = ChargingLocationApiImpl()

    func attach(view: MapScreenView) {
        self.view = view
    }

    func detach() {
        self.view = nil
    }

    func loadAvailablePoints() {
        apiClient.getChargingLocations(onSuccess: { points in
            print("\(points.count) points loaded")
            let coords = points.map { $0.coordinates }
            self.view?.showPoints(coordinates: coords)
        }, onError: { error in
            print("An error occurred on points loading: \(error.errorDescription ?? "no description")")
        })
    }
}
