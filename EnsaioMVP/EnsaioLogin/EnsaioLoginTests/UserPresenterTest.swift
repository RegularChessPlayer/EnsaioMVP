//
//  UserPresenter.swift
//  EnsaioLoginTests
//
//  Created by Tecnologia on 18/06/2018.
//  Copyright © 2018 Tecnologia. All rights reserved.
//

import XCTest
@testable import EnsaioLogin

class UserPresenterTest: XCTestCase {
    
    let userViewMock: UserViewMock = UserViewMock()
    
    override func setUp() {
        super.setUp()
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let userPresenterUnderTest = UserPresenter()
        userPresenterUnderTest.attachView(view: userViewMock)
        let expectation = self.expectation(description: "loginSucess")
        UserRepository.getUser(userName: "thiago@", password: <#T##String#>, callBack: <#T##(Bool, String?) -> Void#>)
        
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssert(userViewMock.isSegueListMovieCalled)
        
    }
    
    func testPull() {
        print("Teste 2")
    }
  
    
}
