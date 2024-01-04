//
//  FireStoreManager.swift
//  NaverMap
//
//  Created by 황성진 on 12/28/23.
//

import Foundation
import FirebaseFirestore

struct DataModel {
    let name: String
    let text: String
    let location: GeoPoint
}

class FireStoreManager: ObservableObject {
//    @Published var mylat: Double = 0
//    @Published var mylng: Double = 0
//    
    @Published var myLocation: [GeoPoint] = []
    @Published var myDataModels: [DataModel] = []
    
    
    func fetchData() async {
        let db = Firestore.firestore()
        let docRef = db.collection("freeboard").document("EBvvECgiQidPmdWf0Byq").collection("location1")
        
        do {
            let document = try await docRef.getDocuments()
            for item in document.documents {
                if let data = item.data() as? [String: Any] {
                    var dataModel = DataModel.init(name: data["name"] as! String, text: data["text"] as! String, location: data["location"] as! GeoPoint)
                    myDataModels.append(dataModel)
                }
            }
            print(myDataModels)
            
//            if document.exists {
//                if let data = document.data() {
////                    self.mylat = data["lat"] as? Double ?? 0
////                    self.mylng = data["lng"] as? Double ?? 0
//                    self.myLocation = data["location"] as! [GeoPoint]
////                    print(self.mylat)
////                    print(self.mylng)
////                    print(myLocation)
//                }
//            }
        } catch {
            print("Error fetching document: \(error)")
        }
    }
}
