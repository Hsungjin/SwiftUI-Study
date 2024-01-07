//
//  URLSessionManager.swift
//  URLSessionAndAlamofire
//
//  Created by 황성진 on 1/8/24.
//

import SwiftUI


class URLSessionManager: ObservableObject {
    
    @Published var results = [Result]()
    
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, meta) = try await URLSession.shared.data(from: url)
            print(meta)
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results
            }
        } catch {
            print("Invalid data")
        }
    }
}
