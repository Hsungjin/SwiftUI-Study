//
//  iTuneData.swift
//  URLSessionAndAlamofire
//
//  Created by 황성진 on 1/8/24.
//

import Foundation


struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var artistName: String
    var trackName: String
    var collectionName: String
    var artworkUrl100: String
}
