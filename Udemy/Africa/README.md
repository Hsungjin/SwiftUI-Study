# Africa 클론 코딩

## 이번 강의틀 통해 배운 내용

### LaunchScreen의 활용

- plist에서 launch screen 에 이미지, 색상등을 추가할 수 있다.

### Appearance 사용

- plist에서 Appearance 를 ㅇark 값을 넣으주면 앱 다크모드 고정

### Json file 읽어오는 방법

```swift

struct CoverImage: Codable, Identifiable {
    let id: Int
    let name: String
}

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        // 2. Create a propery for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // 3. Create a decorder
        let decorder = JSONDecoder()
        
        // 4. Create a property for the decode data
        guard let loaded = try? decorder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}
```