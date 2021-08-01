//
//  TwoConfigurationTests.swift
//
//
//  Created by Rostyslav Druzhchenko on 01.08.2021.
//

import XCTest

@testable import RDDI

class TwoConfigurationTests: BaseTestCase {

    // MARK: - Init tests

    func testCreation() {
        // Given
        ApplicationContext.shared.add("AString", StringFactory(), "custom")

        // When
        let string: String = DI("AString", "custom")

        // Then
        XCTAssertEqual("A constant string", string)
    }
}

func DI<T>(_ name: String) -> T {
    try! ApplicationContext.shared.getDependency(name, "default") as! T
}

class StringFactory: IDependencyFactory {

    func getDependency() throws -> IDependency {
        "A constant string"
    }
}

extension String: IDependency {

    public var name: String { "String" }
}
