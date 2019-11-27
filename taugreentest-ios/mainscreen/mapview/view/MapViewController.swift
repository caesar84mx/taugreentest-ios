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

class MapViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMap()
    }

    private func loadMap() {
        let camera = GMSCameraPosition(latitude: -34.894250, longitude: -56.173167, zoom: 15.8)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.mapType = .normal
        view = mapView
    }
}
