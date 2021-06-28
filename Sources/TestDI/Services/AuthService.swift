//
//  AuthService.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation

public protocol IAuthService {

    func validate(_ login: String, _ password: String) -> Bool
}

class AuthServiceImpl: IAuthService {

    func validate(_ login: String, _ password: String) -> Bool {
        true
    }
}
