//
//  CombineDemoTests.swift
//  CombineDemoTests
//
//  Created by 황성진 on 2/15/24.
//

import XCTest
@testable import CombineDemo
import Combine

/*
 Combine: 시간의 흐름에 따라 발생하는 이벤트를 처리하기 위한 API
 
 Publisher (이벤트 발생)
 Operator (이벤트 가공)
 Subscriber (이벤트 소비)
 - 위에서 부터 아래로 데이터 전달
 - 아래에서 부터 위로 데이터 요청
 
 Publisher 와 Subscriber가 서로 데이터를 주고받을 때는 항상 두가지의 타입이 존재
 - Publisher 입장에서 Output 타입과 Failure 타입이 존재
    - 에러가 발생했을 경우 Failure 타입 그렇지 않다면 Output 타입을 전달
 - 이 데이터를 받은 Subscriber는 Publisher의 Output 타입과 동일한 Input타입과 동일한 Failure 타입을 가져야함
 */

final class CombineDemoTests: XCTestCase {
    
    @Published var a: Int = 0

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
    /*
     Just는 오직 하나의 값만 출력하고 끝나게 되는 가장 단순한 형태의 Publisher로 Combine Framework 에서 빌트인(Built-in) 형태로 제공하는 Publisher
     - Just는 인자로 받는 값의 타입을 Output 타입으로 실패타입은 항상 Never 로 리턴
     
     sink는 클로저 형태로 데이터를 받는 Subscriber
     - Input 타입으로는 클로저로 받게되는 데이터값을 에러타입으로 Never를 받음
     */

    func testExample1() throws {
        var a = 10
        var b = 20
        var sum = a + b
        XCTAssertEqual(30, sum)
    }
    
    func testExample2() throws {
        Just(10).sink { i in
            print(i)
        }
    }
    
    /*
     10개의 데이터를 공급할 Publisher
     sink(Subscriber)가 연결되기전까지는 데이터를 발행하지 않음
     - sink에 receiveCompletion를 구현하여 데이터 스트림이 완료될 때 로그 출력
     - provider 퍼블리셔는 1부터 10까지 데이터를 하나하나 발행하게하고, sink로 연결될 때 구독(subscribe)이 시작
     */
    
    func testExample3() throws {
        let publisher = (1...10).publisher
        
        publisher.sink { _ in
            print("데이터 전달 완료")
        } receiveValue: { data in
            print(data)
        }
    }
    /*
     - Just, Promise, Fail, Empty, Deferred, Future, Sequence, ObserbableObjectPublisher
     - Published 어노테이션 : @Published var name: String
     */
    func testExample4() throws {
    }
    
    /*
     Subscriber
     - Subscriber를 상속받아 직접 구현
     - sink를 이용하여 결과값 받기
     - assign을 이용하여 스트림 값을 전달
     */
    func testExample5() throws {
        let publisher = ["A", "B", "C", "D"].publisher
        
        let subscriber = CustomSubscriber()
        publisher.subscribe(subscriber)
    }
    
    class CustomSubscriber: Subscriber {
        typealias Input = String // 성공 타입
        typealias Failure = Never // 실패 타입
        
        func receive(subscription: Subscription) {
            print("구독 시작")
            
            // 구독 데이터 개수를 제한 안함
//            subscription.request(.unlimited)
            
            // 구독 데이터 개수를 제한
            // 모든 데이터가 발행되지 않았기 때문에 completion 호출 안됨
            subscription.request(.max(3))
        }
        
        /*
         Subscribers.Demand를 리턴하는 receive 함수는 구독 이후에 데이터 스트림을 변경할 때 사용
         none 으로 리턴하면 현재 데이터 스트림을 유지한다는 뜻
         */
        
        func receive(_ input: String) -> Subscribers.Demand {
            print("데이터를 받음", input)
//            return .none
            
            // 구독 도중에 데이터를 .unlimited로 변경하면 이전 설정을 무시하고 모두 구독(진행)
            return .unlimited
        }
        
        func receive(completion: Subscribers.Completion<Never>) {
            print("모든 데이터 받음 구독 완료")
        }
    }
    
    /*
     Operator: 생성자와 소비자 중간에 위치하여 데이터 스트림을 가공해주는 역할
     - Mapping Element: 주로 데이터를 다른 데이터 타입으로 변형하는 역할
        - ex) scan, setFailureType, map, flatMap
     - Filtering Element: 조건에 맞는 데이터만 허용
        - ex) compactMap, replaceEmpty, filter, replaceError, removeDuplicates
     - Reduce Element: 데이터 스트림을 모아 출력
        - ex) collect, reduce, tryReduce, ignoreOutput
     - Mathematic operations on elements: 숫자 시퀀스값과 관련된 스트림을 제어
        - ex) max, count, min
     - Sequence Element: 데이터 시퀀스를 변형할 때 사용
        - ex) prepend, firstWhere, tryFirstWhere, first, lastWhere, tryLastWhere, last, dropWhile
     */
    func testExample6() throws {
        // Publisher 가 String 타입이 아닌 Int 타입인 경우 서로 받는 타입이 다르기 때문에 에러가 발생
//        let publisher = (1...10).publisher
//
//        let subscriber = CustomSubscriber()
//        publisher.subscribe(subscriber)
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        
        (1...10).publisher
            .map { i in
                formatter.string(from: NSNumber(integerLiteral: i)) ?? ""
            }
            .sink { data in
                print(data)
            }
    }
    
    /*
     Subject: Publisher의 일종으로 외부에서 안으로 데이터를 주입시킬 수 있음
     - PassthroughSubject 빌트인 타입 :
        - 상태값을 가지지 않는 Subject
     - CurrentValueSubject 빌트인 타입 :
        - 상태값을 가지는 Subject로 주로 UI의 상태값에 따라 데이터를 발행할 때 사용하기 유용
     */
    func testExample7() throws {
        let subject = PassthroughSubject<String, Error>()
        
        subject.sink { completion in
            switch completion {
            case .finished:
                print("데이터 받음(발행) 종료")
                
            case .failure:
                print("Error 발생")
            }
        } receiveValue: { data in
            print(data)
        }
        
        
        // 데이터 외부 제공
        subject.send("A")
        subject.send("B")
        subject.send("C")
        subject.send("D")
        
        // 데이터 받음 종료
        subject.send(completion: .finished)
    }
    
    func testExample8() throws {
        let currentStatus = CurrentValueSubject<Bool, Error>(true)
        
        currentStatus.sink { completion in
            switch completion {
            case .finished:
                print("데이터 받음(발행) 종료")
                
            case .failure:
                print("Error 발생")
            }
        } receiveValue: { data in
            print(data)
        }
        
        print("초깃값 ", currentStatus.value)
        currentStatus.send(false)
        print("변경후 ", currentStatus.value)
        currentStatus.value = true
    }
    
    /*
     Cancellable: 데이터 발행 중 cancel() 메서드가 호출되었을 때 모든 파이프라인이 종료
     - 사용자가 데이터 로컬을 기다리던 도중 뒤로 간다거나 취소를 누르는 경우처럼 스트림을 중단 해야할 때 사용
     */
    func testExample9() throws {
        let exSubject = PassthroughSubject<String, Never>()
        
        let cancelable = exSubject
            .sink { data in
                print("data \(data)")
            }
        
        exSubject.send("A")
        exSubject.send("B")
        cancelable.cancel()
        exSubject.send("C")
    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
