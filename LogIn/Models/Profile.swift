//
//  Profile.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 09.01.2023.
//

struct Profile {
    var profile: Login
    var phoneNumber: String { profile.phoneNumber }
    var password: String { profile.password }
    var name: String
    var surname: String
    var about: String
    
}
