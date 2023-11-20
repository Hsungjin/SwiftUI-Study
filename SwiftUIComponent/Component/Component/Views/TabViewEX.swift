//
//  TabViewEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct TabViewEX: View {
    var body: some View {
        
        //        TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/,
        //                content:  {
        //            Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
        //            Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
        //        })
        
        TabView {
            ZStack {
                Color.orange.ignoresSafeArea()
                Text("SungJin")
            }
            .tabItem {
                Image(systemName: "bolt")
                Text("item1")
            }
            
            Text("Sungjin2")
                .tabItem {
                    Label("item2", systemImage: "heart")
                }
        }
        
    }
}

#Preview {
    TabViewEX()
}
