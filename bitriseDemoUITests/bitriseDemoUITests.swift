//
//  bitriseDemoUITests.swift
//  bitriseDemoUITests
//
//  Created by Mehmet KILINÇKAYA on 27.08.2022.
//

import XCTest

class bitriseDemoUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        
        app = XCUIApplication()
        app.launch()
    }
    
    func testLoginFieldsEmpty() throws {
        let loginButton = app.buttons["Login"]
        let emptyMailLabel = app.staticTexts["Empty mail address"]
        let emptyPasswordLabel = app.staticTexts["Empty password"]
        let canLoginText = app.staticTexts["You can login"]
        
        loginButton.tap()
        XCTAssertTrue(emptyMailLabel.exists)
        XCTAssertFalse(!emptyMailLabel.exists)
        
        let emailText = app.textFields.element(matching: .textField, identifier: "emailText")
        let passwordText = app.textFields.element(matching: .textField, identifier: "passwordText")
        
        emailText.tap()
        emailText.typeText("asd@asd.com")
        loginButton.tap()
        XCTAssertTrue(emptyPasswordLabel.exists)
        XCTAssertFalse(!emptyPasswordLabel.exists)
        
        passwordText.tap()
        passwordText.typeText("123456")
        loginButton.tap()
        XCTAssertTrue(canLoginText.exists)
        XCTAssertFalse(!canLoginText.exists)
    }
}
