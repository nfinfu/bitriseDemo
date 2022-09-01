//
//  bitriseDemoTests.swift
//  bitriseDemoTests
//
//  Created by Mehmet KILINÇKAYA on 31.08.2022.
//

import XCTest
@testable import bitriseDemo

class bitriseDemoTests: XCTestCase {
    
    var sut: ViewController!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    
}
