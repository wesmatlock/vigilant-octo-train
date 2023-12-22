import SwiftUI

public protocol AlertManageable: ObservableObject {
    var alert: Alert? { get set }
    var isAlertPresented: Binding<Bool> { get set }

    func showAlert(_ alert: Alert)
    func dismissAlert()
}

extension AlertManageable {

    public var isAlertPresented: Binding<Bool> {
        get {
            return Binding<Bool>(
                get: { self.alert != nil },
                set: { newValue in
                    if !newValue {
                        self.alert = nil
                    }
                }
            )
        }
        
        set {
            if !newValue.wrappedValue {
                self.alert = nil
            }
        }
    }

    public func showAlert(_ alert: Alert) {
        self.alert = alert
    }

    public func dismissAlert() {
        self.alert = nil
    }
}
