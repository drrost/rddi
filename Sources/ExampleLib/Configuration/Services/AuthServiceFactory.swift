//
//  AuthServiceFactory.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

class AuthServiceFactory: IDependencyFactory {

    var isSingleton: Bool = false

    func getDependency() throws -> IDependency {
        AuthServiceImpl()
    }
}
