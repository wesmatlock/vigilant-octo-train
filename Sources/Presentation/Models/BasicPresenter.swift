import SwiftUI

public typealias BasicPresentable = AlertManageable & ToastManageable

public final class BasicPresenter: BasicPresentable {
    @Published public var alert: Alert?
    @Published public var toastConfig: ToastConfiguration?
}
