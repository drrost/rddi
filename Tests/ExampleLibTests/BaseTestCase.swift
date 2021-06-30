//
//  BaseTestCase.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import XCTest
import RDDI

@testable import ExampleLib

class BaseTestCase: XCTestCase {

    // MARK: - Variables

    var context: ApplicationContext!
    var configuration: ApplicationConfiguration!

    // MARK: - Tests routines

    override func setUp() {
        configuration = ApplicationConfiguration()
        ApplicationContext.initialize(configuration)
    }
}
