//
//  SettingRowView.swift
//  Fruits
//
//  Created by 황성진 on 12/31/23.
//

import SwiftUI

struct SettingRowView: View {
    // MARK: - PROPERTY
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundStyle(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    Group {
        SettingRowView(name: "Developer", content: "Johon / Jane")
            .padding()
        
        SettingRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
            .preferredColorScheme(.dark)
            .padding()
    }
}
