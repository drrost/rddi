//
//  ApplicationContext.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import RDError

public func DI<T>(_ name: String, _ configurationName: String) -> T {
    try! ApplicationContext.shared.getDependency(name, configurationName) as! T
}

public class ApplicationContext {

    // MARK: - Singleton

    private static var instance: ApplicationContext!
    private init() {}
    public static var shared: ApplicationContext { instance }

    // MARK: - Properties

    private var configurations: [IApplicationConfiguration] = []

    // MARK: - Init

    public static func initialize(_ configuration: IApplicationConfiguration) {

        guard instance == nil else { return }

        instance = ApplicationContext()
        instance.configurations.append(configuration)
    }

    // MARK: - Public

    public func getDependency(
        _ dependencyName: String,
        _ configurationName: String) throws -> IDependency {

        let configuration = configurations.first { $0.name == configurationName }
        if configuration == nil {
            throw RDError("Can't find configuration named: \"\(configurationName)\"")
        }

        return try configuration!.getDependency(dependencyName)
    }

    public func add(
        _ dependencyName: String,
        _ dependencyFactory: IDependencyFactory,
        _ configurationName: String = "default") {

        var configuration = configurations.first { $0.name == configurationName }
        if configuration == nil {
            configuration = ApplicationConfiguration(configurationName)
            configurations.append(configuration!)
        }

        configuration?.add(dependencyName, dependencyFactory)
    }
}
