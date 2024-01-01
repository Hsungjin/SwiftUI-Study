//
//  FireStoreManager.swift
//  NaverMap
//
//  Created by 황성진 on 12/28/23.
//

import Foundation
import FirebaseFirestore

class FireStoreManager: ObservableObject {
    @Published var mylat: Double = 0
    @Published var mylng: Double = 0
    
    func fetchData() async {
        let db = Firestore.firestore()
        let docRef = db.collection("freeboard").document("EBvvECgiQidPmdWf0Byq")
        
        do {
            let document = try await docRef.getDocument()
            if document.exists {
                if let data = document.data() {
                    self.mylat = data["lat"] as? Double ?? 0
                    self.mylng = data["lng"] as? Double ?? 0
                    print(self.mylat)
                    print(self.mylng)
                }
            }
        } catch {
            print("Error fetching document: \(error)")
        }
    }
}
