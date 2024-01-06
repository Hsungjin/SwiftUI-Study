# TouchDown 클론 코딩

## 이번 강의틀 통해 배운 내용

### 노치에서 바로 밑으로 뷰 위치 시키기

```swift
soveView()
    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
```

### Json 파일 읽어오기

```swift
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. LOCATE the JSOn file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locat \(file) in bundle")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // 3. Create a decorder
        let decorder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let decodedData = try? decorder.decode(T.self, from: data) else {
            fatalError("Failed to decod \(file) from bundle")
        }
        // 5. Return the ready to use data
        
        return decodedData
    }
}
```
