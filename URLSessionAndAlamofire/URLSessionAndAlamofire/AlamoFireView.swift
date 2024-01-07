//
//  AlamoFireView.swift
//  URLSessionAndAlamofire
//
//  Created by 황성진 on 1/8/24.
//

import SwiftUI

struct AlamoFireView: View {
    // MARK: - PROPERTY
    
    @ObservedObject var alamofireManager = AlamoFireManager()
    
    // MARK: - BODY
    var body: some View {
        List(alamofireManager.results, id: \.trackId) { item in
            
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
            await alamofireManager.loadData()
        }
    }
}

#Preview {
    AlamoFireView()
}
