//
//  BaseTestCase.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import XCTest
import ApplicationContext

@testable import RDDI

class BaseTestCase: XCTestCase {

    // MARK: - Variables

    var context: ApplicationContext!
    var configuration: ApplicationConfiguration!

    // MARK: - Tests routines

    override func setUp() {
        configuration = ApplicationConfiguration()
        ApplicationContext.initialize(configuration)
    }

    // MARK: - Init tests

    func testCreation() {
        // Given
        // When
        // Then
    }

}

