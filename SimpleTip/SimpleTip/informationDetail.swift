//
//  informationDetail.swift
//  SimpleTip
//
//  Created by 황성진 on 11/26/23.
//

import SwiftUI

struct informationDetail: View {
    var body: some View {
        List {
            VStack {
                Image(systemName: "hand.draw.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
                Text("iPhone 탐색하기")
                    .bold()
                    .font(.system(size: 22))
                    .padding(.vertical, 1)
                Text("제스쳐 및 버튼을 찾아보고 iPhone을 손쉽게 탐색해 보세요.")
                    .font(.system(size: 12))
            }
            .padding(.leading, 35)
            .frame(height: 180)
            .listRowSeparator(.hidden)
            .listRowBackground(LinearGradient(colors: [.blue, .teal], startPoint: .leading, endPoint: .trailing).mask {
                LinearGradient(gradient: Gradient(stops: [
                    .init(color: .black, location: 0.1),
                    .init(color: .clear, location: 1.0)]),
                               startPoint: .top, endPoint: .bottom)
            })
            
            NavigationLink(destination: InformationExploreDetail()) {
                HStack {
                    Image("bebe1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 120)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("홈으로 바로 이동하기")
                            .bold()
                            .font(.system(size: 18))
                        Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요.")
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                    }
                }
            }
            .listRowSeparator(.hidden)
            NavigationLink(destination: Text("앱 전환하기 상세")) {
                HStack {
                    Image("bebe1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 120)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("앱 전환하기")
                            .bold()
                            .font(.system(size: 18))
                        Text("최근에 사용한 앱으로 돌아가려면 화면을 쓸어 올리고 잠시 멈춘 다음, 앱을 탭하여 여세요.")
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                    }
                }
            }
            .listRowSeparator(.hidden)
            NavigationLink(destination: Text("홈으로 바로 이동하기 상세")) {
                HStack {
                    Image("bebe1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 120)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("홈으로 바로 이동하기")
                            .bold()
                            .font(.system(size: 18))
                        Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요.")
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                    }
                }
            }
            .listRowSeparator(.hidden)
            NavigationLink(destination: Text("홈으로 바로 이동하기 상세")) {
                HStack {
                    Image("bebe1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 120)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 15)
                        .background(.gray)
                        .cornerRadius(12)
                    VStack(alignment: .leading) {
                        Text("홈으로 바로 이동하기")
                            .bold()
                            .font(.system(size: 18))
                        Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요.")
                            .font(.system(size: 15))
                            .foregroundStyle(.gray)
                    }
                }
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.inset)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        informationDetail()
    }
}
