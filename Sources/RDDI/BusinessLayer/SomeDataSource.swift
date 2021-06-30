//
//  File.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import ApplicationContext

class SomeDataSource {

    // MARK: - Dependencies

    private let authService = DI("IAuthService") as! IAuthService

    // MARK: - Properties

    private let login: String
    private let password: String

    // MARK: - Init

    init(_ login: String, _ password: String) {
        self.login = login
        self.password = password
    }

    func getAllTasks() -> [String] {

        guard authService.validate(login, password) else {
            return []
        }

        return ["Task 1", "Task 2", "Task 3"]
    }
}
