/*
 See LICENSE folder for this sample’s licensing information.

 Abstract:
 A class for caching quake data.
*/

import Foundation

/// A class to hold a CacheEntry.
final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) { self.entry = entry }
}

/// An enumeration of cache quake cache entries.
enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
