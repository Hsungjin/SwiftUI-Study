//
//  TCA_tutorialTests.swift
//  TCA_tutorialTests
//
//  Created by 황성진 on 1/12/24.
//
import ComposableArchitecture
import XCTest

@MainActor
final class TCA_tutorialTests: XCTestCase {
    
    func testCounter() async {
        let store = TestStore(initialState: CounterFeature.State()) {
            CounterFeature()
        }
        
        await store.send(.incrementButtonTapped) {
          $0.count = 1
        }
        await store.send(.decrementButtonTapped) {
          $0.count = 0
        }
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {

    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
