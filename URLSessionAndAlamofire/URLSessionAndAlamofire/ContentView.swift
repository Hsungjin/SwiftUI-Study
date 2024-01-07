//
//  ContentView.swift
//  URLSessionAndAlamofire
//
//  Created by 황성진 on 1/8/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    @ObservedObject var urlSessionManager = URLSessionManager()
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("URLSession and Alamofire")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                NavigationLink(destination: URLSessionView()) {
                    Text("Go To URLSessionView")
                }
                .padding()
                .foregroundStyle(.black)
                .background(.teal)
                .cornerRadius(12)
                
                NavigationLink(destination: AlamoFireView()) {
                    Text("Go To Alamofire")
                }
                .padding()
                .foregroundStyle(.black)
                .background(.yellow)
                .cornerRadius(12)
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
