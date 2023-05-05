//
//  UITestingDemoUITests.swift
//  UITestingDemoUITests
//
//  Created by Talor Levy on 5/5/23.
//

import XCTest

final class UITestingDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }


    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

        let title = app.staticTexts["Log In"]
        XCTAssertTrue(title.exists, "Title does not exist")
        
        let usernameField = app.textFields["Username"]
        XCTAssertTrue(usernameField.exists, "Username field does not exist")
        
        usernameField.tap()
        usernameField.typeText("bob")
        
        let passwordField = app.textFields["Password"]
        XCTAssertTrue(passwordField.exists, "Password field does not exist")
        
        passwordField.tap()
        passwordField.typeText("123")
        
        let button = app.buttons["Continue"]
        XCTAssertTrue(button.exists, "Continue button does not exist")
        
        button.tap()
        
        let label = app.staticTexts["Welcome, Bob"]
        XCTAssertTrue(label.exists, "Label does not exist")
    }
}
