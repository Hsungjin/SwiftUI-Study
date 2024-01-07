//
//  AlamoFireManager.swift
//  URLSessionAndAlamofire
//
//  Created by 황성진 on 1/8/24.
//

import SwiftUI
import Alamofire

class AlamoFireManager: ObservableObject {
    @Published var results = [Result]()
    
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("Invalid URL")
            return
        }
        
        AF.request(url,
                   method: .get, // HTTP메서드 설정
                   parameters: nil, // 파라미터 설정
                   encoding: URLEncoding.default, // 인코딩 타입 설정
                   headers: ["Content-Type":"application/json", "Accept":"application/json"]) // 헤더 설정
        .validate(statusCode: 200..<300) // 유효성 검사
        // responseDecodable을 통해 UserDatas form으로 디코딩, response의 성공 여부에 따라 작업 분기
        .responseDecodable (of: Response.self) { response in
            switch response.result {
            case .success(let value):
                self.results = value.results
            case .failure(let error):
                print(error)
            }
        }
    }
}
