//
//  MainScreenTabBarController.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/28/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import UIKit

class MainScreenTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let repo = ChargingLocationsRepository()
        repo.fetchFresh()
    }
}
