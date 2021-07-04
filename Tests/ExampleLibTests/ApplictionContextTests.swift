//
//  ApplictionContextTests.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import XCTest
import RDDI

@testable import ExampleLib

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
        let serviceAuth: IServiceAuth = DI("IServiceAuth")

        // Then
        XCTAssertNotNil(serviceAuth)
    }

    func testServiceAuthHasCorrectDao() {
        // Given
        let serviceAuth: ServiceAuthImpl = DI("IServiceAuth")

        // When

        // Then
        XCTAssertTrue(serviceAuth.daoUser is DaoUserImpl)
    }
}
