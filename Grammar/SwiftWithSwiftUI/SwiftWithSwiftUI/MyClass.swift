//
//  MyClass.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/16/23.
//

import SwiftUI

struct Person {
    var name: String
    let age: Int
}

class PersonClass {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct MyClass: View {
    
//    var person = Person(name: "sungjin", age: 20)
    
    @State var nickName: String = "None"
    
    var body: some View {
//        Text(person.name)
//        Text(person.age.description)
        Text(nickName)
        
        Button {
            // 구조체와 클래스의 차이는 값타입, 참조타입 이다.
//            구조체의 사용
//            var person = Person(name: "sungjin", age: 20)
//            var fakeperson = person
//            person.name = "sungjin2"
//            fakeperson.name = "sungjin3"
//            nickName = person.name
            
            
            // 클래스의 사용
            var personClass = PersonClass(name: "sungjin", age: 23)
            var fakeperson = personClass
            personClass.name = "sungjin2"
            fakeperson.name = "sungjin3"
            nickName = personClass.name
            
            
        } label: {
            Text("Hit")
        }
    }
}

#Preview {
    MyClass()
}
