//
//  AuthService.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import RDDI

public protocol IAuthService: IService {

    func validate(_ login: String, _ password: String) -> Bool
}

class AuthServiceImpl: IAuthService {

    var name: String { "IAuthService" }

    // MARK: - Properties

    let daoUser = DI("IDaoUser") as! IDaoUser

    // MARK: -

    func validate(_ login: String, _ password: String) -> Bool {
        try! daoUser.allUsers().first {
            $0.login == login && $0.password == password
        } != nil
    }
}
