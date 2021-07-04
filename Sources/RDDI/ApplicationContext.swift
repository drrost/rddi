//
//  ApplicationContext.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation

public func DI<T>(_ name: String) -> T {
    try! ApplicationContext.shared.getDependency(name) as! T
}

public class ApplicationContext {

    // MARK: - Singleton

    private static var instance: ApplicationContext!
    private init() {}
    public static var shared: ApplicationContext { instance }

    // MARK: - Properties

    private var configuration: IApplicationConfiguration!

    // MARK: - Init

    public static func initialize(_ configuration: IApplicationConfiguration) {

        guard instance == nil else { return }

        instance = ApplicationContext()
        instance.configuration = configuration
    }

    // MARK: - Public

    public func getDependency(_ name: String) throws -> IDependency {
        try configuration.getDependency(name)
    }
}
