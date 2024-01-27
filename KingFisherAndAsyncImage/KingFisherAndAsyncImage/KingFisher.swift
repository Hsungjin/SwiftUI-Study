//
//  KingFisher.swift
//  KingFisherAndAsyncImage
//
//  Created by 황성진 on 1/24/24.
//

import SwiftUI
import Kingfisher

struct KingFisher: View {
    // MARK: - PROPERTY
    let imageURL = "https://avatars.githubusercontent.com/u/120264964?v=4"
    
    // MARK: - BODY
    var body: some View {
        //        KFImage(URL(string: imageURL))
        //
        //        VStack {
        //            Text("KingFisher")
        //            KFImage(URL(string: imageURL))
        //                .onFailure({ error in
        //                    print("Error : \(error)")
        //                })
        //                .resizable()
        //                .frame(width: 100, height: 100)
        //        }
        
        //        KFImage(URL(string: imageURL))
        //            .placeholder {
        //                // Placeholder while downloading.
        //                Image(systemName: "arrow.2.circlepath.circle")
        //                    .font(.largeTitle)
        //                    .opacity(0.3)
        //            }
        //            .retry(maxCount: 3, interval: .seconds(5))
        //            .onSuccess { r in
        //                // r: RetrieveImageResult
        //                print("success: \(r)")
        //            }
        //            .onFailure { e in
        //                // e: KingfisherError
        //                print("failure: \(e)")
        //            }
        
        List {
            ForEach(0..<10) { i in
                KFImage(URL(string: imageURL))
                    .cancelOnDisappear(true)
            }
        }
    }
}

#Preview {
    KingFisher()
}
