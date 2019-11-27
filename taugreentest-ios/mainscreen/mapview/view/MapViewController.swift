//
//  MapViewController.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/26/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class MapViewController: UIViewController, CLLocationManagerDelegate, MapScreenView {
    let presenter: MapViewPresenter = MapViewPresenterImpl()

    var locationManager: CLLocationManager = CLLocationManager()
    var map: GMSMapView? = nil
    var cameraLatitude = -34.894250
    var cameraLongitude = -56.173167

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attach(view: self)

        self.locationManager.requestWhenInUseAuthorization()

        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.distanceFilter = kCLDistanceFilterNone
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }

        loadMap()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter.loadAvailablePoints()
    }

    func showPoints(coordinates: [Coordinates]) {
        coordinates.forEach { coord in
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: coord.lat, longitude: coord.lng)
            marker.title = "Charging Point Location"
            marker.snippet = "You are welcome here. Always."
            marker.map = self.map
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            cameraLongitude = location.coordinate.longitude
            cameraLatitude = location.coordinate.latitude
            map?.camera = GMSCameraPosition(latitude: cameraLatitude, longitude: cameraLongitude, zoom: 15.8)
        }
    }

    private func loadMap() {
        let camera = GMSCameraPosition(latitude: cameraLatitude, longitude: cameraLongitude, zoom: 15.8)
        map = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        map?.mapType = .normal
        view = map
    }

    override func viewDidDisappear(_ animated: Bool) {
        presenter.detach()
    }
}
