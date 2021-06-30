//
//  UserDao.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation

public class User {

    let firstName: String
    let lastName: String
    let login: String
    let password: String

    public init(_ firstName: String,
         _ lastName: String,
         _ login: String,
         _ password: String) {

        self.firstName = firstName
        self.lastName = lastName
        self.login = login
        self.password = password
    }
}

public protocol IDaoUser: IDao {

    func allUsers() throws -> [User]
}

class DaoUserImpl: IDaoUser {

    var name: String { "IDaoUser" }

    let users: [User] = [
        User("Correct", "User", "correct_user", "correct_password")
    ]

    public func allUsers() throws -> [User] {
        users
    }
}
