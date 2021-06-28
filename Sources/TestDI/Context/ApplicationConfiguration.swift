//
//  ApplicationConfiguration.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation

public class ApplicationConfiguration {

    // MARK: - Properties

    private var dependencies: [String: Any] = [:]

    // MARK: - Init

    public init() {
        dependencies["IAuthService"] = AuthServiceImpl()
    }

    public func getDependency(_ name: String) -> Any {
        dependencies[name]!
    }
}
