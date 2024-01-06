//
//  CategoryModel.swift
//  TouchDown
//
//  Created by 황성진 on 1/6/24.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
