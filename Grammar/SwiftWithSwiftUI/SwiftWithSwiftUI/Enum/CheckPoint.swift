//
//  CheckPoint.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/18/23.
//

import SwiftUI

// optional, optional chaining, binding, closure, struct

struct Friend {
    let name: String
    let pet: MyPet?
}

enum MyPet {
    case cat(String)
    case dog(String)
}
struct CheckPoint: View {
    
    var pepe: Friend = Friend(name: "pepe", pet: MyPet.dog("coco"))
    var mimi: Friend = Friend(name: "mimi", pet: MyPet.cat("pepe"))
    
    @State var pet: String = "제 절친의 애완동물은요"
    
    var body: some View {
        Text(pet)
        Button(action: {
            if let petName = mimi.pet {
                pet = getPetName(petName)
                //                switch petName {
                //                case .dog(let nickName):
                //                    pet = nickName
                //                case .cat(let nickName):
                //                    pet = nickName
            } else {
                pet = "애완동물이 없어요."
            }
            
            //            if mimi.pet == "" {
            //                pet = "애완동물이 없습니다."
            //            } else {
            //                pet = mimi.pet
            //            }
            
        }, label: {
            Text("Push")
        })
        
    }
    func getPetName(_ petName: MyPet) -> String {
        switch petName {
        case .dog(let nickName):
            return nickName
        case .cat(let nickName):
            return nickName
            
        }
    }
}

#Preview {
    CheckPoint()
}
