import SwiftUI

extension View {

    @ViewBuilder func iflet<Content: View, T>(_ conditional: Optional<T>, @ViewBuilder _ content:(Self, _ value: T) -> Content) -> some View {
        if let value = conditional {
            content(self, value)
        } else {
            self
        }
    }
}
