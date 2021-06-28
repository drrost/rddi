//
//  ApplicationContext.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation

public func DI(_ name: String) -> Any {
    ApplicationContext.shared.getDependency(name)
}

public class ApplicationContext {

    // MARK: - Singleton

    private static var instance: ApplicationContext!
    private init() {}
    public static var shared: ApplicationContext { instance }

    // MARK: - Properties

    private var configuration: ApplicationConfiguration!

    // MARK: - Init

    public static func initialize(_ configuration: ApplicationConfiguration) {

        guard instance == nil else { return }

        instance = ApplicationContext()
        instance.configuration = configuration
    }

    // MARK: - Public

    public func getDependency(_ name: String) -> Any {
        configuration.getDependency(name)
    }
}
