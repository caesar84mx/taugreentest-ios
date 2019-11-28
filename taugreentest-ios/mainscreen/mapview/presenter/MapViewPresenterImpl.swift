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

    private let repository = ChargingLocationsRepository()

    func attach(view: MapScreenView) {
        self.view = view
    }

    func detach() {
        self.view = nil
    }

    func loadAvailablePoints() {
        let entities = repository.get()
        let result = entities.map { entity in CLMarkerUI(latitude: entity.coordinates?.lat ?? 0.0, longitude: entity.coordinates?.lng ?? 0.0) }
        self.view?.showPoints(markers: result)
    }
}
