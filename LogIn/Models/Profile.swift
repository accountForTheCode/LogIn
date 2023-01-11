//
//  Profile.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 09.01.2023.""
//

struct Profile {
    var login: Login?
    var phoneNumber: String { login?.phoneNumber ?? "" }
    var password: String { login?.password ?? ""}
    var name: String = ""
    var surname: String = ""
    var about: String = ""
    
}
