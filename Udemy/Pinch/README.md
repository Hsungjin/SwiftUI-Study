# Pinch 클론 코딩

## 이번 강의틀 통해 배운 내용

- 더블탭으로 이미지 크기 확장
  - State 변수로 CGFloat을 선언해 준다음 다음 코드를 넣으면 더블탭 제스쳐로 이미지 크기 키우기 가능
  ```swift
  .scaleEffect(imageScale)
                // MARK: - 1.TAP GESTURE
                    .onTapGesture(count: 2) {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    }
  ```