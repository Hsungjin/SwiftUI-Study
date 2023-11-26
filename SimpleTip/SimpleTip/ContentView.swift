//
//  ContentView.swift
//  SimpleTip
//
//  Created by 황성진 on 11/26/23.
//

import SwiftUI

struct MainCollection: Identifiable {
    var id = UUID()
    let headerTitle: String
    let collections: [Collection]
}

struct Collection: Identifiable {
    let id = UUID()
    let symbolName: String
    let symbolColor: [Color]
    let title: String
}

struct ContentView: View {
    @State var searchText = ""
    
    var startList: [Collection] = [Collection(symbolName: "hand.draw",
                                            symbolColor: [.blue, .white],
                                            title: "iPhone 탐색하기"),
                                   Collection(symbolName: "lock.shield",
                                              symbolColor: [.green, .white],
                                              title: "사용자 정보 보호하기"),
                                   Collection(symbolName: "heart.text.square",
                                              symbolColor: [.orange, .yellow],
                                              title: "대비하기"),
                                   Collection(symbolName: "star",
                                              symbolColor: [.orange, .yellow],
                                              title: "필수 항목 설정하기"),
                                   Collection(symbolName: "heart",
                                              symbolColor: [.purple, .red],
                                              title: "iPhone 개인 맞춤화하기")]
    var cameraList: [Collection] = [Collection(symbolName: "photo.on.rectangle.angled",
                                               symbolColor: [.blue],
                                               title: "사진"),
                                    Collection(symbolName: "camera",
                                               symbolColor: [.blue],
                                               title: "카메라")]
    
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
                    ForEach(startList) { item in
                        NavigationLink(destination: informationDetail()) {
                            Image(systemName: item.symbolName)
                                .resizable()
                                .foregroundStyle(.linearGradient(Gradient(colors: item.symbolColor), startPoint: .leading, endPoint: .trailing))
                                .scaledToFit()
                                .frame(width: 20)
                                .padding(.trailing)
                            Text(item.title)
                        }
                    }
                    
//                    NavigationLink(destination: informationDetail()) {
//                        Image(systemName: "hand.draw")
//                            .resizable()
//                            .foregroundStyle(.linearGradient(Gradient(colors: [.blue, .white]), startPoint: .leading, endPoint: .trailing))
//                            .scaledToFit()
//                            .frame(width: 25)
//                        Text("iPhone 탐색하기")
//                    }
//                    
//                    NavigationLink(destination: Text("사용자 정보 보호하기 상세페이지")) {
//                        Image(systemName: "lock.shield")
//                            .resizable()
//                            .foregroundStyle(.linearGradient(Gradient(colors: [.green, .white]), startPoint: .leading, endPoint: .trailing))
//                            .scaledToFit()
//                            .frame(width: 20)
//                        Text("사용자 정보 보호하기")
//                    }
//                    
//                    NavigationLink(destination: Text("대비하기 상세페이지")) {
//                        Image(systemName: "heart.text.square")
//                            .resizable()
//                            .foregroundStyle(.linearGradient(Gradient(colors: [.orange, .yellow]), startPoint: .leading, endPoint: .trailing))
//                            .scaledToFit()
//                            .frame(width: 20)
//                        Text("대비하기")
//                    }
//                    NavigationLink(destination: Text("필수 항목 설정하기 상세페이지")) {
//                        Image(systemName: "star")
//                            .resizable()
//                            .foregroundStyle(.linearGradient(Gradient(colors: [.orange, .yellow]), startPoint: .bottomLeading, endPoint: .topTrailing))
//                            .scaledToFit()
//                            .frame(width: 20)
//                        Text("필수 항목 설정하기")
//                    }
//                    NavigationLink(destination: Text("iPhone 개인 맞춤화하기 상세페이지")) {
//                        Image(systemName: "heart")
//                            .resizable()
//                            .foregroundStyle(.linearGradient(Gradient(colors: [.purple, .pink]), startPoint: .leading, endPoint: .trailing))
//                            .scaledToFit()
//                            .frame(width: 20)
//                        Text("iPhone 개인 맞춤화하기")
//                    }
                } header: {
                    Text("시작하기")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .textCase(nil)
                }
                
                Section {
                    ForEach(cameraList) { item in
                        NavigationLink(destination: informationDetail()) {
                            Image(systemName: item.symbolName)
                                .resizable()
                                .foregroundStyle(.linearGradient(Gradient(colors: item.symbolColor), startPoint: .leading, endPoint: .trailing))
                                .scaledToFit()
                                .frame(width: 20)
                                .padding(.trailing)
                            Text(item.title)
                        }
                    }

                    
                    Label("사진", systemImage: "photo.on.rectangle.angled")
                    Label("카메라", systemImage: "camera")
                } header: {
                    Text("사진 및 카메라")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.white)
                        .textCase(nil)
                }
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "검색")
            .navigationTitle("모음")
        }
    }
}

#Preview {
    ContentView()
}
