/*
See LICENSE folder for this sample’s licensing information.

Abstract:
An enumeration of Quake fetch and consumption errors.
*/

import Foundation

enum QuakeError: Error {
    case missingData
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return NSLocalizedString("Found and will discard a quake missing a valid code, magnitude, place, or time.", comment: "")
        }
    }
}
