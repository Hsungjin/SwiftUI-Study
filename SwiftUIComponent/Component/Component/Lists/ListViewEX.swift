//
//  ListViewEX.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
}

struct ListViewEX: View {
    var body: some View {
        
//        let names: [String] = ["sungjin", "Dodo", "Olivia"]
//        List(names, id: \.self) { name in
//            Text(name)
//        }
        
        let people: [Person] = [Person(name: "sungjin", imageName: "heart"),
                                Person(name: "Dodo", imageName: "heart.fill"),
                                Person(name: "Olivia", imageName: "bolt")]
        
        List(people) {person in
            HStack {
                Image(systemName: person.imageName)
                Text(person.name)
            }
        }
        
//        List {
//            HStack{
//                Image(systemName: "heart")
//                Text("sungjin")
//            }
//            
//            HStack{
//                Image(systemName: "heart.fill")
//                Text("Dodo")
//            }
//            
//            HStack{
//                Image(systemName: "bolt")
//                Text("Olivia")
//            }
//        }
    }
}

#Preview {
    ListViewEX()
}
