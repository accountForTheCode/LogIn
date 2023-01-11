//
//  Login.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 08.01.2023.
//

struct Login {
    let phoneNumber: String
    let password: String
}

extension Login {
    static var correctPassword = Login(phoneNumber: "+79381440303", password: "1")
}
