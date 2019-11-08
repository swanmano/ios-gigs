//
//  Gig.swift
//  Gigs
//
//  Created by Craig Swanson on 11/7/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import Foundation

// the object returned by the API and that we want to display in the detail view
struct Gig: Codable {
    var title: String
    var description: String
    var dueDate: Date
}

