//
//  ServiceAuth.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import RDDI

public protocol IServiceAuth: IService {

    func validate(_ login: String, _ password: String) -> Bool
}

class ServiceAuthImpl: IServiceAuth {

    var name: String { "IServiceAuth" }

    // MARK: - Properties

    let daoUser: IDaoUser = DI("IDaoUser")

    // MARK: -

    func validate(_ login: String, _ password: String) -> Bool {
        try! daoUser.allUsers().first {
            $0.login == login && $0.password == password
        } != nil
    }
}
