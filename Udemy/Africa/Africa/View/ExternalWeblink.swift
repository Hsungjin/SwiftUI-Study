//
//  ExternalWeblink.swift
//  Africa
//
//  Created by 황성진 on 1/3/24.
//

import SwiftUI

struct ExternalWeblink: View {
    
    let animals: AnimalsModel
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animals.name, destination: (URL(string: animals.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(Color.accentColor)
            } //: HSTACK
        } //: BOX
    }
}
