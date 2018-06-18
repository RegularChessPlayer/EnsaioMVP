//
//  UserService.swift
//  EnsaioLogin
//
//  Created by Tecnologia on 18/06/2018.
//  Copyright © 2018 Tecnologia. All rights reserved.
//

import Foundation

class UserRepository {
    
    class func getUser(userName: String, password: String, callBack: (_ status: Bool, _ message: String?) -> Void){
        userName == ("thiago.engh@gmail.com") &&
            password == "123456" ? callBack(true, nil) : callBack(false,  "Erro ao autenticar. Tente mais tarde!")
    }
    
}
