//
//  Error Codes.swift
//  Gigs
//
//  Created by Craig Swanson on 11/7/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case noAuthorization
    case incorrectAuthorization
    case badData
    case notDecodedProperly
    case otherError
    case notEncodedProperly
}
