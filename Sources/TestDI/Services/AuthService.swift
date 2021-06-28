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

    // MARK: - Properties

    let daoUser: IDaoUser

    init(_ daoUser: IDaoUser) {
        self.daoUser = daoUser
    }

    // MARK: -

    func validate(_ login: String, _ password: String) -> Bool {
        true
    }
}
