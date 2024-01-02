//
//  InsetFactView.swift
//  Africa
//
//  Created by 황성진 on 1/3/24.
//

import SwiftUI

struct InsetFactView: View {
    
    let animals: AnimalsModel
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animals.fact, id: \.self) { item in
                    Text(item)
                }
                
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

