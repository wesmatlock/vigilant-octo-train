import SwiftUI

public protocol ToastManageable: ObservableObject {
    var toastConfig: ToastConfiguration? { get set }

    func showToast(
        on edge: VerticalEdge,
        _ toast: Toast,
        isAutoDismissed: Bool)

    func dismissToast()
}

extension ToastManageable {
    public func showToast(
        on edge: VerticalEdge = .top,
        _ toast: Toast,
        isAutoDismissed: Bool = true) {
            guard toastConfig == nil else { return }
            self.toastConfig = .init(edge: edge, toast: toast, isAutoDismissed: isAutoDismissed)
    }

    public func dismissToast() {
        self.toastConfig = nil
    }
}
