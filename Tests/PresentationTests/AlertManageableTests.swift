import XCTest
import SwiftUI
@testable import Presentation

final class AlertManageableTests: XCTestCase {
    private var presenter: MockAlertManager!

    override func setUp() {
        super.setUp()
        presenter = .init()
    }

    override class func tearDown() {
//        presenter = nil
        super.tearDown()
    }

    func testPresentAlert() {
        let alert = Alert(
            title: Text("Title"),
            message: Text("Message"),
            dismissButton: .default(Text("OK"))
        )

        presenter.showAlert(alert)
        XCTAssertNotNil(presenter.alert)
        XCTAssertTrue(presenter.isAlertPresented.wrappedValue)
    }

    func testDismissAlert() {
        let alert = Alert(
            title: Text("Title"),
            message: Text("Message"),
            dismissButton: .default(Text("OK"))
        )

        presenter.showAlert(alert)
        presenter.dismissAlert()
        XCTAssertNil(presenter.alert)
        XCTAssertFalse(presenter.isAlertPresented.wrappedValue)
    }
}

fileprivate class MockAlertManager: AlertManageable {
    @Published var alert: Alert?
}
