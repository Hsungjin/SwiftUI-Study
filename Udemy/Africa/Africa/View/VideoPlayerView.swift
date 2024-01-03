//
//  VideoPlayerView.swift
//  Africa
//
//  Created by 황성진 on 1/4/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTY
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
//                Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                
                , alignment: .topLeading
            )
        } //: VSTACK
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    VideoPlayerView()
//}
