import XCTest
import SwiftUI
@testable import Presentation

final class ToastManageableTests: XCTestCase {
    private var presenter: MockToastManager!

    override func setUp() {
        super.setUp()
        presenter = .init()
    }

    func testPresentToast() {
        let toast = Toast.info(message: "Message")
        presenter.showToast(toast)
        XCTAssertNotNil(presenter.toastConfig)
    }

    func testDissmissToast() {
        let toast = Toast.error(message: "message")
        presenter.showToast(toast)
        presenter.dismissToast()
        XCTAssertNil(presenter.toastConfig)
    }

}

fileprivate class MockToastManager: ToastManageable {
    @Published var toastConfig: ToastConfiguration?
}
