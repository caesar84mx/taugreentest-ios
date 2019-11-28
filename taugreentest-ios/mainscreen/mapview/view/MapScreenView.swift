//
//  MapScreenView.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

protocol MapScreenView: class {
    func showPoints(markers: [CLMarkerUI])
}
