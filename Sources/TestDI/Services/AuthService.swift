//
//  AuthService.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation

public protocol IAuthService: IService {

    func validate(_ login: String, _ password: String) -> Bool
}

class AuthServiceImpl: IAuthService {

    var name: String { "IAuthService" }

    // MARK: - Properties

    let daoUser: IDaoUser

    init(_ daoUser: IDaoUser) {
        self.daoUser = daoUser
    }

    // MARK: -

    func validate(_ login: String, _ password: String) -> Bool {
        try! daoUser.allUsers().first {
            $0.login == login && $0.password == password
        } != nil
    }
}
