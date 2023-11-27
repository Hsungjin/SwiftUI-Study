//
//  ContentView.swift
//  text-swiftUI
//
//  Created by 황성진 on 11/28/23.
//

import SwiftUI

// MARK: - extension 을 image view 에 동일한 modifier를 간단하게 사용할 수 있다.

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private var imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        
        // MARK: - 1. BASIC
        // AsyncImage(url: URL(string: imageURL))
        
        // MARK: - 2. SCALE
        // scale 을 넣어 값이 클수록 사진이 작아진다
        // AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        // MARK: - 3.PLACEHOLDER
        // placeHolder를 사용하여 어떠한 아이콘 또는 이미지가 먼저 화면에 나온 뒤, AsyncImage가 출력될 수 있도록해 줄 수 있다.
//        AsyncImage(url: URL(string: imageURL)) { image in
//            image
//                .imageModifier()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .iconModifier()
//        }
//        .padding(40)
        
        // MARK: - 4. PHASE
        // SUCESS: The image sucessfully loaded.
        // FAILURE: The image failed to load with an error.
        // EMPTY: No image is loaded
//        AsyncImage(url: URL(string: imageURL)) { phase in
//            if let image = phase.image {
//                image.imageModifier()
//            } else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").iconModifier()
//            } else {
//                Image(systemName: "photo.circle.fill").iconModifier()
//            }
//        }
//        .padding(40)

        // MARK: - 5. ANIMATION
        //response - dampingFraction이 0일 때 하나의 진동을 완료하는 데 걸리는 시간
        //dampingFraction - spring이 얼마나 빨리 멈추는지 제어 ➜ 값이 0이면 animation이 멈추지 않음
        // blendDuration - animation 사이 transition의 길이를 정함 ➜ 값이 0일 경우 blending을 끔
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            switch phase {
            case .success(let image):
                image
                    .imageModifier()
                    // .transition(.move(edge: .bottom))
                    // .transition(.slide)
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier()
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
            @unknown default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

#Preview {
    ContentView()
}
