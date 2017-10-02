/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import XCTest

class HomePageUITest: BaseTestCase {

    override func setUp() {
        super.setUp()
        dismissFirstRunUI()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testSetInternalURLAsHomepage() {
        let app = XCUIApplication()

        loadWebPage("http://en.m.wikipedia.org/wiki/Main_Page")
        app.buttons["Reader View"].tap()
//        app.buttons["Menu"].tap()
        let tablocationviewPageoptionsbuttonButton = app/*@START_MENU_TOKEN@*/.buttons["TabLocationView.pageOptionsButton"]/*[[".buttons[\"Page Options Menu\"]",".buttons[\"TabLocationView.pageOptionsButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        tablocationviewPageoptionsbuttonButton.tap()
        app.cells["Set as Homepage"].tap()
        app.buttons["Set Homepage"].tap()

        XCTAssertTrue(app.alerts.count == 0)
    }
}
