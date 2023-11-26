//
//  ContentView.swift
//  SimpleTip
//
//  Created by 황성진 on 11/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                ZStack {
                    Image("bebe1")
                        .frame(height: 200)
                        .aspectRatio(contentMode: .fit)
                    Text("새로운 기능")
                        .bold()
                        .offset(x: -110, y: -90)
                        .font(.system(size: 23))
                }
                Section {
                    NavigationLink(destination: informationDetail()) {
                        Image(systemName: "hand.draw")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.blue, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 25)
                        Text("iPhone 탐색하기")
                    }
                    
                    NavigationLink(destination: Text("사용자 정보 보호하기 상세페이지")) {
                        Image(systemName: "lock.shield")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.green, .white]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 20)
                        Text("사용자 정보 보호하기")
                    }
                    
                    NavigationLink(destination: Text("대비하기 상세페이지")) {
                        Image(systemName: "heart.text.square")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.orange, .yellow]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 20)
                        Text("대비하기")
                    }
                    NavigationLink(destination: Text("필수 항목 설정하기 상세페이지")) {
                        Image(systemName: "star")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.orange, .yellow]), startPoint: .bottomLeading, endPoint: .topTrailing))
                            .scaledToFit()
                            .frame(width: 20)
                        Text("필수 항목 설정하기")
                    }
                    NavigationLink(destination: Text("iPhone 개인 맞춤화하기 상세페이지")) {
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundStyle(.linearGradient(Gradient(colors: [.purple, .pink]), startPoint: .leading, endPoint: .trailing))
                            .scaledToFit()
                            .frame(width: 20)
                        Text("iPhone 개인 맞춤화하기")
                    }
                } header: {
                    Text("시작하기")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .textCase(nil)
                }
                
                Section {
                    Label("사진", systemImage: "photo.on.rectangle.angled")
                    Label("카메라", systemImage: "camera")
                    Label("대비하기", systemImage: "bolt")
                    Label("필수 항목 설정하기", systemImage: "bolt")
                    Label("iPhone 개인 맞춤화하기", systemImage: "bolt")
                } header: {
                    Text("사진 및 카메라")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .textCase(nil)
                }
            }
            .navigationTitle("모음")
        }
    }
}

#Preview {
    ContentView()
}
