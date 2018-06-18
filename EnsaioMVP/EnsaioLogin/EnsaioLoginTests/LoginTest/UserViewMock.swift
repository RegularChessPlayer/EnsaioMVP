//
//  UserViewMock.swift
//  EnsaioLoginTests
//
//  Created by Tecnologia on 18/06/2018.
//  Copyright © 2018 Tecnologia. All rights reserved.
//

import Foundation
@testable import EnsaioLogin

class UserViewMock: NSObject, UserView {
    
    var isLoadingCalled = false
    var isFinishingLoadingCalled = false
    var setUserIsCalled = false
    var isShowAlertCalled = false
    var isSegueListMovieCalled = false
    var isSignUpCalled = false
    
    func startLoading() {
        isLoadingCalled = true
    }
    
    func finishingLoading() {
        isFinishingLoadingCalled = true
    }
    
    func setUser(user: UserViewData) {
        setUserIsCalled = true
    }
    
    func showAlert(message: String) {
        isShowAlertCalled = true
    }
    
    func segueListMovie() {
        isShowAlertCalled = true
    }
    
    func signUp() {
        isSignUpCalled = true
    }
    
    
}
