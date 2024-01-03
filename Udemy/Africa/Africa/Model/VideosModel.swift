//
//  VideosModel.swift
//  Africa
//
//  Created by 황성진 on 1/4/24.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumnail: String {
        "video-\(id)"
    }
}
