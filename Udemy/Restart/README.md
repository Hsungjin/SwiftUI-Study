# Restart 클론 코딩

## 이번 강의틀 통해 배운 내용

- 앱의 방향회전을 고정시키는 방법(세로 방향으로 고정하게 되면 어떠한 방향으로 돌려도 세로로 표시되는 방법)
  - TARGETS - Restart(앱이름) 에서 변경가능, 두가지 방법 존재
    1. General - Deployment Info 옵션에서 설정가능
    2. Info - Supported interface orientations 수정

- LaunchScreen(앱이 처음 실행되면 앱이 로딩될때 까지 흰색 화면으로 나오게 되는 화면) 설정 방법
  - TARGETS - Restart - Info - LaunchScreen 에서 설정가능

- AppStoreage 의 사용 (Views)

- Button 에 스타일 주기 (CircleGroupView)

- DragGesture 의 사용 (OnboardingView)

- 애니메이션 효과 (OnboardingView, HomeView, CircleGroupView)
  - bool 타입 변수를 하나 선언하고 삼항연산자를 통해 효과를 줌
  - withAnimation 을 사용해서 화면 전환간 부드러운 효과를 줌
  - repeatForever() 를 통해 반복가능

- DispatchQueue.main.asyncAfter (HomeView)
  ```swift
  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
  ```
  시간차를 두고 실행하기 위해 코드 적용

- Transition
  - 뷰를 보여질때와 제거할때의 애니메이션
  - 주의: Transition 의미는 뷰를 이동할때의 개념보다는, 뷰를 보여지게할때와 사라지게할때의 애니메이션 개념으로 이해

- .preferredColorScheme(.dark)
  - 뷰에 선언하면 해당 뷰를 dark or right 로 쓸건지 선언 가능

- AVFoundation의 사용 (AudioPlayer)

- haptickFeddback 의 사용 (OnboardingView)