//
//  ApplictionContextTests.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import XCTest
import ApplicationContext

@testable import TestDI

class ApplictionContextTests: XCTestCase {

    // MARK: - Variables

    var sut: ApplicationContext!
    var configuration: ApplicationConfiguration!

    // MARK: - Tests routines

    override func setUp() {
        configuration = ApplicationConfiguration()
        ApplicationContext.initialize(configuration)
        sut = ApplicationContext.shared
    }

    // MARK: - Init tests

    func testCreation() {
        // Given
        configuration = ApplicationConfiguration()
        ApplicationContext.initialize(configuration)
        let instance_0 = ApplicationContext.shared

        configuration = ApplicationConfiguration()
        ApplicationContext.initialize(configuration)
        let instance_1 = ApplicationContext.shared

        // When
        // Then
        XCTAssertTrue(instance_0 === instance_1)
    }

    func testDiString() {
        // Given
        // When
        let authService = DI("IAuthService")

        // Then
        XCTAssertTrue(authService is IAuthService)
    }

    func testAuthServiceHasCorrectDao() {
        // Given
        let authService = DI("IAuthService") as! AuthServiceImpl

        // When

        // Then
        XCTAssertTrue(authService.daoUser is DaoUserImpl)
    }
}
