//
//  MyOptionalChaining.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/16/23.
//

import SwiftUI

struct Student {
    let name: String
    let pet: Pet?
}

struct Pet {
    let name: String
    let age: Int?
}

struct MyOptionalChaining: View {
    
    let sungjin = Student(name: "sungjin", pet: Pet(name: "wow", age: 2))
    
    var body: some View {
        Text(sungjin.name)
        Text(sungjin.pet?.name ?? "no pet")
        
        if let petName = sungjin.pet?.name {
            Text(petName + "wow")
        }
    }
}

#Preview {
    MyOptionalChaining()
}
