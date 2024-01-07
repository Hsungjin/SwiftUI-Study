//
//  UrlSessionView.swift
//  URLSessionAndAlamofire
//
//  Created by 황성진 on 1/8/24.
//

import SwiftUI

struct URLSessionView: View {
    // MARK: - PROPERTY
    
    @ObservedObject var urlSessionManager = URLSessionManager()
    
    // MARK: - BODY
    var body: some View {
        List(urlSessionManager.results, id: \.trackId) { item in
            
            HStack {
                AsyncImage(url: URL(string: item.artworkUrl100))
                
                VStack {
                    Text("Tack Name - \(item.trackName)")
                    Divider()
                    Text("CollectionName - \(item.collectionName)")
                    Divider()
                    Text("Artist - \(item.artistName)")
                }
            }
            
            Rectangle()
                .frame(height: 2)
                .foregroundStyle(.gray)
        }
        .task {
            await urlSessionManager.loadData()
        }
    }
}

#Preview {
    URLSessionView()
}
