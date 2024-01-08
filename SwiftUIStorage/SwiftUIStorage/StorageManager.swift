//
//  StorageManager.swift
//  SwiftUIStorage
//
//  Created by 황성진 on 1/8/24.
//

import Foundation
import FirebaseStorage
import UIKit

// 이미지 높이를 줄여서 더 작은 공간을 사용하도록 함
extension UIImage {
    func aspectFittedToHeight(_ newHeight: CGFloat) -> UIImage {
        let scale = newHeight / self.size.height
        let newWidth = self.size.width * scale
        let newSize = CGSize(width: newWidth, height: newHeight)
        let renderer = UIGraphicsImageRenderer(size: newSize)
        
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: newSize))
        }
    }
}


struct StorageImage: Hashable {
    var name: String
    var fullPath: String
    var image: UIImage
    
    init(name: String, fullPath: String, image: UIImage) {
        self.name = name
        self.fullPath = fullPath
        self.image = image
    }
}

class StorageManager: ObservableObject {
    static let shared = StorageManager()
    
    private init() {}
    
    @Published var images: [StorageImage] = []
    let storage = Storage.storage()
    
    // 이미지 파일 업로드
    func upload(image: UIImage) {
        let storageRef = storage.reference().child("images/\(UUID().uuidString).jpg")
        
        // 함수에 전달된 이미지를 압축하여 JPEG 파일로 변환
        let resizedImage = image.aspectFittedToHeight(200)
        let data = resizedImage.jpegData(compressionQuality: 0.2)
        
        // Firebase Storage의 메타데이터에 업로드할 파일 형식 변경
        // 변경하지 않으면 Firebase 저장소에 저장된 파일은 application/octet-stream 유형
        let metaData = StorageMetadata()
        metaData.contentType = "image/jpg"
        
        if let data = data {
            storageRef.putData(data, metadata: nil) { (metadata, error) in
                guard let metadata = metadata, error == nil else {
                    print("Error while uploading file: \(error!)")
                    return
                }
                print("MetaData: \(metadata)")
            }
        }
    }
    
    // Firebase의 listAll() 메서드를 사용하여 저장소의 모든 항목을 나열
    func listAllFiles() {
        // 이미지 폴더의 모든 파일을 나열
        let storageRef = storage.reference().child("images")
        
        storageRef.listAll { result, error in
            guard let result = result, error == nil else {
                return
            }
            
            self.images.removeAll()
            
            for item in result.items {
                print("Item in images forder:", item)
                print("Item in images fullPath:", item.fullPath)
                item.getData(maxSize: 1 * 1024 * 1024) { data, error in
                    guard let data = data, let image = UIImage(data: data), error == nil else {
                        return
                    }
                    
                    self.images.append(
                        StorageImage(name: item.name, fullPath: item.fullPath, image: image))
                }
            }
            
        }
    }
    
    func deleteFile(_ imageName: String) async {
        let storageRef = storage.reference().child("images")
        
        let desertRef = storageRef.child(imageName)
        
        do {
            try await desertRef.delete()
            print("\(imageName) is delete")
        } catch {
            print(error)
        }
        
    }
}
