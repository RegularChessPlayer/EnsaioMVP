//
//  UserPresenter.swift
//  EnsaioLogin
//
//  Created by Tecnologia on 18/06/2018.
//  Copyright © 2018 Tecnologia. All rights reserved.
//

import Foundation
import UIKit

struct UserViewData{
    let login: String
    let password: String
}

protocol UserView {
    func startLoading()
    func finishingLoading()
    func setUser(user: UserViewData)
    func showAlert(message: String)
    func segueListMovie()
    func signUp()
}

class UserPresenter {
    
    private var userView: UserView?

    func attachView(view:UserView){
        userView = view
    }
    
    func detachView() {
        userView = nil
    }
    
    func setLastLogin(){
        self.userView?.setUser(user: UserViewData(login: "thiago.engh@gmail.com", password: "")) //NSUserDefaults
    }
    
    func loginAction(userName: String, passWord: String){
        self.userView?.startLoading()
        UserRepository.getUser(userName: userName, password: passWord) { (status, message) in
            self.userView?.finishingLoading()
            if(status){
                self.userView?.segueListMovie()
            }else{
                self.userView?.showAlert(message: message!)
            }
        }
    }
    
}
