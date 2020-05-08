//
//  BreedsListResponse.swift
//  Randogs
//
//  Created by Jonathan Miranda on 5/8/20.
//  Copyright © 2020 Jonathan Miranda. All rights reserved.
//

import Foundation

struct BreedsListResponse: Codable {
    let message: [String: [String]]
    let status: String
}
