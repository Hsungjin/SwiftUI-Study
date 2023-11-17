//
//  MyEnumAfter.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/18/23.
//

import SwiftUI

enum Drink {
    case coffee(hasMilk: Bool)
    case juice
    case soft(color: Color)
    
    
    var name: String {
        switch self {
        case .coffee(hasMilk: let hasMilk):
            if hasMilk {
                return "Latte"
            } else {
                return "Americano"
            }
        case .juice:
            return "Juice"
        case .soft(color: let drinkColor):
            switch drinkColor {
            case .orange:
                return "환타"
            case .black:
                return "콜라"
            default:
                return "음료"
            }
        }
    }
}

struct MyEnumAfter: View {
    
    let myDrinks: Drink = .soft(color: .black)
    
    var body: some View {
        
        Text(myDrinks.name)
        
        switch myDrinks {
        case .coffee(hasMilk: let hasMilk):
            if hasMilk {
                Text("Latte")
            } else {
                Text("Americano")
            }
            
        case .juice:
            Text("")
        case .soft(color: let drinkColor):
            switch drinkColor {
            case .orange:
                Text("환타")
            case .black:
                Text("콜라")
            default:
                Text("음료")
            }
        }
    }
}

#Preview {
    MyEnumAfter()
}
