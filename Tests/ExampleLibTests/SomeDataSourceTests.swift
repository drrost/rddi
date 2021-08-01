//
//  SomeDataSourceTests.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import XCTest

@testable import RDDI

class SomeDataSourceTests: BaseTestCase {

    // MARK: - Variables

    var sut: SomeDataSource!

    // MARK: - Tests routines

    override func setUp() {
        super.setUp()
        sut = SomeDataSource("", "")
    }

    // MARK: - Init tests

    func testGetTasksWithCorrectCredentials() {
        // Given
        sut = SomeDataSource("correct_user", "correct_password")

        // When
        let tasks = sut.getAllTasks()

        // Then
        XCTAssertEqual(3, tasks.count)
    }

    func testGetTasksWithWrongUser() {
        // Given
        sut = SomeDataSource("wrong_user", "correct_password")

        // When
        let tasks = sut.getAllTasks()

        // Then
        XCTAssertEqual(0, tasks.count)
    }

    func testGetTasksWithWrongPassword() {
        // Given
        sut = SomeDataSource("correct_user", "wrong_password")

        // When
        let tasks = sut.getAllTasks()

        // Then
        XCTAssertEqual(0, tasks.count)
    }
}
