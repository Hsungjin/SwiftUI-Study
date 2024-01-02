//
//  CodableBundleExtenstion.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // 2. Create a propery for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // 3. Create a decorder
        let decorder = JSONDecoder()
        
        // 4. Create a property for the decode data
        guard let loaded = try? decorder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}
