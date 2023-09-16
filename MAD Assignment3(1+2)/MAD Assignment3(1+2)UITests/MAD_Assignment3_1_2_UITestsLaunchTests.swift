//
//  MAD_Assignment3_1_2_UITestsLaunchTests.swift
//  MAD Assignment3(1+2)UITests
//
//  Created by ATLAS Checkout Laptop on 9/15/23.
//

import XCTest

final class MAD_Assignment3_1_2_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
