//
//  AnimalsModel.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import SwiftUI

struct AnimalsModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
