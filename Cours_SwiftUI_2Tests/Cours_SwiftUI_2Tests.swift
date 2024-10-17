//
//  Cours_SwiftUI_2Tests.swift
//  Cours_SwiftUI_2Tests
//
//  Created by Héloïse Le Lez on 16/10/2024.
//

import XCTest
@testable import Cours_SwiftUI_2


final class Cours_SwiftUI_2Tests: XCTestCase {
    let viewModel = MainViewModel()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    //Given When Then
//    func testGiven_WhenAdditionTwoNumbersThenGettingSumOfThem(){
//        let a = 2
//        let b = 3
//        let awaitedResult = 5
//        var answer = 0
//        XCTAssertTrue(awaitedResult != answer)
//        
//        answer = viewModel.addition(a: a, b: b)
//        
//        XCTAssertTrue(awaitedResult == answer)
//    }
    
    func testGivenIsValidTrueWhenLoginFalseThenIsValidFalse(){
        viewModel.isValid = true
        let loginTest = "Ririri"
        let passwordTest = "12345"
        let awaitedResult = false
    
        XCTAssertTrue(viewModel.isValid != awaitedResult)
        viewModel.checkConnection(login: loginTest, password: passwordTest)
        
        XCTAssertTrue(awaitedResult == viewModel.isValid)
    }
    
    func testGivenIsValidTrueWhenPasswordFalseThenIsValidFalse(){
        viewModel.isValid = true
        let loginTest = "Riri"
        let passwordTest = "1234545"
        let awaitedResult = false
    
        XCTAssertTrue(viewModel.isValid != awaitedResult)
        viewModel.checkConnection(login: loginTest, password: passwordTest)
        
        XCTAssertTrue(awaitedResult == viewModel.isValid)
    }
    
    func testGivenIsValidFalseWhenPasswordFalseThenIsValidTrue(){
        viewModel.isValid = false
        let loginTest = "Riri"
        let passwordTest = "1234"
        let awaitedResult = true
    
        XCTAssertTrue(viewModel.isValid != awaitedResult)
        viewModel.checkConnection(login: loginTest, password: passwordTest)
        
        XCTAssertTrue(awaitedResult == viewModel.isValid)
    }
}
