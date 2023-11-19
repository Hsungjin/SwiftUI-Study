//
//  SectionEX.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct SectionEX: View {
    var body: some View {
        List {
            
            Section {
                HStack{
                    Image(systemName: "heart")
                    Text("sungjin")
                }
                HStack{
                    Image(systemName: "heart.fill")
                    Text("Dodo")
                }
                HStack{
                    Image(systemName: "bolt")
                    Text("Olivia")
                }
            } header: {
                VStack {
                    HStack{
                        Image(systemName: "bolt")
                        Text("A class")
                    }
                    
                    HStack{
                        Image(systemName: "bolt")
                        Text("A class")
                    }
                }
            } footer: {
                Text("Footer")
            }
            
            Section {
                HStack{
                    Image(systemName: "heart")
                    Text("sungjin")
                }
                HStack{
                    Image(systemName: "heart.fill")
                    Text("Dodo")
                }
                HStack{
                    Image(systemName: "bolt")
                    Text("Olivia")
                }
            } header: {
                Text("B class")
            } footer: {
                Text("Footer")
            }
            
            Section {
                HStack{
                    Image(systemName: "heart")
                    Text("sungjin")
                }
                HStack{
                    Image(systemName: "heart.fill")
                    Text("Dodo")
                }
                HStack{
                    Image(systemName: "bolt")
                    Text("Olivia")
                }
            } header: {
                Text("C class")
            } footer: {
                Text("Footer")
            }
        }
    }
}

#Preview {
    SectionEX()
}
