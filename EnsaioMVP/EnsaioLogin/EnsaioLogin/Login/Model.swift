//
//  Model.swift
//  EnsaioLogin
//
//  Created by Tecnologia on 18/06/2018.
//  Copyright © 2018 Tecnologia. All rights reserved.
//

struct User: Equatable {
    let userName: String
    let password: String
    let uuid: Int
    
    static func == (usr1: User, usr2: User) -> Bool{
        return (usr1.userName == usr2.userName) && (usr1.password == usr2.password)
    }
}

struct Movie {
    let name: String
    let poster_url: String
    let rating: Int
}
