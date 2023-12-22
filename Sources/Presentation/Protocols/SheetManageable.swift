import SwiftUI

/// A type that can be used to manage a sheet view
public protocol SheetManageable: ObservableObject {
    associatedtype Destination: ViewDisplayable

    var sheet: Destination? { get set}

    func presentationSheet(_ destination: Destination)
    func dismissSheet()
}

extension SheetManageable {
    /// Presents a new sheet to view
    /// - Parameter destination: The view to be presented as a sheet
    public func presentationSheet(_ destination: Destination) {
        sheet = destination
    }
    
    /// Dismisses the currently presented sheet view
    public func dismissSheet() {
        sheet = nil
    }
}
