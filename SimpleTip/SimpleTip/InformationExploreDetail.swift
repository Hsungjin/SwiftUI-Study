//
//  InformationExploreDetail.swift
//  SimpleTip
//
//  Created by 황성진 on 11/26/23.
//

import SwiftUI

struct InformationExploreDetail: View {
    
    @State var selectedPage: Int = 0
    
    var body: some View {
        ScrollView {
            HStack {
                TabView {
                    VStack{
                        Image("bebe1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 500)
                            .background(.gray)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("홈으로 바로 이동하기")
                                    .bold()
                                    .font(.system(size: 25))
                                    .padding(.bottom, 3)
                                Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                            }
                            .padding(.horizontal, 30)
                            Spacer()
                        }
                        
                        Spacer()
                        
                        //                PageControl(numberOfPages: 7, currentPage: $selectedPage)
                    }
                    VStack{
                        Image("bebe1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 500)
                            .background(.gray)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("홈으로 바로 이동하기")
                                    .bold()
                                    .font(.system(size: 25))
                                    .padding(.bottom, 3)
                                Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                            }
                            .padding(.horizontal, 30)
                            Spacer()
                        }
                        
                        Spacer()
                        
                        //                PageControl(numberOfPages: 7, currentPage: $selectedPage)
                    }
                    VStack{
                        Image("bebe1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 500)
                            .background(.gray)
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("홈으로 바로 이동하기")
                                    .bold()
                                    .font(.system(size: 25))
                                    .padding(.bottom, 3)
                                Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요")
                            }
                            .padding(.horizontal, 30)
                            Spacer()
                        }
                        
                        Spacer()
                        
                        //                PageControl(numberOfPages: 7, currentPage: $selectedPage)
                    }
                }
                // 프래임의 크기를 UIScreen.main.bounds.000 를 사용해서 지정할 수 있음
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 150)
                // 탭뷰를 통해 앱 화면 하단의 스와이프해서 페이지 전환 효과를 줄 수 있음
                .tabViewStyle(.page(indexDisplayMode: .always))
            }
        }
        
        
        
        .navigationTitle("탐색하기")
        .toolbar {
            Button {
                // clicked Book mark
            } label: {
                Image(systemName: "bookmark")
            }
        }
    }
}

// 페이지 컨트롤을 하기위한 뷰
struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    var body: some View {
        HStack {
            ForEach(0 ..< numberOfPages) { index in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundStyle(index == self.currentPage ? .white : .gray)
                    .onTapGesture(perform: {
                        self.currentPage = index
                    })
            }
        }
    }
}

#Preview {
    InformationExploreDetail()
}
