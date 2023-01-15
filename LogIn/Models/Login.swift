//
//  Login.swift
//  LogIn
//
//  Created by Dmitriy Mukhin on 08.01.2023.
//

struct Login {
    var phoneNumber: String?
    var password: String?
}

extension Login {
    static var correctPassword = Login(phoneNumber: "+79381440303", password: "1")
}

//Сравнение классов друг с другом
extension Login: Equatable {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.phoneNumber == rhs.phoneNumber && lhs.password == rhs.password
    }
}
