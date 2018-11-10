//
//  mashup_gstTests.swift
//  mashup_gstTests
//
//  Created by 김현태 on 10/11/2018.
//  Copyright © 2018 onemoon. All rights reserved.
//

import XCTest

@testable import mashup_gst

// tdd 기반으로 만들거나 새로운 스펙을 만들거나 변경이 되는데 , 기존로직을 헤치고 싶지 않을 때
class mashup_gstTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testTwiceValue(){
        let testClass = TestEx()

        let inputValue = 10
        let result = testClass.twiceValue(inputValue)
        
        // 보통 네트워크 타임을 테스팅할때 expectation 을 사용한다.
//        let exp = expectation(description: "비동기 처리")
//
//        URLSession.shared.dataTask(with: URL(string: "http://www.naver.com")!) { _,_,_ in
//            XCTAssertEqual(20, result)
//            exp.fulfill()
//        }.resume()
//
//        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertEqual(20, result)
        
        
        
    }


}
