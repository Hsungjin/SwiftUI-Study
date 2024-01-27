//
//  ContentView.swift
//  KingFisherAndAsyncImage
//
//  Created by 황성진 on 1/24/24.
//

import SwiftUI
//struct ContentView: View {
    // MARK: - PROPERTY
    //    var imageURL = "https://avatars.githubusercontent.com/u/120264964?v=4"
    // MARK: - BODY
//    var body: some View {
        //        AsyncImage(url: URL(string: imageURL))
        //            .frame(width: 200, height: 200)
        //        AsyncImage(url: URL(string: imageURL)) { image in
        //            image.resizable()
        //        } placeholder: {
        //            ProgressView()
        //        }
        //        .frame(width: 100, height: 100)
        //
        //        AsyncImage(url: URL(string: imageURL)) { phase in
        //            if let image = phase.image {
        //                image // Displays the loaded image.
        //            } else if phase.error != nil {
        //                Color.red // Indicates an error.
        //            } else {
        //                Color.blue // Acts as a placeholder.
        //            }
        //        }
//    }
//}

struct AsyncImageView: View {
    var imageURL =  "https://avatars.githubusercontent.com/u/120264964?v=4"
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
            case .failure(_):
                Image(systemName: "exclamationmark.icloud")
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    AsyncImageView()
}
