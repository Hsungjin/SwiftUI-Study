//
//  Variable4.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct Variable4: View {
    // 배열 변수를 많이 만들때 선언이 많아지므로 배열에 담아 표현
    let names: [String] = ["sungjin1", "sungjin2", "sungjin3"]
    
    // 딕셔너리[키 : 값] 의 형태로 이루어짐
    let engKrDictionary: [String: String] = ["Apple":"사과", "Banana":"바나나", "Coconut":"코코넛"]
    
    // 집합 - 중복으로 들어가도 중복이 제거된다
    let setExample: Set = ["a", "b", "c", "c"]
    let setExample2: Set = ["a", "B", "C", "A"]
    
    var body: some View {
        VStack {
            // 배열의 출력 방법
            Text(names[0])
            Text(names[1])
            Text(names[2])
            
            // 딕셔너리의 출력
            Text(engKrDictionary["Apple"]!)
            Text(engKrDictionary["Banana"]!)
            Text(engKrDictionary["Coconut"]!)
            
            // 집합의 사용 예제
            // intersection = 교집합
            Text(setExample.intersection(setExample2).description)
            // union = 합집합
            Text(setExample.union(setExample2).description)

        }
    }
}

#Preview {
    Variable4()
}
