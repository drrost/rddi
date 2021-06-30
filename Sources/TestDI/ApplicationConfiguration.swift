//
//  ApplicationConfiguration.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import ApplicationContext

class ApplicationConfiguration: IApplicationConfiguration {

    // MARK: - Properties

    private var dependencies: [String: IDependency] = [:]

    // MARK: - Init

    public init() {
        let daoUser = DaoUserImpl()
        dependencies["IDaoUser"] = daoUser
        dependencies["IAuthService"] = AuthServiceImpl(daoUser)
    }

    public func getDependency(_ name: String) -> IDependency {
        dependencies[name]!
    }
}
