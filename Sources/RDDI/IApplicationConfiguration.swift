//
//  ApplicationConfiguration.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation

public protocol IDependency {
    var name: String { get }
}

public protocol IApplicationConfiguration {

    func getDependency(_ name: String) -> IDependency
}
