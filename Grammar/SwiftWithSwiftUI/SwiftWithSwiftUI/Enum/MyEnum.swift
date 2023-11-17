//
//  MyEnum.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct MyEnum: View {
    @State var menu: Menu = .chicken
    
    enum Menu {
        case beef, pork, chicken
    }
    
    var body: some View {
        switch menu {
        case .beef, .pork:
            Text("오늘 메뉴는 다리가 4개인 고기")
        case .chicken:
            Text("오늘 메뉴는 닭고기")
            
        }
        
        //    @State var menu: Menu = .chicken
        //
        //    enum Menu {
        //        case beef, pork, chicken
        //    }
        //
        //    var body: some View {
        //        if menu == .beef {
        //            Text("오늘 메뉴는 소고기")
        //        } else if menu == .pork {
        //            Text("오늘 메뉴는 돼지고기")
        //        } else if menu == .chicken{
        //            Text("오늘 메뉴는 닭고기")
        //        } else {
        //            Text("오늘 뭐먹지?")
        //        }
    }
}

#Preview {
    MyEnum()
}
