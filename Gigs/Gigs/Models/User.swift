//
//  User.swift
//  Gigs
//
//  Created by Craig Swanson on 11/5/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import Foundation

// used to log into the API
struct User: Codable {
    let username: String
    let password: String
}
