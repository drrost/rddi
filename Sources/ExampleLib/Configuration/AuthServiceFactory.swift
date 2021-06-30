//
//  AuthServiceFactory.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

class AuthServiceFactory: IDependencyFactory {

    // MARK: - Properties

    let daoUserFactory: DaoUserFactory

    init(_ daoUserFactory: DaoUserFactory) {
        self.daoUserFactory = daoUserFactory
    }

    var isSingleton: Bool = false

    func getDependency() throws -> IDependency {
        let daoUser = try daoUserFactory.getDependency() as! IDaoUser
        return AuthServiceImpl(daoUser)
    }
}
