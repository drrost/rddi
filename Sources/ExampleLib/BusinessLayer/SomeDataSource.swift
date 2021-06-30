//
//  File.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import RDDI

class SomeDataSource {

    // MARK: - Dependencies

    private let ServiceAuth = DI("IServiceAuth") as! IServiceAuth

    // MARK: - Properties

    private let login: String
    private let password: String

    // MARK: - Init

    init(_ login: String, _ password: String) {
        self.login = login
        self.password = password
    }

    func getAllTasks() -> [String] {

        guard ServiceAuth.validate(login, password) else {
            return []
        }

        return ["Task 1", "Task 2", "Task 3"]
    }
}
