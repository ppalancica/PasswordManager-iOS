//
//  AuthenticationModel.swift
//  PasswordManager-iOS
//
//  Created by Pavel Palancica on 1/16/22.
//

import Foundation

struct AuthenticationModel {
    private var username: String
    private var email: String
    private var password: String
}

extension AuthenticationModel {
    init(username: String) {
        self.init(username: username, email: "", password: "")
    }
    
    mutating func updateWith(email: String) {
        self.email = email
    }
    
    mutating func updateWith(password: String) {
        self.password = password
    }
}
