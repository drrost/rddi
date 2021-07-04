//
//  ApplicationConfiguration.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import RDError

public class DIError: RDError {}

public protocol IDependency {
    var name: String { get }
}

public protocol IDependencyFactory {

    var isSingleton: Bool { get }

    func getDependency() throws -> IDependency
}

public extension IDependencyFactory {

    var isSingleton: Bool { false }
}

public protocol IApplicationConfiguration {

    var factories: [String: IDependencyFactory] { get }

    func getDependency(_ name: String) throws -> IDependency

    func add(_ name: String, _ dependency: IDependencyFactory)
}

public extension IApplicationConfiguration {

    func getDependency(_ name: String) throws -> IDependency {
        
        if let factory = factories[name] {
            return try factory.getDependency()
        } else {
            throw DIError("Can't find a factory for name: \(name)")
        }
    }
}
