//
//  ContentView.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var menu: String? = "오늘 뭐먹지?"
    let menus: [Food] = [.bulgogi, .tangsuyook, . sushi, .pho]
    
    enum Food: String {
        case bulgogi = "불고기"
        case tangsuyook = "탕수육"
        case sushi = "스시"
        case pho = "쌀국수"
    }
    
    var body: some View {
        VStack {
            if menu == "불고기" || menu == "스시" {
                Text("너누 맛있는 \(menu!)")
            } else {
                Text(menu!)
            }
        }
        
        Button {
            menu = menus.randomElement()?.rawValue
        } label: {
            Text("눌러요!")
        }
    }
}

#Preview {
    ContentView()
}
