//
//  VideoListItem.swift
//  Africa
//
//  Created by 황성진 on 1/4/24.
//

import SwiftUI

struct VideoListItemView: View {
    // MARK: - PROPERTY
    let video: Video
    
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .contrast(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: ZSTACK
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } //: VSTACK
        } //: HSTACK
    }
}

#Preview {
    VideoListItemView(video: Video(id: "cheetah", name: "Cheetah", headline: "Cheetah walking in the savannah"))
}
