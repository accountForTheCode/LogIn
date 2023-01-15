//
//  Profile.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 09.01.2023.""
//

struct Profile {
    
    let login: Login
    var phoneNumber: String { login.phoneNumber ?? "" }
    var password: String { login.password ?? ""}
    var name: String
    var surname: String
    var about: String
    
    init(login: Login, name: String = "", surname: String = "", about: String = "") {
        self.login = login
        self.name = name
        self.surname = surname
        self.about = about
    }
    
}
