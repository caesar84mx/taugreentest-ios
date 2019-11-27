//
//  ApiRouter.swift
//  taugreentest-ios
//
//  Created by Maxim Dymnov on 11/27/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import Alamofire

enum ApiRouter: URLRequestConvertible {
    case locations
    case location(id: String)

    private var method: HTTPMethod {
        switch self {
            case .locations, .location:
                return .get
        }
    }

    private var path: String {
        switch self {
            case .location(let id):
                return "/locations/\(id)"
            case .locations:
                return "/locations"
        }
    }

    func asURLRequest() throws -> URLRequest {
        let url = try Networking.LocationsServer.baseUrl.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)

        return urlRequest
    }
}
